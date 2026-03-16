# Smart Farm Control - Deployment Guide

## ขั้นตอนการ Deploy บน Render (แบบละเอียด)

### 📋 เตรียมความพร้อม

✅ ไฟล์ที่จำเป็นสำหรับ deployment (มีครบแล้ว):
- `app.py` - Flask application
- `requirements.txt` - Python dependencies (Flask + gunicorn)
- `runtime.txt` - กำหนด Python version
- `render.yaml` - Render configuration (optional)
- `Dockerfile` - สำหรับ Docker deployment (optional)
- `.gitignore` - ไฟล์ที่ไม่ต้อง commit

### 🚀 ขั้นตอนที่ 1: สร้าง GitHub Repository

1. ไปที่ [https://github.com](https://github.com)
2. คลิก **"New repository"**
3. ตั้งชื่อ repository เช่น `smart-farm-control`
4. เลือก **Public** หรือ **Private**
5. **อย่า**ติ๊กถูก "Initialize this repository with a README"
6. คลิก **"Create repository"**

### 💻 ขั้นตอนที่ 2: Push โค้ดขึ้น GitHub

เปิด Terminal/PowerShell ที่โฟลเดอร์โปรเจค แล้วรันคำสั่ง:

```powershell
# ตรวจสอบว่าอยู่ในโฟลเดอร์โปรเจค
cd "C:\Users\thait\Desktop\Hello python"

# เริ่มต้น Git repository
git init

# เพิ่มไฟล์ทั้งหมด
git add .

# Commit
git commit -m "Initial commit: Smart Farm Control landing page"

# เปลี่ยนชื่อ branch เป็น main
git branch -M main

# เชื่อมต่อกับ GitHub (แทนที่ YOUR_USERNAME ด้วย username ของคุณ)
git remote add origin https://github.com/YOUR_USERNAME/smart-farm-control.git

# Push ขึ้น GitHub
git push -u origin main
```

### 🌐 ขั้นตอนที่ 3: Deploy บน Render

#### วิธีแบบง่าย (Web Service):

1. ไปที่ [https://render.com](https://render.com)
2. คลิก **"Get Started"** หรือ **"Sign Up"**
3. เลือก **"Sign Up with GitHub"** (แนะนำ)
4. อนุญาตให้ Render เข้าถึง GitHub repositories
5. ที่ Dashboard คลิก **"New +"** → เลือก **"Web Service"**
6. เลือก repository ที่เพิ่ง push ขึ้นไป
7. กรอกข้อมูล:

**Basic Settings:**
- **Name**: `smart-farm-control` (URL จะเป็น smart-farm-control.onrender.com)
- **Region**: `Singapore` (ใกล้ไทยที่สุด)
- **Branch**: `main`
- **Root Directory**: (ว่างไว้)

**Build & Deploy:**
- **Runtime**: `Python 3`
- **Build Command**: `pip install -r requirements.txt`
- **Start Command**: `gunicorn app:app`

**Instance Type:**
- เลือก **Free** (เริ่มต้นทดลองฟรี)

8. คลิก **"Create Web Service"**
9. รอ 2-3 นาทีให้ Render build และ deploy
10. เมื่อเห็นสถานะ **"Live"** (สีเขียว) แสดงว่าสำเร็จ!
11. คุณจะได้ URL เช่น: `https://smart-farm-control.onrender.com`

### ✅ ตรวจสอบการทำงาน

1. คลิกที่ URL ที่ได้ (เช่น https://smart-farm-control.onrender.com)
2. หน้าเว็บ Smart Farm Control ควรแสดงขึ้นมา
3. หากมีปัญหา ให้ไปดูที่ **"Logs"** tab

### 🔄 อัปเดทเว็บไซต์

เมื่อต้องการแก้ไขโค้ดและอัปเดท:

```powershell
# แก้ไขไฟล์ตามต้องการ

# Add, Commit และ Push
git add .
git commit -m "Update: คำอธิบายการแก้ไข"
git push

# Render จะ auto-deploy ให้อัตโนมัติ (ประมาณ 2-3 นาที)
```

### ⚙️ การตั้งค่าเพิ่มเติม

**Environment Variables:**
- ไปที่ Render Dashboard → เลือก service
- คลิก **"Environment"** → **"Add Environment Variable"**
- เพิ่มตัวแปรที่ต้องการ เช่น `FLASK_ENV=production`

**Custom Domain:**
- ไปที่ **"Settings"** → **"Custom Domain"**
- เพิ่ม domain ของคุณ (ต้องอัปเกรดจาก Free plan)

**Health Check:**
- Render จะ ping `/` ทุก 5 นาที
- Free plan จะ sleep หลังไม่มี traffic 15 นาที

### 🆘 แก้ปัญหาที่พบบ่อย

**ปัญหา: Build failed**
- ตรวจสอบ `requirements.txt` ว่ามี dependencies ครบ
- ดู logs ว่า error ตรงไหน

**ปัญหา: Application error**
- ตรวจสอบ Start Command: `gunicorn app:app`
- ดูที่ Logs tab ว่ามี error อะไร

**ปัญหา: เว็บช้า (Free plan)**
- Free plan จะ sleep หลังไม่มีการใช้งาน
- ครั้งแรกที่เข้าอาจใช้เวลา 30-50 วินาที
- พิจารณาอัปเกรดเป็น Starter plan ($7/month)

### 💰 ราคาแผนต่างๆ

- **Free**: ฟรี (มีข้อจำกัด: sleep after 15 min, 750 hrs/month)
- **Starter**: $7/month (ไม่ sleep, custom domain, SSL)
- **Standard**: $25/month (more resources)

### 📚 เอกสารเพิ่มเติม

- [Render Documentation](https://render.com/docs)
- [Deploy Flask Apps](https://render.com/docs/deploy-flask)
- [Render Free Tier](https://render.com/docs/free)

---

🎉 **ยินดีด้วย! เว็บไซต์ของคุณออนไลน์แล้ว**
