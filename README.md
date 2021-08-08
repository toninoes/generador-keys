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
SHA256:GvfP7xCVzv8dAyqj2hN6oE/SRvvFuM2MzR0M77P1l/0 toni@tonipc
The key's randomart image is:
+---[RSA 4096]----+
|                 |
|               . |
|              o  |
|             +   |
|     .. S.  ..o  |
|    o..=o.+ .... |
|   ..=+..=.=.. o+|
|   .+.oo@ =+o...B|
|    .oo*.* +=oo.E|
+----[SHA256]-----+
######################################################################
```

## Ficheros generados
```console
toni@tonipc:~$ ll
total 60
...
...
-rw-r--r-- 1 toni toni    13 Aug  8 19:18 toninoes.passphrase.txt
-rw------- 1 toni toni  3326 Aug  8 19:18 toninoes.pem
-rw-r--r-- 1 toni toni   737 Aug  8 19:18 toninoes.pem.pub
-rw------- 1 toni toni  2681 Aug  8 19:18 toninoes.ppk
```
