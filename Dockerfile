FROM redhat/ubi9
RUN dnf install -y nginx

CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
LABEl course = "RoboShop DevOps" \
      author="Neelima" \
      email="neelima@example.com" 

