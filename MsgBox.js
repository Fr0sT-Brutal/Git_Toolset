// Show message box
//   %1 = Main message text
//   %2 = [opt] File name to add to message

var msg = WScript.Arguments(0);
if (WScript.Arguments.Length > 1)
{
	var fso = WScript.CreateObject("Scripting.FileSystemObject");
	var str = fso.OpenTextFile(WScript.Arguments(1));
	msg = msg + "\n" + "=====================" + "\n" + str.ReadAll();
	str.Close();
}

var wsh = WScript.CreateObject("WScript.Shell");
wsh.Popup(msg, 0, "", 48);