#define AppName "Speckle"
#define AppVersion "0.5"
#define AppPublisher "Astralsphere Arts"
#define AppURL "https://astral.xahertz.com/Speckle"
#define AppPublisherURL "https://astral.xahertz.com"
#define AppExeName "Speckle.exe"
#define AppArchitecture "x64"

[Setup]
AppId={{9C9A1155-1FA2-4BDC-B73A-05A0F77D4383}
AppName={#AppName}
AppVersion={#AppVersion}
AppVerName={#AppName}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppPublisherURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
AppCopyright=Copyright (C) 2021 {#AppPublisher}
UninstallDisplayIcon={app}\{#AppExeName}
DefaultDirName={autopf}\{#AppName}
DisableProgramGroupPage=yes
DisableWelcomePage=no
OutputDir=release
SetupIconFile=resources\app.ico
LicenseFile=resources\License.txt
ArchitecturesAllowed={#AppArchitecture}
ArchitecturesInstallIn64BitMode={#AppArchitecture}
PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename={#AppName}-{#AppVersion}.alpha-win-{#AppArchitecture}-setup
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
WizardImageFile=resources\wizard-image.bmp
WizardSmallImageFile=resources\wizard-small-image.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "app\{#AppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "app\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "resources\License.txt"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\{#AppName}"; Filename: "{app}\{#AppExeName}"
Name: "{autodesktop}\{#AppName}"; Filename: "{app}\{#AppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#AppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(AppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
