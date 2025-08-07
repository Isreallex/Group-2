# Group-2
the project is about  a containerized web server that can monitor our system
The image is a project outline titled:

2. Containerized Web Server with Monitoring


---

🔹 Description:

Deploy a containerized NGINX or Apache web server using Docker, monitor its performance (CPU, memory), and log alerts if resources are high. Optionally, deploy to a cloud provider.


---

🔹 Skills Used:

Containers (Week 7):
Run NGINX using:

docker run -d -p 80:80 nginx

Scripting/Monitoring (Weeks 4, 6):
Write monitor_web.sh to check:

free (memory usage)

uptime (system load)


Security (Week 5):

Use UFW (Uncomplicated Firewall):

sudo ufw allow 80

Disable root SSH access.


Cloud (Week 7):
Deploy to a DigitalOcean droplet.



---

🔹 Deliverables:

Script:
~/myproject/scripts/monitor_web.sh

Documentation:
~/myproject/docs/project_readme.md (must include Docker setup)

Screenshots:

docker ps

curl http://localhost

tail ~/myproject/logs/web.log


Optional:
Cloud URL:
http://<droplet-ip>

