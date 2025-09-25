# Terraform-with-Docker-provider

## 🎯 Objective
Provision a **local Docker container** using **Terraform** with the **Docker provider**.

---

## 🛠 Tools Used
- Terraform
- Docker

---

## 📂 Project Files
- `main.tf` → Terraform configuration file
- `README.md` → Documentation
- Screenshots/Logs → Terraform execution steps

---

## ⚙️ Terraform Code (main.tf)

```hcl
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Pull nginx image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Run nginx container
resource "docker_container" "nginx" {
  name  = "nginx_container"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}
```

# 🚀 Steps to Run

Initialize Terraform
```
terraform init
```

Preview the execution plan
```
terraform plan
```

Apply the configuration (create container)
```
terraform apply -auto-approve
```

Verify container is running
```
docker ps
curl http://localhost:8080
```

You should see the Nginx welcome page 🎉

Check Terraform state
```
terraform state list
```

Destroy the container
```
terraform destroy -auto-approve
```
📸 Expected Outputs

terraform plan output

terraform apply execution logs

Screenshot of running container (docker ps)

Screenshot of Nginx page on browser (http://localhost:8080)

terraform destroy output

🧑‍💻 Outcome

Learned how to use Terraform Docker Provider

Automated provisioning of a Docker container

Understood IaC concepts like plan, apply, destroy, and state

# Here are some screenshots of this Task


<img width="1854" height="1048" alt="Screenshot from 2025-09-25 16-49-23" src="https://github.com/user-attachments/assets/5b44a59b-c176-49a3-accd-fa054359ee42" />


<img width="665" height="155" alt="Screenshot from 2025-09-25 16-50-00" src="https://github.com/user-attachments/assets/b5856881-9947-4171-90c4-a01d1c56654b" />


<img width="1854" height="1048" alt="Screenshot from 2025-09-25 16-50-18" src="https://github.com/user-attachments/assets/33156185-f310-493f-8ba8-376522ea8b40" />


<img width="1854" height="1048" alt="Screenshot from 2025-09-25 16-50-44" src="https://github.com/user-attachments/assets/340495b3-11df-4489-91dc-aa8a48cfd03a" />


<img width="1854" height="1048" alt="Screenshot from 2025-09-25 16-51-05" src="https://github.com/user-attachments/assets/ff84ec9a-d4be-437e-8d79-07f5d46d23fa" />


<img width="1065" height="140" alt="Screenshot from 2025-09-25 16-51-29" src="https://github.com/user-attachments/assets/3c279ed1-2d1a-4375-a79f-34db418283c5" />


<img width="1075" height="421" alt="Screenshot from 2025-09-25 16-52-12" src="https://github.com/user-attachments/assets/e6ef9241-5867-4852-822a-40e39e545dcc" />


<img width="1070" height="157" alt="Screenshot from 2025-09-25 16-52-52" src="https://github.com/user-attachments/assets/f6b6401f-4aef-43db-93fb-e3d12624ffeb" />


<img width="1078" height="421" alt="Screenshot from 2025-09-25 16-53-32" src="https://github.com/user-attachments/assets/2fa05535-f715-42b3-942f-164b8b458da5" />

