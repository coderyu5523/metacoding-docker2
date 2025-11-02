## 실행 명령어

### api 서버 실행

docker build -t api ./api
docker run -dit -p 5000:5000 api

### nginx 실행

docker build -t nginx ./nginx
docker run -dit -p 8080:8080 nginx

### 실행

- http://localhost:8080
- http://localhost:8080/image.png
