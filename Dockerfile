# Use the official Kong image
FROM kong:3.8

# Copy the declarative configuration into the container
COPY kong.yml /usr/local/kong/declarative/kong.yml

# Set environment variables for DB-less mode
ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/usr/local/kong/declarative/kong.yml

# Expose ports
EXPOSE 8000 8443 8001 8444

# Default command to run Kong in DB-less mode
CMD ["kong", "start"]
