# nginx_learning

# Installation of Nginx in Ubuntu

# Install the prerequisites:

# For reference, we are installing nginx from official nginx website

https://nginx.org/en/linux_packages.html?_ga=2.108026818.1573135318.1727242193-2008242669.1725425133#Ubuntu

sudo apt update
sudo apt install curl gnupg2 ca-certificates lsb-release ubuntu-keyring -y

# Import an official nginx signing key so apt could verify the packages authenticity. Fetch the key:

curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor \
    | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null

# Verify that the downloaded file contains the proper key:

gpg --dry-run --quiet --no-keyring --import --import-options import-show /usr/share/keyrings/nginx-archive-keyring.gpg

# To set up the apt repository for stable nginx packages, run the following command:

echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] \
http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" \
    | sudo tee /etc/apt/sources.list.d/nginx.list


# To install nginx, run the following commands:

sudo apt update
sudo apt install nginx

# To check nginx version:

nginx -v

# To start nginx:

sudo systemctl start nginx

# To check nginx status:

sudo systemctl status nginx

