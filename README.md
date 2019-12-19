# nginx_learning

# Installation of Nginx in Ubuntu

sudo apt install curl gnupg2 ca-certificates lsb-release;
echo "deb http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" \
    | sudo tee /etc/apt/sources.list.d/nginx.list ;
    
curl -fsSL https://nginx.org/keys/nginx_signing.key | sudo apt-key add -  ;
sudo apt-key fingerprint ABF5BD827BD9BF62 ;
sudo apt update ;
sudo apt install nginx ;


# To Start, Stop and Restart Nginx

nginx -s stop.  #fast shutdown ;
nginx -s reload #reloading the configuration file ;
nginx -s reopen #reopening the log files ;
nginx -s quit  #graceful shutdown ;


# To Kill Nginx Process
ps -ax | grep nginx ;
kill -s QUIT processid ;



