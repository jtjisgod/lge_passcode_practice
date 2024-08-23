import frida
import sys

def on_message(message, data):
    if message['type'] == 'send':
        print("[*] {0}".format(message['payload']))
    else:
        print(message)

package_name = "net.bughunting.passcode"

device = frida.get_usb_device()
pid = device.spawn([package_name])
session = device.attach(pid)

script = session.create_script("""
Java.perform(function () {
    var MainActivity = Java.use('net.bughunting.passcode.MainActivity');

    MainActivity.AnonymousClass1.onClick.implementation = function(view) {
        var context = this.getActivity().getApplicationContext();
        var Toast = Java.use("android.widget.Toast");
        Toast.makeText(context, "The button is touched.", Toast.LENGTH_LONG).show();
        this.onClick(view);
    };
});
""")

script.on('message', on_message)
script.load()

device.resume(pid)
sys.stdin.read()
