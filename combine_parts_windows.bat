@echo off
setlocal
cd /d "%~dp0"
echo Rebuilding TLR_CC_Packet_short.zip from split parts...
copy /b TLR_CC_part_00.bin+TLR_CC_part_01.bin+TLR_CC_part_02.bin+TLR_CC_part_03.bin TLR_CC_Packet_short.zip
if errorlevel 1 (
  echo FAILED to combine parts.
  pause
  exit /b 1
)
echo Done: TLR_CC_Packet_short.zip
pause
