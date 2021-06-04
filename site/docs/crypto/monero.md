# Monero (XMR)

## Comando para lanzar la minería

```bash
# Completo
sudo ./xmrig -o pool.supportxmr.com:443 -u 86NEXGLKf4Q9PQ9XYZskZyNMbZs1J3WrGPPA9zLerAXCQQJ9y1v6KJoTh1KxMKEpht5Gc4BKLN7Lg2xV83A2DPjuUhfXSos -k --tls -p microsrv -B

# Con un config.json
sudo ./xmrig -k --tls -B
```

## config.json

```bash
{
    "autosave": true,
    "cpu": true,
    "opencl": false,
    "cuda": false,
    "pools": [
        {
            "url": "pool.supportxmr.com:443",
            "user": "86NEXGLKf4Q9PQ9XYZskZyNMbZs1J3WrGPPA9zLerAXCQQJ9y1v6KJoTh1KxMKEpht5Gc4BKLN7Lg2xV83A2DPjuUhfXSos",
            "pass": "x",
            "keepalive": true,
            "tls": true
        }
    ]
}
```