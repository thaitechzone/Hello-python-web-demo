# Landing Page - Smart Farm Control 🌱

[![CI - Test and Lint](https://github.com/thaitechzone/Hello-python-web-demo/workflows/CI%20-%20Test%20and%20Lint/badge.svg)](https://github.com/thaitechzone/Hello-python-web-demo/actions/workflows/ci.yml)
[![Deploy to Render](https://github.com/thaitechzone/Hello-python-web-demo/workflows/Deploy%20to%20Render/badge.svg)](https://github.com/thaitechzone/Hello-python-web-demo/actions/workflows/deploy.yml)
[![Docker Build and Push](https://github.com/thaitechzone/Hello-python-web-demo/workflows/Docker%20Build%20and%20Push/badge.svg)](https://github.com/thaitechzone/Hello-python-web-demo/actions/workflows/docker.yml)
[![Code Quality](https://github.com/thaitechzone/Hello-python-web-demo/workflows/Code%20Quality/badge.svg)](https://github.com/thaitechzone/Hello-python-web-demo/actions/workflows/code-quality.yml)

หน้า Landing Page สำหรับระบบควบคุมฟาร์มอัจฉริยะ ที่สร้างด้วย Python Flask Framework พร้อม CI/CD automation

## 📋 Features

- ✅ Responsive landing page design
- ✅ Smart Farm Control theme with gradient UI
- ✅ Production-ready with Gunicorn
- ✅ Docker support
- ✅ GitHub Actions CI/CD
- ✅ Auto-deploy to Render
- ✅ Security scanning
- ✅ Code quality checks

## 🛠️ Tech Stack

- **Backend**: Python 3.11, Flask 3.0.0
- **Production Server**: Gunicorn 21.2.0
- **Frontend**: HTML5, CSS3
- **Containerization**: Docker
- **CI/CD**: GitHub Actions
- **Deployment**: Render.com
- **Code Quality**: Flake8, Black, Pylint, Bandit

## การติดตั้ง

1. Clone repository:
```bash
git clone https://github.com/thaitechzone/Hello-python-web-demo.git
cd Hello-python-web-demo
```

2. ติดตั้ง dependencies:
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
3. เชื่อมต่อกับ GitHub

- Free tier ของ Render จะ sleep หลังจากไม่มีใครเข้าใช้งาน 15 นาที (cold start ~1 นาที)
- ใช้ Gunicorn แทน Flask development server เพื่อความปลอดภัยและประสิทธิภาพ
- ตรวจสอบ logs ได้ที่ Render Dashboard → Service → Logs

## 🤖 GitHub Actions Workflows

โปรเจกต์นี้มี automated workflows ดังนี้:

### 1. CI - Test and Lint
- รันทุกครั้งที่ push หรือ PR
- ทดสอบกับ Python 3.10, 3.11, 3.12
- ตรวจสอบ syntax และ code quality
- Security scanning ด้วย Safety และ Bandit

### 2. Deploy to Render
- รันเมื่อ push ไปที่ main branch
- แจ้งเตือนการ deploy อัตโนมัติ
- Health check หลัง deploy

### 3. Docker Build and Push
- Build Docker image
- ทดสอบ container
- Push ไปที่ GitHub Container Registry
- รองรับ semantic versioning

### 4. Code Quality
- ตรวจสอบ code formatting (Black)
- Import sorting (isort)
- Code complexity analysis (Radon)
- Type checking (mypy)
- รันทุกสัปดาห์และเมื่อ push

### 5. Dependency Review
- ตรวจสอบ dependencies ใน PR
- แจ้งเตือน security vulnerabilities

### 6. Dependabot
- อัพเดท dependencies อัตโนมัติทุกสัปดาห์
- สร้าง PR สำหรับ Python packages, GitHub Actions, Docker

📚 ดูรายละเอียดเพิ่มเติมที่ [.github/WORKFLOWS.md](.github/WORKFLOWS.md)

## 🐳 Docker Usage

### Pull from GitHub Container Registry
```bash
docker pull ghcr.io/thaitechzone/hello-python-web-demo:latest
docker run -p 5000:5000 ghcr.io/thaitechzone/hello-python-web-demo:latest
```

### Build และ Run Local
```bash
docker build -t smart-farm-control .
docker run -p 5000:5000 smart-farm-control
```

### Docker Compose (ถ้ามี)
```bash
docker-compose up -d
```

## 🔧 Development

### รันใน Development Mode
```bash
export FLASK_ENV=development  # Linux/Mac
# หรือ
set FLASK_ENV=development     # Windows
python app.py
```

### Code Quality Tools
```bash
# Formatting
black .
isort .

# Linting
flake8 .
pylint app.py

# Type checking
mypy app.py

# Security scan
bandit -r .
safety check
```

## 📝 Project Structure

```
.
├── .github/
│   ├── workflows/          # GitHub Actions workflows
│   │   ├── ci.yml
│   │   ├── deploy.yml
│   │   ├── docker.yml
│   │   ├── code-quality.yml
│   │   └── dependency-review.yml
│   ├── dependabot.yml      # Dependabot configuration
│   └── WORKFLOWS.md        # Workflows documentation
├── static/
│   └── style.css           # CSS styles
├── templates/
│   └── index.html          # Landing page template
├── app.py                  # Flask application
├── requirements.txt        # Python dependencies
├── Dockerfile              # Docker configuration
├── Procfile                # Render start command
├── render.yaml             # Render Blueprint
├── runtime.txt             # Python version
├── DEPLOYMENT.md           # Deployment guide
└── README.md               # This file
```

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 👤 Author

**Thai Tech Zone**
- GitHub: [@thaitechzone](https://github.com/thaitechzone)
- Repository: [Hello-python-web-demo](https://github.com/thaitechzone/Hello-python-web-demo)

## 🙏 Acknowledgments

- Flask Framework
- Render Platform
- GitHub Actions
- Docker Community

---

Made with ❤️ for Smart Farm Control repository ของคุณ
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
