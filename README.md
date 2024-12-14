# Alpine-Config

Quick configuration for Alpine Linux. Setting up docker & community repository.

---

```bash
# Install Curl
doas apk update
doas apk add curl

# Download & Run Script
curl https://git.merlinslair.net/beech/Alpine-Config/raw/branch/main/setup.sh -o setup.sh
chmod +x setup.sh
sh setup.sh
```