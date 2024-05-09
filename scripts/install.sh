
#!/bin/bash

# Function to check if Homebrew is installed and install it if not
install_homebrew() {
    if ! command -v brew &> /dev/null; then
        echo "Homebrew not found. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew is already installed."
    fi
}

# Function to install Ansible on macOS
install_ansible_macos() {
    echo "Installing Ansible via Homebrew..."
    brew install ansible
}

# Function to install Ansible on Linux (Ubuntu/Debian)
install_ansible_linux() {
    echo "Installing Ansible via apt..."
    sudo apt update
    sudo apt install -y ansible
}

# Function to clone the repository and run Ansible playbook
clone_and_run_playbook() {
    echo "Cloning the repository..."
    git clone https://github.com/Snaylaker/productivity
    cd productivity
    echo "Running Ansible playbook..."
    ansible-playbook config.yml --ask-become-pass
}

# Main script

# Check if the system is macOS
if [[ $(uname) == "Darwin" ]]; then
    echo "Detected macOS."
    install_homebrew
    install_ansible_macos
# Check if the system is Linux
elif [[ $(uname) == "Linux" ]]; then
    echo "Detected Linux."
    install_ansible_linux
else
    echo "Unsupported operating system."
    exit 1
fi

# Clone the repository and run Ansible playbook
clone_and_run_playbook

echo "Script execution completed."
