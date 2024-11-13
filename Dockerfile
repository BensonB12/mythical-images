# Use a minimal base image
FROM alpine:latest

# Create a directory in the container for seeded images
RUN mkdir -p /seededImages

# Copy the local images to the container directory
COPY Data/seededImages /seededImages
COPY Data/artists.md /artists.md

# Optional: Define a command to keep the container alive or perform any other actions
CMD ["sh", "-c", "while true; do sleep 3600; done"]