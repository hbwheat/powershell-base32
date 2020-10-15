# powershell-base32
Use c# to encode and decode base 32 within powershell. 

Download the files or clone using git then open the directory.

```
git clone https://github.com/hbwheat/powershell-base32.git
cd .\powershell-base32

$text = "helloworld"
$encoding = [system.Text.Encoding]::UTF8
$byteString = $encoding.GetBytes($text)

Add-Type -TypeDefinition (Get-Content .\encoder.cs -Raw ).ToString()
[base32]::ToBase32String($byteString)

#or
#[base32]::FromBase32String($base32string)
```