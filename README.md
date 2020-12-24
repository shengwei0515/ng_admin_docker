# ng_admin_docker

Usage 
1. clone ngx-admin
```
git clone https://github.com/akveo/ngx-admin/tree/starter-kit
```

2. (optional)

if you have run npm install local
you can consider to remove .dockerignore file
to make build process faster

3. build docker image
```
docker build -t ng_admin_docker .
```

4. 
```
docker run  -p 4200:80 ng_admin_docker
```