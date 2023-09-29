# Gunakan image Nginx sebagai base image
FROM nginx:latest

# Salin berkas-berkas situs web statis ke dalam direktori default Nginx
COPY .. /usr/share/nginx/html

# Port yang akan digunakan oleh Nginx
EXPOSE 80

# Perintah yang akan dijalankan ketika container berjalan
CMD ["nginx", "-g", "daemon off;"]
