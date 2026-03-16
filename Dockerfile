# ใช้ Python 3.11 slim image เป็น base
FROM python:3.14-slim

# ตั้ง working directory ใน container
WORKDIR /app

# คัดลอก requirements.txt ไปยัง container
COPY requirements.txt .

# ติดตั้ง dependencies
RUN pip install --no-cache-dir -r requirements.txt

# คัดลอกไฟล์ทั้งหมดไปยัง container
COPY . .

# เปิด port 5000
EXPOSE 5000

# ตั้งค่า environment variable
ENV FLASK_APP=app.py
ENV FLASK_ENV=production

# รัน Flask application
CMD ["python", "app.py"]
