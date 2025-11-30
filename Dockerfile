# Use the official Browserless image as the base
FROM browserless/chrome:latest

# Switch to root user
USER root

# Set environment variables for Browserless
ENV TOKEN=rmCPGsBygD8xAcRDaaCcsyZVs6h2Bkm80SCsfqYzCK82ewADTdkj3sFtrhhwoEDF
ENV BROWSERLESS_WS_ENDPOINT=https://browserless-849793025237.us-central1.run.app
ENV CONNECTION_TIMEOUT=-1

RUN apt-get install xvfb

# Install additional dependencies
RUN npm install puppeteer-extra puppeteer-extra-plugin-stealth puppeteer-real-browser
