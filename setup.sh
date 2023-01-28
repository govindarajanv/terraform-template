#!/bin/sh
python3 -m install pip install pre-commit
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
wget https://github.com/terraform-linters/tflint/releases/download/v0.44.1/tflint_linux_amd64.zip && unzip tflint_linux_amd64.zip && sudo chmod +x tflint && sudo mv tflint /usr/local/bin && rm tflint_linux_amd64.zip

#curl -L "$(curl -s https://api.github.com/repos/tenable/terrascan/releases/latest | grep -o -E "https://.+?_Linux_x86_64.tar.gz")" > terrascan.tar.gz
#tar -xf terrascan.tar.gz terrascan && rm terrascan.tar.gz
#sudo install terrascan /usr/local/bin && rm terrascan

# curl -fsSL https://raw.githubusercontent.com/infracost/infracost/master/scripts/install.sh | sh

https://github.com/terraform-docs/terraform-docs/releases/download/v0.16.0/terraform-docs-v0.16.0-linux-amd64.tar.gz
tar xvfz terraform-docs-v0.16.0-linux-amd64.tar.gz
sudo chmod +x terraform-docs
sudo mv terraform-docs /usr/local/bin

curl -s https://raw.githubusercontent.com/aquasecurity/tfsec/master/scripts/install_linux.sh | bash
pre-commit autoupdate
