# Gebruik de officiële Budibase server image
FROM budibase/budibase-server:latest

# Stel de werkdirectory in (optioneel)
WORKDIR /app

# Copy eventueel lokale bestanden als nodig
# COPY . .

# Environment variables (pas aan als je andere waarden wilt)
ENV PORT=8080
ENV DATABASE_URL=postgres://user:password@db:5432/budibase
ENV JWT_SECRET=mysecret

# Exposeer poort 8080 voor Clever Cloud
EXPOSE 8080

# Start Budibase server
CMD ["node", "server.js"]
