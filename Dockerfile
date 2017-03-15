FROM node:6
WORKDIR /home/app/projects/parse-console
ADD . .
RUN npm install \
 && npm run build \
 && npm cache clear \
 && rm -rf ~/.npm \
 && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["npm", "run", "dashboard"]
