[Setup]
AppName=CF4VN
AppVersion=2.1
DefaultDirName={commonpf}\CF4VN
DefaultGroupName=CF4VN
OutputDir=E:\Game Online\Full Version CF\output
OutputBaseFilename=CF4VNInstaller
Compression=lzma
SolidCompression=yes
DiskSpanning=yes
DiskSliceSize=1073741824
SetupIconFile=C:\Users\kutdi\Desktop\cf4vn.ico
DisableProgramGroupPage=yes
DisableDirPage=no
PrivilegesRequired=admin

[Files]
Source: "E:\Game Online\Full Version CF\CF4VN\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

[Icons]
Name: "{autoprograms}\CF4VN"; Filename: "{app}\CF4VN.exe"
Name: "{autodesktop}\CF4VN"; Filename: "{app}\CF4VN.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\patcher_cf4vn.exe"; Description: "{cm:LaunchProgram,CF4VN}"; Flags: nowait postinstall skipifsilent

[Tasks]
Name: desktopicon; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; Flags: checkablealone

[Code]
const
  MyAppName = 'CF4VN';
  DiscordLink = 'https://discord.gg/cf4vn';

procedure CurStepChanged(CurStep: TSetupStep);
var
  InstallDir: string;
begin
  if CurStep = ssDone then
  begin
    InstallDir := ExpandConstant('{app}');
    MsgBox('Cảm ơn bạn đã cài ' + MyAppName + '!!!' + #13#10 + 'Đường dẫn cài đặt: ' + InstallDir + #13#10 + 'Tham gia Discord: ' + DiscordLink, mbInformation, MB_OK);
  end;
end;
