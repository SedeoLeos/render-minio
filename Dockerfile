# Utilise l'image officielle de MinIO
FROM minio/minio:latest

# Définit les variables d'environnement pour l'accès et le secret
ENV MINIO_ROOT_PASSWORD=minioadmin
ENV MINIO_ROOT_USER=minioadmin

# Définit le point d'entrée pour exécuter MinIO en mode serveur
ENTRYPOINT ["minio"]

# Configure MinIO pour fonctionner en mode serveur, pointant vers /data
CMD ["server", "/data", "--console-address", ":9001"]
EXPOSE 9000