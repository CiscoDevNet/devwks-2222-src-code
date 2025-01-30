sudo apt update
sudo apt install wget
sudo apt install less
yes | sudo apt install curl
sudo apt install unzip
wget https://releases.hashicorp.com/terraform/1.10.5/terraform_1.10.5_linux_amd64.zip
yes | unzip terraform_1.10.5_linux_amd64.zip 
sudo mv terraform /usr/local/bin/
terraform version
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version
