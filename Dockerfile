FROM debian:bullseye-slim

RUN apt update && apt install -y wget ca-certificates && rm -rf /var/lib/apt/lists/* 

# 设置工作目录
WORKDIR /app
RUN wget https://github.com/Bendr0id/xmrigCC/releases/download/3.4.5/xmrigCC-3.4.5-linux-generic-static-amd64.tar.gz && tar -xvf xmrigCC-3.4.5-linux-generic-static-amd64.tar.gz 

COPY entrypoint.sh entrypoint.sh

RUN chmod +x entrypoint.sh

# 设置默认命令
ENTRYPOINT ["./entrypoint.sh"]
