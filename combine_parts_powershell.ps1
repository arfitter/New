$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
$out = "TLR_CC_Packet_short.zip"
if (Test-Path $out) { Remove-Item $out -Force }
$parts = @("TLR_CC_part_00.bin", "TLR_CC_part_01.bin", "TLR_CC_part_02.bin", "TLR_CC_part_03.bin")
$stream = [System.IO.File]::OpenWrite((Join-Path $PWD $out))
try {
    foreach ($p in $parts) {
        Write-Host "Adding $p"
        $bytes = [System.IO.File]::ReadAllBytes((Join-Path $PWD $p))
        $stream.Write($bytes, 0, $bytes.Length)
    }
} finally {
    $stream.Close()
}
Write-Host "Done: $out"
