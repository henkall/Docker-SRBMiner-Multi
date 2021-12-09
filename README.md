# Docker-SRBMiner-Multi
Docker containing SRBMiner-Multi 0.8-5

I am not the developer of SRBMiner-Multi but are just using it in a docker

More documentation on SRBMiner-Multi: https://github.com/doktor83/SRBMiner-Multi

## Here is a example to get going with a server using compose. ##
~~~
---
version: '2'
services:
# -------------------------------------------------------------------
  srbminer:
    tty: true
    image: henkallsn/docker-srbminer-multi
    environment:
      ALGO: verushash
      POOL_ADDRESS: stratum+tcp://na.luckpool.net:3956
      WALLET_USER: RRmpZ1tajCXVG9999LWUD4CPVyZvjpe3iZ
      PASSWORD: x
      EXTRAS:
# -------------------------------------------------------------------
~~~

| ** Variable name ** | **Description** | **Value  example** |
|---|---|---|
| ALGO | Algo you want to use | verushash |
| POOL_ADDRESS | The address on the pool you want to mine on | stratum+tcp://na.luckpool.net:3956#xnsub |
| WALLET_USER | This is ussally used as a user field or a wallet address field | RRmpZ1tajCXVG9999LWUD4CPVyZvjpe3iZ |
| PASSWORD | This is the password field | x |
| EXTRAS |  This is a field use to extra parameters (experimental)  | - |
