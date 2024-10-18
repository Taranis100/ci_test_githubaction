# Scarica l'immagine di base
FROM node:16

# Imposta la cartella di lavoro di default
WORKDIR /usr/src/app

# Copia i file di configurazione
COPY package*.json ./

# Installa i pacchetti
RUN npm install

# Copia tutti i file dalla directory di lavoro
COPY . .

# Apri la porta 3000 per permettere la comunicazione
EXPOSE 3001
# Avvia i comandi
CMD ["node", "app.js"]