# generador-keys
Script bash para generar par de claves ssh .pub .pem y .ppk

Paquetes necesarios:
- putty-tools
- pwgen

En caso de no estar instalados el script los instalará (Ubuntu)

## Uso
```console
toni@tonipc:~$ ./generate-keys.sh toninoes
######################################################################
COMPROBANDO QUE ESTEN INSTALADOS PUTTYGEN Y PWGEN
######################################################################
PASSPHRASE PARA toninoes.pem y toninoes.ppk
3Ry3s4VqFuzw
######################################################################
Generating public/private rsa key pair.
Your identification has been saved in toninoes.pem
Your public key has been saved in toninoes.pem.pub
The key fingerprint is:
SHA256:gGjFzRHxr3M8C2VWCKpr8Lu3yAH0F9ELA0CcNsd5VWU toni@tonipc
The key's randomart image is:
+---[RSA 2048]----+
| oo=o==*o...E    |
|  =o=.*+.. o     |
| .+o..+o... .    |
| o . . o.. .     |
|  o o . S =      |
|   + o   *       |
|    =   + +      |
|   o +.  + o     |
|    =o..  .      |
+----[SHA256]-----+
######################################################################
```

## Ficheros generados
```console
toni@tonipc:~$ ll
total 60
...
...
-rw-r--r-- 1 toni toni    13 Aug  8 14:46 toninoes.passphrase.txt
-rw------- 1 toni toni  1766 Aug  8 14:46 toninoes.pem
-rw-r--r-- 1 toni toni   393 Aug  8 14:46 toninoes.pem.pub
-rw------- 1 toni toni  1460 Aug  8 14:46 toninoes.ppk
```
