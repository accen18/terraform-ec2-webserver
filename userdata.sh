#!/bin/bash

# Update system packages
dnf update -y

# Install Apache web server
dnf install -y httpd

# Start Apache
systemctl start httpd

# Enable Apache on system startup
systemctl enable httpd

# Create website directory
mkdir -p /var/www/html

# Deploy website
cat <<'EOF' > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terraform EC2 Web Server</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #eef2f7;
            text-align: center;
            padding: 80px 20px;
        }
        .container {
            background: white;
            max-width: 650px;
            margin: auto;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        h1 {
            color: #232f3e;
        }
        p {
            color: #555;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Hello from AWS EC2!</h1>
        <p>This website is hosted on an Amazon Linux server.</p>
        <p>Infrastructure provisioned using Terraform.</p>
        <p>Project: Terraform EC2 Web Server</p>
    </div>
</body>
</html>
EOF

# Restart Apache
systemctl restart httpd

