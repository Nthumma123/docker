ARG version 

FROM redhat/ubi9:${version:-8}
RUN mkdir -p /app
WORKDIR /app
RUN dnf install -y nginx
RUN useradd roboshop 
USER roboshop 
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
LABEL course = "RoboShop DevOps" \
      author="Neelima" \
      email="neelima@example.com" 

ENV CATALOGUE_HOST=catalogue.roboshop.internal \
    USER_HOST=user.roboshop.internal \
    CART_HOST=cart.roboshop.internal \
    SHIPPING_HOST=shipping.roboshop.internal \
    PAYMENT_HOST=payment.roboshop.internal

