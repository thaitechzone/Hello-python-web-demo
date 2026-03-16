# Landing Page - Python Flask

หน้า Landing Page ที่สร้างด้วย Python Flask Framework

## การติดตั้ง

1. ติดตั้ง dependencies:
```bash
pip install -r requirements.txt
```

## การรันโปรแกรม

รันด้วยคำสั่ง:
```bash
python app.py
```

หรือ:
```bash
flask run
```

เว็บไซต์จะทำงานที่: http://localhost:5000

## การรันด้วย Docker

### Build Docker Image
```bash
docker build -t flask-landing-page .
```

### Run Docker Container
```bash
docker run -p 5000:5000 flask-landing-page
```

เว็บไซต์จะทำงานที่: http://localhost:5000

### หยุด Container
```bash
docker ps                    # ดู container ID
docker stop <container-id>   # หยุด container
```

## 🚀 Deploy บน Render

### วิธีที่ 1: Deploy ผ่าน GitHub (แนะนำ)

#### ขั้นตอนที่ 1: เตรียม Git Repository
```bash
# เริ่ม Git repository
git init

# เพิ่มไฟล์ทั้งหมด
git add .

# Commit
git commit -m "Initial commit - Smart Farm Control"

# เชื่อมต่อกับ GitHub repository (สร้างที่ GitHub ก่อน)
git remote add origin https://github.com/YOUR_USERNAME/smart-farm-control.git

# Push ขึ้น GitHub
git branch -M main
git push -u origin main
```

#### ขั้นตอนที่ 2: สร้าง Web Service บน Render

1. ไปที่ [https://render.com](https://render.com) และสมัครสมาชิก (ใช้ GitHub account)
2. คลิก **"New +"** → เลือก **"Web Service"**
3. เชื่อมต่อกับ GitHub repository ของคุณ
4. กรอกข้อมูล:
   - **Name**: `smart-farm-control` (ชื่อตามต้องการ)
   - **Environment**: `Python 3`
   - **Build Command**: `pip install -r requirements.txt`
   - **Start Command**: `gunicorn app:app`
   - **Instance Type**: `Free` (สำหรับทดลอง)
5. คลิก **"Create Web Service"**
6. รอสักครู่ Render จะ build และ deploy ให้อัตโนมัติ
7. คุณจะได้ URL เช่น: `https://smart-farm-control.onrender.com`

### วิธีที่ 2: Deploy ด้วย render.yaml (Blueprint)

1. Push โค้ดพร้อม `render.yaml` ขึ้น GitHub
2. ไปที่ Render Dashboard → คลิก **"New +"** → เลือก **"Blueprint"**
3. เลือก repository ที่มีไฟล์ `render.yaml`
4. Render จะอ่านการตั้งค่าจาก `render.yaml` และ deploy อัตโนมัติ

### วิธีที่ 3: Deploy ด้วย Docker

1. ไปที่ Render → **"New +"** → **"Web Service"**
2. เชื่อมต่อ GitHub repository
3. กรอกข้อมูล:
   - **Environment**: `Docker`
   - **Dockerfile Path**: `./Dockerfile`
4. คลิก **"Create Web Service"**

### ⚠️ สิ่งที่ต้องทราบ

- **Free Plan**: จะ sleep หลังไม่มี traffic 15 นาที (ครั้งแรกที่เข้าจะใช้เวลา ~30 วินาที)
- **Custom Domain**: สามารถเพิ่ม custom domain ได้ (ต้องอัปเกรดแผน)
- **Auto Deploy**: ทุกครั้งที่ push to main branch, Render จะ deploy อัตโนมัติ
- **Environment Variables**: ตั้งค่าได้ใน Render Dashboard

### 📝 Logs และ Monitoring

- ดู logs: Render Dashboard → เลือก service → **Logs** tab
- ดู metrics: **Metrics** tab
- Restart service: **Manual Deploy** → **Clear build cache & deploy**

## โครงสร้างโปรเจค

```
Hello python/
│
├── app.py              # แอปพลิเคชัน Flask หลัก
├── requirements.txt    # Python dependencies
├── README.md          # ไฟล์นี้
│
├── templates/         # โฟลเดอร์สำหรับ HTML templates
│   └── index.html    # หน้า landing page
│
└── static/           # โฟลเดอร์สำหรับไฟล์ static
    └── style.css     # ไฟล์ CSS
```

## คุณสมบัติ

- ✅ Responsive Design
- ✅ Modern UI/UX
- ✅ Navigation Menu
- ✅ Hero Section
- ✅ Features Section
- ✅ About Section
- ✅ Contact Form
- ✅ Smooth Animations
- ✅ รองรับภาษาไทย

## เทคโนโลยีที่ใช้

- Python 3.x
- Flask 3.0.0
- HTML5
- CSS3
