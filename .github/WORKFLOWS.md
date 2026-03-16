# GitHub Actions Workflows 🚀

โปรเจกต์นี้ใช้ GitHub Actions สำหรับ CI/CD และ automation ต่างๆ

## Workflows ที่มี

### 1. **CI - Test and Lint** (`ci.yml`)
- **เมื่อไหร่ที่รัน**: ทุกครั้งที่ push หรือ PR ไปที่ `main` หรือ `develop`
- **สิ่งที่ทำ**:
  - ทดสอบกับ Python versions 3.10, 3.11, 3.12
  - ตรวจสอบ syntax errors ด้วย flake8
  - ทดสอบการ import Flask app
  - ตรวจสอบโครงสร้างโฟลเดอร์
  - รัน Security scanning ด้วย safety และ bandit

### 2. **Deploy to Render** (`deploy.yml`)
- **เมื่อไหร่ที่รัน**: เมื่อ push ไปที่ `main` หรือรัน manual
- **สิ่งที่ทำ**:
  - แจ้งเตือนการ deploy
  - รอให้ Render deploy เสร็จ
  - ทำ health check พื้นฐาน

### 3. **Docker Build and Push** (`docker.yml`)
- **เมื่อไหร่ที่รัน**: เมื่อ push ไปที่ `main`, สร้าง tag, หรือ PR
- **สิ่งที่ทำ**:
  - Build Docker image
  - ทดสอบ Docker container
  - Push image ไปที่ GitHub Container Registry (ghcr.io)
  - สร้าง tags อัตโนมัติ (latest, version, sha)

### 4. **Code Quality** (`code-quality.yml`)
- **เมื่อไหร่ที่รัน**: เมื่อ push/PR และทุกวันจันทร์
- **สิ่งที่ทำ**:
  - ตรวจสอบ code formatting (Black)
  - ตรวจสอบ import ordering (isort)
  - วิเคราะห์คุณภาพโค้ด (Pylint)
  - คำนวณ code complexity (Radon)
  - Type checking (mypy)

### 5. **Dependency Review** (`dependency-review.yml`)
- **เมื่อไหร่ที่รัน**: เมื่อสร้าง PR
- **สิ่งที่ทำ**:
  - ตรวจสอบ dependencies ที่มีการเปลี่ยนแปลง
  - แจ้งเตือนถ้ามี security vulnerabilities
  - Comment สรุปใน PR

## การใช้งาน

### ดู Status ของ Workflows
ไปที่ **Actions** tab ใน GitHub repository

### รัน Workflow แบบ Manual
1. ไปที่ **Actions** tab
2. เลือก workflow ที่ต้องการ
3. คลิก **Run workflow**
4. เลือก branch และคลิก **Run**

### เพิ่ม Status Badges
เพิ่มในไฟล์ README.md:

```markdown
![CI](https://github.com/thaitechzone/Hello-python-web-demo/workflows/CI%20-%20Test%20and%20Lint/badge.svg)
![Deploy](https://github.com/thaitechzone/Hello-python-web-demo/workflows/Deploy%20to%20Render/badge.svg)
![Docker](https://github.com/thaitechzone/Hello-python-web-demo/workflows/Docker%20Build%20and%20Push/badge.svg)
```

## การตั้งค่าที่จำเป็น

### สำหรับ Docker Push
Docker workflow จะ push image ไปที่ GitHub Container Registry โดยอัตโนมัติ
ไม่ต้องตั้งค่าอะไรเพิ่มเติม (ใช้ `GITHUB_TOKEN` ที่มีอยู่แล้ว)

### ดึง Docker Image
```bash
docker pull ghcr.io/thaitechzone/hello-python-web-demo:latest
docker run -p 5000:5000 ghcr.io/thaitechzone/hello-python-web-demo:latest
```

## การปรับแต่ง

### เปลี่ยน Python Version
แก้ไขไฟล์ `.github/workflows/ci.yml`:
```yaml
python-version: ['3.10', '3.11', '3.12']
```

### เพิ่ม Environment Variables
ใน workflow file เพิ่ม:
```yaml
env:
  MY_VAR: value
```

หรือตั้งค่าใน GitHub Settings > Secrets and variables > Actions

### แก้ไข Schedule
ในไฟล์ `code-quality.yml`:
```yaml
schedule:
  - cron: '0 0 * * 1'  # ทุกวันจันทร์เวลา 00:00 UTC
```

## Troubleshooting

### Workflow ไม่รัน
- ตรวจสอบว่า workflows อยู่ใน `.github/workflows/`
- ตรวจสอบ YAML syntax
- ตรวจสอบ branch ที่ระบุใน `on:` section

### Docker Push ล้มเหลว
- ตรวจสอบ permissions ใน workflow
- ตรวจสอบว่า Container Registry เปิดใช้งาน

### Tests ล้มเหลว
- รัน tests ใน local ก่อน push
- ตรวจสอบ dependencies ใน `requirements.txt`

## Resources

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Workflow syntax](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions)
- [GitHub Container Registry](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry)
