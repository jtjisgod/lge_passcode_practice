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

# Frida script to hook the onClick method and log the Toast message
script = session.create_script("""
Java.perform(function () {
    var MainActivity = Java.use('net.bughunting.toastapp.MainActivity');
    var Log = Java.use('android.util.Log');

    // Hook the onClick method of the AnonymousClass1 (button click handler)
    MainActivity.AnonymousClass1.onClick.implementation = function(view) {
        // Log the message that would be shown in the Toast
        Log.e("Frida", "Toast Message: Hello, World!");

        // Call the original onClick method
        this.onClick(view);
    };
});
""")

# Set up message handling and load the script
script.on('message', on_message)
script.load()

# Resume the app's execution
device.resume(pid)
sys.stdin.read()
