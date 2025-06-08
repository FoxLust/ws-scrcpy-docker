FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    ca-certificates \
    gnupg \
    build-essential \
    python3 \
    adb && \
    rm -rf /var/lib/apt/lists/*

RUN wget -qO- https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y --no-install-recommends nodejs

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run dist
RUN npm prune --omit=dev

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh


EXPOSE 8000
ENTRYPOINT ["entrypoint.sh"]
CMD ["npm", "start"]
