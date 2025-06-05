# 🤖 Robot  DevOps Testing Framework  
Framework kiểm thử chức năng hướng dữ liệu (data-driven) sử dụng Robot Framework và DevOps (CI/CD) dành cho ứng dụng web.  

## 🚀 Mục Tiêu  
✅ Tự động hoá kiểm thử chức năng website bằng Robot Framework 
✅ Tách riêng dữ liệu test (Excel, JSON...) ra khỏi logic test 
✅ Tích hợp DevOps: GitHub Actions hoặc Jenkins 
✅ Cấu trúc rõ ràng, dễ mở rộng

## 📁 Cấu Trúc Thư Mục
`robot-ai-devops-framework/`  
├── `testsuites/` - Test case theo chức năng (VD: login.robot)  
├── `resources/` - Các bước dùng chung (login_steps.robot, ...)  
├── `keywords/` - Keyword Python mở rộng nếu cần  
├── `data/` - Dữ liệu test: Excel, JSON, CSV  
├── `reports/` - Báo cáo test HTML  
├── `ci_cd/` - Pipeline CI/CD: GitHub Actions hoặc Jenkins  
├── `requirements.txt` - Thư viện cần thiết  
└── `README.md` - Tài liệu dự án  

## ⚙️ Công Nghệ Sử Dụng
**Framework:** Robot Framework  
**WebDriver:** SeleniumLibrary  
**Dữ liệu test:** JSON / Excel / CSV
**Báo cáo:** Allure (nâng cao)  
**Sinh dữ liệu:** Faker (pip3 install faker)
**CI/CD:** GitHub Actions / Jenkins  

## 📌 Cài Đặt
```bash
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
robotframework
robotframework-seleniumlibrary
robotframework-jsonlibrary
robotframework openpyxl
pandas

## Cài phiên bản ổn định
pip install robotframework==6.0.2

## Cài thêm thư viện hỗ trợ
pip install allure-pytest

## Thêm biến môi trường này để debug
SET ROBOT_SYSLOG_FILE=log_robot_listener.txt


## ▶️ Chạy Test  
robot testsuites/login.robot          # Chạy 1 file
robot testsuites/                     # Chạy tất cả
robot --outputdir reports testsuites/ # Ghi log vào thư mục reports
robot --listener "allure_robotframework;output/allure-results" --outputdir reports testcase/ # Lưu kết quả Allure vào thư mục reports

## Chạy để tạo file .robot
truoc khi tao thi cd vao folder chua cacs file nay
python csvReader.py
python generate_robot_tests.py
sau khi chay va tao file xong thi cd tro lai thu muc du an

## 🔍 Báo Cáo  
Sau khi test xong, mở `reports/log.html` hoặc `reports/report.html` để xem kết quả chi tiết.  
allure generate output/allure-results -o ./output/allure

## 🔍 Mở Báo Cáo Allure  
allure open output/allure


## 🔄 CI/CD  
- Tự động chạy test khi push code (GitHub Actions) 

