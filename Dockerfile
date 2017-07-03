FROM ubuntu:latest

MAINTAINER Harry <harald.urban@weltn24.de>

# Install deps
RUN apt-get update && apt-get install -y \
	apt-transport-https \
	ca-certificates \
	curl \
    gnupg \
	--no-install-recommends

# Get Chrome sources
RUN curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
	&& echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list

# Install Chrome
RUN apt-get update && apt-get install -y \
	google-chrome-stable \
	--no-install-recommends

# Add Chrome as a user
RUN groupadd -r chrome && useradd -r -g chrome -G audio,video chrome \
    && mkdir -p /home/chrome && chown -R chrome:chrome /home/chrome

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs
RUN npm --global install yarn
