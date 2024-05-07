FROM sickcodes/docker-osx:sonoma AS base

# Install Homebrew
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install required dependencies using Homebrew
RUN /bin/bash -c "$(brew install ansible)"
# Set working directory
WORKDIR /usr/local/bin

# Copy your files (assuming they are in the same directory as Dockerfile)
COPY . .
