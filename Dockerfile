FROM dart:stable AS build
WORKDIR /app

# Copy dependency definitions
COPY packages/backend/pubspec.* packages/backend/

# Get dependencies
WORKDIR /app/packages/backend
RUN dart pub get

# Copy source code
WORKDIR /app
COPY packages/backend packages/backend

# Build the server executable
WORKDIR /app/packages/backend
RUN dart compile exe bin/main.dart -o bin/server

# Final stage
FROM debian:bookworm-slim

# Environment variables
ENV runmode=production
ENV serverid=default
ENV logging=normal
ENV role=monolith

# Install necessary runtime dependencies
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*

# Copy runtime dependencies
# (Skipped /runtime/ copy as 'dart compile exe' produces self-contained binary)

# Set working directory for the runtime
WORKDIR /app

# Copy compiled server and resources
# We maintain the structure expected by the server relative to the working directory
COPY --from=build /app/packages/backend/bin/server server
COPY --from=build /app/packages/backend/config/ config/
COPY --from=build /app/packages/backend/web/ web/
COPY --from=build /app/packages/backend/migrations/ migrations/
COPY --from=build /app/packages/backend/deploy/docker-entrypoint.sh deploy/docker-entrypoint.sh

# Protocol definition
COPY --from=build /app/packages/backend/lib/src/generated/protocol.yaml lib/src/generated/protocol.yaml

# Expose ports
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082

# Make entrypoint executable
RUN chmod +x deploy/docker-entrypoint.sh

# Define command to run the script and then the server
CMD ["/bin/bash", "-c", "./deploy/docker-entrypoint.sh ./server --mode=production --server-id=default --logging=normal --role=monolith"]
