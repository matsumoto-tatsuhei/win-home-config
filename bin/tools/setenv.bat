@if(0)==(0) echo off
cscript.exe //nologo //E:JScript "%~f0" %*
goto :EOF
@end

// ���C������
function main() {

  // �o���f�[�V����
  var args = WScript.Arguments;
  validate(args);

  // ���ϐ��ύX
  var shell = WScript.CreateObject("WScript.Shell");
  var env = shell.Environment("USER");
  env.Item(args(1)) = env.Item(args(1)) + ";" + args(2);
}

function validate(args) {
  if (args == null) {
    throw new Error(1, "args=null or undefined");
  }
  if (args.length !== 3) {
    throw new Error(2, "invalid parameter.");
  }
  switch (args(0)) {
    case "add":
    case "set":
      break;
    default:
      throw new Error(3, "invalid parameter.");
  }
}

// ���C�������Ăяo��
main();
