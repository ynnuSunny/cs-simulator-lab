# 1. Use Node.js (lightweight Alpine version)
FROM node:22

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy all source code into the container
COPY . .

# 6. Expose Vite’s dev server port
EXPOSE 5173

# 7. Run Vite dev server, binding to 0.0.0.0 so Docker can access it
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
