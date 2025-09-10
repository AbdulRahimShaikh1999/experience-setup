              #!/bin/bash
              set -xe
              yum update -y
              amazon-linux-extras enable nginx1
              yum clean metadata
              yum install -y nginx
              systemctl enable nginx
              systemctl start nginx
              echo "<h1>Hello from Terraform</h1>" > /usr/share/nginx/html/index.html
              echo "App running on port 80" >> /usr/share/nginx/html/index.html