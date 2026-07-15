# Use the official minimal Bun image
FROM oven/bun:alpine

# Set the working directory
WORKDIR /app

# Copy the server script into the container
COPY index.js .

# Set environment variable for the port
ENV PORT=3000

# Expose port 3000 for Coolify's reverse proxy
EXPOSE 3000

# Start the server using Bun
CMD ["bun", "run", "index.js"]
