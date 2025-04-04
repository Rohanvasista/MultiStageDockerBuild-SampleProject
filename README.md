**Documentation for gcr.io/distroless/nodejs18**

Stage 1 :uses node:18-alpine to install dependencies and build the app.

Stage 2 :uses Distroless Node.js 18 image for a minimal, secure runtime environment.

We copy the entire /app from the builder, assuming your app doesn't require any build step (like npm run build).

If your app needs a build step, just add it after npm install.
