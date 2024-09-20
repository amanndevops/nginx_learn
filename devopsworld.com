server {
	listen 80;
	server_name grafana.devopsworldconsultancy.com;
	location / {
		proxy_pass http://localhost:3000;
        }
}
