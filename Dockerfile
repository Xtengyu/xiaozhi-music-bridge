# 使用官方 Node.js 18 镜像

FROM node:18-alpine

# 设置工作目录

WORKDIR /app

# 复制 package.json 和 package-lock.json（如果有）

COPY package*.json ./

# 安装依赖

RUN npm install

# 复制项目所有代码

COPY . .

# 启动命令 (桥接脚本一般也是通过 npm start 或 node server.js 启动，如果这里报错，请把 npm start 改为 node server.js)

CMD ["npm", "start"]
