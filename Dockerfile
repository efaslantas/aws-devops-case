#devops-case dockerfile

FROM python:3.8-slim-buster
WORKDIR /python-docker
RUN pip3 install flask
COPY . .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
#App Nginx Stage
FROM nginx:1.20.1
COPY . .
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
WORKDIR /usr/share/nginx/html
EXPOSE 5000
CMD ["nginx", "-g", "daemon off;"]
