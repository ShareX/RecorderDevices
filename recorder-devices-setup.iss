#define MyAppName "Recorder Devices for ShareX"
#define MyAppVersion "0.12.10"

[Setup]
AppName={#MyAppName}
AppVerName={#MyAppName} {#MyAppVersion}
AppVersion={#MyAppVersion}
ArchitecturesAllowed=x64os arm64 x86
ArchitecturesInstallIn64BitMode=x64os
DefaultDirName={commonpf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=recorder-devices-{#MyAppVersion}-setup
SolidCompression=yes

[Files]
Source: "screen-capture-recorder.dll"; DestDir: {app}; Flags: regserver 32bit; Check: not IsWin64
Source: "screen-capture-recorder-x64.dll"; DestDir: {app}; Flags: regserver 64bit; Check: IsWin64
Source: "virtual-audio-capturer.dll"; DestDir: {app}; Flags: regserver 32bit; Check: not IsWin64
Source: "virtual-audio-capturer-x64.dll"; DestDir: {app}; Flags: regserver 64bit; Check: IsWin64