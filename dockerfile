# Continue from the previous Dockerfile

# Build the application
RUN npm run build

# For a production environment, you might want to use a lighter-weight image
# For example, you can use the 'alpine' version of Node.js
# Replace the first line with the following if you prefer alpine
# FROM node:14-alpine

# Create a new image based on the lighter-weight node image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the built application from the previous stage
COPY --from=0 /usr/src/app/dist ./dist

# Install only production dependencies
RUN npm install --only=production

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run your app
CMD ["npm", "start"]
