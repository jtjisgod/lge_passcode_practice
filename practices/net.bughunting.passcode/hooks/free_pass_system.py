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
    var EditText = Java.use("android.widget.EditText");

    MainActivity.AnonymousClass1.onClick.implementation = function(view) {

        this.correctPassword.value = "1337";
        send("correctPassword set 1337");

        var activity = this.getActivity();
        var editText = Java.cast(activity.findViewById(activity.getResources().getIdentifier("editTextNumberPassword", "id", activity.getPackageName())), EditText);
        var userInput = editText.getText().toString();

        send("User Input: " + userInput);

        return this.onClick(view);
    };
});
""")

script.on('message', on_message)
script.load()

device.resume(pid)
sys.stdin.read()
