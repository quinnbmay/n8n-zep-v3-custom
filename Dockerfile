# Custom n8n Image with Zep v3 Community Node
# Railway-optimized deployment with persistent community nodes

FROM n8nio/n8n:latest

# Switch to root user for package installation
USER root

# Create custom nodes directory and install Zep v3 package
RUN mkdir -p /home/node/.n8n/custom && \
    cd /home/node/.n8n/custom && \
    npm install n8n-nodes-zep-v3@0.1.6 && \
    chown -R node:node /home/node/.n8n && \
    echo "✅ Zep v3 community node installed successfully"

# Switch back to node user for security
USER node

# Set working directory  
WORKDIR /home/node

# Expose n8n port
EXPOSE 5678

# Health check to ensure n8n starts properly
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:5678/healthz || exit 1

# Start n8n
CMD ["n8n"]