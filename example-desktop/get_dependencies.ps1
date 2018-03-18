$currentDir = (Get-Item -Path ".\" -Verbose).FullName
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri https://github.com/tuarua/Swift-IOS-ANE/releases/download/2.3.0/CommonDependencies.ane?raw=true -OutFile "$currentDir\..\native_extension/ane/CommonDependencies.ane"
Invoke-WebRequest -Uri https://github.com/tuarua/Zip-ANE/releases/download/0.0.1/ZipANE.ane?raw=true -OutFile "$currentDir\..\native_extension\ane\ZipANE.ane"
