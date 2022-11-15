FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN yarn install --production
COPY . .
EXPOSE 3000
USER node
CMD ["node", "src/index.js"]