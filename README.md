# Issue with NGINX/Passenger

The setting `passenger_env_var` is falsifying values on ARM (Macs).

## Reproduceable

System:

```
Darwin Kernel Version 21.4.0 arm64
nginx/1.21.6
Phusion Passenger(R) 6.0.13
```

Output:

```
ENVs and their values:

HTTP_SECURITY_AAAAA: public
HTTP_SECURITY_BBBBB: public
HTTP_SECURITY_LEVEL: publci
```

## Not Reproduceable

System:

```
Darwin Kernel Version 19.6.0 x86_64
nginx/1.21.6
Phusion Passenger(R) 6.0.13
```

Output:

```
ENVs and their values:

HTTP_SECURITY_AAAAA: public
HTTP_SECURITY_BBBBB: public
HTTP_SECURITY_LEVEL: public
```
