# n8n with Zep v3 Community Nodes

Custom n8n Docker image with `n8n-nodes-zep-v3` pre-installed for Railway deployment.

## 🎯 Purpose

Replaces deprecated built-in Zep nodes with community-maintained Zep v3 nodes that work with Zep Cloud API.

## 🚀 Features

- **n8n latest** base image
- **Zep Memory (v3)** community node
- **Zep Vector Store (v3)** community node  
- **Railway optimized** deployment
- **Persistent installation** through rebuilds

## 📦 Includes

- `n8n-nodes-zep-v3@0.1.6` - Community replacement for deprecated Zep nodes
- Custom nodes installed in `/home/node/.n8n/custom`
- Proper file permissions and ownership
- Health check configuration

## 🔧 Railway Deployment

This repository is configured for Railway deployment:

1. **Connect to Railway** project
2. **Deploy from source** (not Docker image)
3. **Copy environment variables** from existing service
4. **Set custom domain** to `n8n.combinedmemory.com`

## ⚙️ Configuration

Set these environment variables in Railway:

```bash
N8N_HOST=n8n.combinedmemory.com
N8N_PROTOCOL=https
N8N_PORT=443
WEBHOOK_URL=https://n8n.combinedmemory.com
N8N_EDITOR_BASE_URL=https://n8n.combinedmemory.com
# ... plus all other existing n8n configuration
```

## 🧪 Testing

After deployment:
1. Go to https://n8n.combinedmemory.com
2. Search for "Zep Memory (v3)" in node palette
3. Search for "Zep Vector Store (v3)" in node palette
4. Set up Zep API (v3) credentials
5. Test basic memory workflow

## 🔗 Links

- **Package**: https://socket.dev/npm/package/n8n-nodes-zep-v3
- **Original Project**: n8n-beast-mode-v2 on Railway
- **Production**: https://n8n.combinedmemory.com