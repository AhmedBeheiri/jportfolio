# Build stage
FROM dart:3.3.0 AS build
WORKDIR /app
COPY . .

# Install dependencies and compile the server executable
RUN dart pub get
RUN dart compile exe bin/main.dart -o bin/server

# Final stage
# Using debian:bookworm-slim as it creates a smaller and more secure image than full debian,
# but avoids the glibc compatibility issues often found with Alpine for Dart binaries.
FROM debian:bookworm-slim

# Environment variables
ENV runmode=production
ENV serverid=default
ENV logging=normal
ENV role=monolith

# Install necessary runtime dependencies (if any)
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*

# Copy runtime dependencies
COPY --from=build /runtime/ /

# Copy compiled server executable
COPY --from=build /app/bin/server server

# Copy configuration files and resources
COPY --from=build /app/config/ config/
COPY --from=build /app/web/ web/
COPY --from=build /app/migrations/ migrations/

# Copy entrypoint script
COPY --from=build /app/deploy/docker-entrypoint.sh /app/deploy/docker-entrypoint.sh

# This file is required to enable the endpoint log filter in Insights.
COPY --from=build /app/lib/src/generated/protocol.yaml lib/src/generated/protocol.yaml

# Expose ports
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082

# Define the entrypoint command
ENTRYPOINT ["/app/deploy/docker-entrypoint.sh"]

# Arguments passed to the entrypoint
CMD ["./server", "--mode=production", "--server-id=default", "--logging=normal", "--role=monolith"]
