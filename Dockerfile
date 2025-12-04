FROM node:14-alpine
# Installer git et python
RUN apk add --no-cache git python3 make g++
# Cloner le dépôt (remplace par l'URL de TON fork)
RUN git clone -q https://github.com/CrimsonAzul/todo-app
# Dossier courant
WORKDIR /todo-app
COPY . .
# Installer les dépendances
RUN yarn install --production
# Démarrer l'application
CMD ["node", "/src/index.js"]
