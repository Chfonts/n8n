FROM n8nio/n8n:latest

USER root

# Installer les dépendances nécessaires pour Chromium (utilisé par Puppeteer)
RUN apt-get update && \
    apt-get install -y wget gnupg ca-certificates fonts-liberation libxss1 libasound2 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdbus-1-3 libdrm2 libgbm1 libnspr4 libnss3 libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxtst6 \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Installer Puppeteer
RUN npm install puppeteer

USER node
