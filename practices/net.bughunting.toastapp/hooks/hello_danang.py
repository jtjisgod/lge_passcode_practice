import frida
import sys

# Callback function to handle messages from the Frida script
def on_message(message, data):
    if message['type'] == 'send':
        print("[*] {0}".format(message['payload']))
    else:
        print(message)

# Replace with the target app's package name
package_name = "net.bughunting.toastapp"

# Connect to the device and spawn the target app
device = frida.get_usb_device()
pid = device.spawn([package_name])
session = device.attach(pid)

# Frida script to hook the onClick method and modify the Toast message
script = session.create_script("""
Java.perform(function () {
    var MainActivity = Java.use('net.bughunting.toastapp.MainActivity');

    // Hook the onClick method of the AnonymousClass1 (button click handler)
    MainActivity.AnonymousClass1.onClick.implementation = function(view) {
        // Show a modified Toast message
        var Toast = Java.use('android.widget.Toast');
        var context = this.getActivity().getApplicationContext();
        Toast.makeText(context, "Hello, Danang!", Toast.LENGTH_LONG).show();

        // Skip the original Toast message (or you can choose to show it too)
        // this.onClick(view);  // If you want to call the original method
    };
});
""")

# Set up message handling and load the script
script.on('message', on_message)
script.load()

# Resume the app's execution
device.resume(pid)
sys.stdin.read()
