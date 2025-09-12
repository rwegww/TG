# Sử dụng image Node.js chính thức
FROM node:18

# Đặt thư mục làm việc
WORKDIR /app

# Copy package.json và package-lock.json
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ source code vào image
COPY . .

# Expose port 3000
EXPOSE 3000

# Lệnh chạy app
CMD ["npm", "start"]
