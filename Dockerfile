FROM acr-openxlab-prod-registry-vpc.cn-shanghai.cr.aliyuncs.com/public/nginx:1.25-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone
EXPOSE 80
