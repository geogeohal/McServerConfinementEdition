echo off

cd %p%

IF %ERRORLEVEL% NEQ 0 (

for /r C:\Users\Geoffroy\Desktop %%a in (*) do if "%%~nxa"=="start.bat" set p=%%~dpa
if defined p (
echo path :
echo %p%
) else (
echo File not found
)
cd %p%

java -jar .\fabric-server-launch.jar

)