# powershell-base32
Use c# to encode and decode base 32 within powershell. 

Import the .cs file, set a string and use the code to convert. 
```
$text = "helloworld"
$encoding = [system.Text.Encoding]::UTF8
$byteString = $encoding.GetBytes($text)

Add-Type -TypeDefinition (Get-Content .\encoder.cs -Raw ).ToString()
[base32]::ToBase32String($byteString)

#or
#[base32]::FromBase32String($base32string)
```