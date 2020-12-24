# ng_admin_docker

A practice to build dockeriezed ng admin

# Description
只用 node 來啟動前端，因為缺乏 web server 因此即使在 local 已經將 docker 內的 port bind 出來，仍然無法在 local 連線前端。
正確的 web docker 的流程，應先將 source code build 成 binary 再透過 web server 啟動前端服務。
此處使用 nginx 作為 web server 使用。

# Usage 
1. clone ngx-admin
```
git clone https://github.com/akveo/ngx-admin/tree/starter-kit
```

2. (optional)

如果在local開發時已經有 npm install 過，
可以考慮將 .dockerignore中的值刪除，以加速 build 的過程，
若為正式 release 則建議仍要保留 .dockerignore 讓 npm install 重新安裝相依套件。

3. build docker image
```
docker build -t ng_admin_docker .
```

4. run docker
```
docker run  -p 4200:80 ng_admin_docker
```

5. test on your browser
```
http://localhost:4200
```