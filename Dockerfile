FROM node:6

ENV APP_HOME=/home/app/projects/parse-console
WORKDIR $APP_HOME
ADD . $APP_HOME
RUN npm install \
 && npm run build \
 && npm cache clear \
 && rm -rf ~/.npm \
 && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["npm", "run", "dashboard"]
