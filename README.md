# tor-client-minimal

Tor client (Socks proxy ) image - Tor client image qualified for Docker. This Docker image launch a Tor client with a Socks proxy on port 9050 (SocksPort 0.0.0.0:9050).

### Versions

OS : Alpine Linux Latest - [http://alpinelinux.org](http://alpinelinux.org) - Alpine Linux is a security-oriented, lightweight Linux distribution based on musl libc and busybox.

Tor

### Run on Linux

1. `git clone https://github.com/nsapa/tor-client-minimal`
2. `docker build -t tor-client .`
3. `docker run --rm -p 9050:9050 -p 9051:9051 tor-client`


