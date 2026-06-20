Tingle Layout Claude Code Packet - GitHub Upload Parts

Why this is split:
- GitHub browser upload has a per-file limit of 25 MiB.
- The full packet is about 73 MB, so upload these smaller part files instead.

Upload these files to your GitHub repo:
- README_GITHUB_UPLOAD.txt
- rebuild_packet_file_list.txt
- combine_parts_windows.bat
- combine_parts_powershell.ps1
- TLR_CC_part_00.bin
- TLR_CC_part_01.bin
- TLR_CC_part_02.bin
- TLR_CC_part_03.bin

After cloning/downloading the repo on your computer, rebuild the ZIP:

Option A - double-click:
  combine_parts_windows.bat

Option B - PowerShell:
  powershell -ExecutionPolicy Bypass -File combine_parts_powershell.ps1

This will recreate:
  TLR_CC_Packet_short.zip

Then extract it to:
  C:\TLR

Then start Claude Code inside:
  C:\TLR\TLR

Paste the contents of:
  PROMPT.txt

