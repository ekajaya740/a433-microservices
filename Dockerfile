FROM node:14  
# ^ Mengambil menggunakan image node:14 (menjalankan docker pull node:14 jika image tidak ada di local)

WORKDIR /app 
# ^ Set working directory ke app, jadi nanti jika COPY maka akan tersalin ke folder /app

COPY . .
# ^ Copy semua file dari folder ini ke container (ke folder /app karena kita sudah menetapkan working directory)

ENV NODE_ENV=production DB_HOST=item-db
# ^ Set environment untuk NODE_ENV dan DB_HOST

RUN npm install --production --unsafe-perm && npm run build
# ^ Menjalankan npm install

EXPOSE 8080
# ^ Publish port 8080

CMD ["npm", "run", "start"]
# Menjalankan command untuk start aplikasi
