# Stage 1: Build
FROM node:18-alpine AS builder

WORKDIR /app

# Copy only package.json files and install dependencies
COPY package*.json ./
RUN npm install

# Copy application source code
COPY . .

# Stage 2: Production with Distroless
FROM gcr.io/distroless/nodejs18

WORKDIR /app

# Copy only the necessary files from builder
COPY --from=builder /app .

# Start the app
CMD ["server.js"]

 