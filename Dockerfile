# Use the official Browserless image as the base
FROM browserless/chrome:latest

# Set environment variables for Browserless
ENV TOKEN=rmCPGsBygD8xAcRDaaCcsyZVs6h2Bkm80SCsfqYzCK82ewADTdkj3sFtrhhwoEDF
ENV BROWSERLESS_WS_ENDPOINT=https://browserless-uu0k.onrender.com
ENV CONNECTION_TIMEOUT=1

RUN npm install -g puppeteer-extra puppeteer-extra-plugin-stealth puppeteer-real-browser

# Expose the necessary port (usually 3000)
EXPOSE 3000

# Start Browserless service with proper executable
CMD echo "CONNECTION_TIMEOUT is set to: $CONNECTION_TIMEOUT" && npm start
