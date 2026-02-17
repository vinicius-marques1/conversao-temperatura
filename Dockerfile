FROM node:18.16.0
WORKDIR /app
# In this case the Dockerfile is in the root of the project, so we need to copy the package.json files from the src folder.
COPY src/package*.json . 
RUN npm install
COPY src/. .
EXPOSE 8080
CMD ["node", "server.js"]