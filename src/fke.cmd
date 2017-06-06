@echo off


rem boostrap packages if not present

if NOT EXIST ..\packages\FAKE\tools\FAKE.exe (

    if NOT EXIST ..\.paket\paket.exe (
        ..\.paket\paket.bootstrapper.exe
    )
    if NOT EXIST ..\.paket\paket.exe (
        echo "Unable to install paket"
        exit 1
    )
    ..\.paket\paket.exe install
    
    if NOT EXIST ..\packages\FAKE\tools\FAKE.exe (
        echo "Unable to install packages"
        exit 1
    )
)

rem run FAKE

..\packages\FAKE\tools\FAKE.exe test.fsx



