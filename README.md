# Bộ 3 Agent Skills hỗ trợ học tập đại học (chuẩn chống xung đột)

> **Tác giả:** Nguyễn Tuấn Khang - **MSSV:** `077206003397`  
> **Trường:** Đại học Giao thông Vận tải TP.HCM (**UTH** - University of Transport Ho Chi Minh City)   
> **Email:** `khangnt3397@ut.edu.vn` | **GitHub:** [@Nguyentuankhang62](https://github.com/Nguyentuankhang62)

Repository này lưu trữ bộ **3 Agent Skills độc lập** phục vụ giao tiếp với AI và tự động hóa các tác vụ học tập hằng ngày của sinh viên, được thiết kế với **ranh giới `description` rõ ràng** để cài đặt toàn cục cùng lúc mà **không bao giờ bị xung đột**.

---

## 1. Hiểu rõ về Agent Skills

Xem bài phân tích chi tiết tại: **[docs/01-tim-hieu-agent-skills.md](./docs/01-tim-hieu-agent-skills.md)**

* **Agent Skills là gì?** Mỗi skill là một thư mục độc lập (bắt buộc có file `SKILL.md` kèm các thư mục tùy chọn `scripts/`, `references/`, `assets/`, `examples/`) đóng gói quy trình, biểu mẫu và tri thức chuyên biệt cho AI Agent.
* **Nó được tạo ra để làm gì?** Để chuẩn hóa quy trình làm việc lặp đi lặp lại thành các module có thể tái sử dụng ở mọi dự án (cài toàn cục) và chia sẻ cho cộng đồng qua GitHub.
* **Nó giải quyết vấn đề gì?**
  1. **Xóa bỏ việc lặp lại prompt thủ công:** Không cần sao chép lại họ tên, MSSV, trường, mẫu đơn, quy tắc slide ở mỗi cuộc hội thoại mới.
  2. **Tiết kiệm 90% bộ nhớ ngữ cảnh (Progressive Disclosure):** Mặc định Agent chỉ đọc `name` và `description` (khoảng 50 từ). Chỉ khi câu lệnh của người dùng khớp với nhiệm vụ của skill nào, Agent mới mở `SKILL.md` của skill đó ra đọc.
  3. **Chống xung đột giữa các tác vụ:** Tách riêng từng nghiệp vụ vào từng skill độc lập kèm điều kiện **nên dùng** và **không được dùng** trong `description`.

---

## 2. Danh sách 3 skills trong repository (đã tách riêng chống xung đột)

| Tên skill | Thư mục | Chức năng riêng biệt | Khi nào kích hoạt | Khi nào không kích hoạt (chống xung đột) |
| :--- | :--- | :--- | :--- | :--- |
| **`don-xin-nghi-hoc`** | [`skills/don-xin-nghi-hoc`](./skills/don-xin-nghi-hoc/SKILL.md) | Viết **Đơn xin phép nghỉ học** theo chuẩn văn bản hành chính (Quốc hiệu, Tiêu ngữ, Kính gửi, cam kết, chữ ký). | *"xin nghỉ học"*, *"mai em bị sốt"*, *"báo vắng thứ Năm"*, *"viết đơn xin phép nghỉ học"*. | Không kích hoạt khi hỏi *"viết đơn xin việc"*, CV, hoặc khi muốn gửi email hỏi bài và xin gia hạn. |
| **`email-giang-vien`** | [`skills/email-giang-vien`](./skills/email-giang-vien/SKILL.md) | Viết **email gửi thầy/cô** cho 3 tình huống: xin nghỉ, xin gia hạn deadline, hỏi bài (có Subject chuẩn, MSSV, lớp, lý do). | Kích hoạt **cả khi không có chữ "email"**: *"nhắn thầy xin nộp trễ đồ án"*, *"xin cô dời hạn"*, *"hỏi thầy bài tập"*. | Không kích hoạt khi người dùng yêu cầu viết "Đơn" hành chính hoặc làm slide. |
| **`lam-slide-thuyet-trinh`** | [`skills/lam-slide-thuyet-trinh`](./skills/lam-slide-thuyet-trinh/SKILL.md) | Thiết kế **slide thuyết trình đa môn học** theo quy trình 3 bước (Hỏi đề tài và thời lượng -> Lập dàn ý -> Viết từng slide theo quy tắc 5x12). | *"làm slide thuyết trình"*, *"soạn bài trình chiếu 10 phút"*, *"lập dàn ý báo cáo đồ án trên lớp"*. | Không kích hoạt khi chỉ hỏi khái niệm lý thuyết, nhờ viết code, viết tiểu luận Word, viết đơn hay gửi email. |

---

## 3. Cấu trúc thư mục repository

```text
All_Skill/
├── README.md                                 # Hướng dẫn cài đặt và tổng quan dự án
├── install-skills.ps1                        # Script cài đặt tự động 1 lệnh trên Windows (PowerShell)
├── install-skills.sh                         # Script cài đặt tự động 1 lệnh trên macOS / Linux / Git Bash
├── docs/
│   └── 01-tim-hieu-agent-skills.md           # Giải thích chi tiết về Agent Skills, mục đích và cơ chế
└── skills/
    ├── don-xin-nghi-hoc/                     # [Thực hành trên lớp - Slide 30]
    │   ├── SKILL.md                          # Hướng dẫn chính của skill viết đơn xin nghỉ học
    │   ├── assets/
    │   │   └── mau-don-uth.md                # Mẫu đơn xin phép nghỉ học chuẩn UTH
    │   └── examples/
    │       └── ket-qua-chay-thu.md           # Kết quả test 4 câu hỏi (3 câu gọi skill, 1 câu 'đơn xin việc' không gọi)
    │
    ├── email-giang-vien/                     # [Bài tập 1 - Slide 32]
    │   ├── SKILL.md                          # Hướng dẫn chính của skill viết email gửi thầy cô
    │   └── examples/
    │       └── so-sanh-co-va-khong-co-skill.md # 3 lần chạy không có chữ 'email' và bảng so sánh có/không có skill
    │
    └── lam-slide-thuyet-trinh/               # [Bài tập 2 - Slide 33]
        ├── SKILL.md                          # Hướng dẫn chính của skill làm slide thuyết trình đa môn
        ├── references/
        │   └── quy-tac-trinh-bay-va-dan-y-mau.md # Quy tắc 5x12, dàn ý mẫu theo thời lượng và tinh chỉnh đa môn
        └── examples/
            └── 10-cau-hoi-thu-va-bo-slide-mau.md # Bảng 10 câu hỏi thử (5 nên/5 không), bộ slide mẫu và áp dụng môn khác
```

---

## 4. Hướng dẫn cài đặt toàn cục 
Bất kỳ bạn nào muốn tải bộ 3 skills này về máy để sử dụng toàn cục trên **Google Antigravity** hoặc **Claude Code** chỉ cần chạy các lệnh sau:

### Cách 1: Cài đặt tự động bằng script (khuyên dùng)

**Trên Windows (PowerShell):**
```powershell
git clone https://github.com/Nguyentuankhang62/All_Skill.git
cd All_Skill
.\install-skills.ps1
```

**Trên macOS / Linux / Git Bash:**
```bash
git clone https://github.com/Nguyentuankhang62/All_Skill.git
cd All_Skill
chmod +x install-skills.sh
./install-skills.sh
```

### Cách 2: Sao chép thủ công từng skill cần dùng

* **Cài toàn cục cho Antigravity (dùng được ở mọi dự án):**
  ```powershell
  Copy-Item -Recurse .\skills\* "$HOME\.gemini\config\skills\" -Force
  ```
* **Cài toàn cục cho Claude Code (dùng được ở mọi dự án):**
  ```powershell
  Copy-Item -Recurse .\skills\* "$HOME\.claude\skills\" -Force
  ```
* **Cài cục bộ cho riêng 1 dự án:**
  Sao chép các thư mục trong `skills/` vào `.agents/skills/` hoặc `.claude/skills/` của dự án đó.

---

## 5. Cá nhân hóa thông tin sinh viên của bạn

Mặc định bộ skill được cấu hình sẵn mẫu thông tin của tác giả (**Nguyễn Tuấn Khang - MSSV: `077206003397` - Trường ĐH Giao thông Vận tải TP.HCM - UTH**).  
Khi các bạn khác tải về dùng:
* Các bạn có thể gõ trực tiếp tên và MSSV trong câu lệnh (ví dụ: *"Mình là Trần Văn A, MSSV 123456, mai mình bị sốt viết đơn xin nghỉ giúp mình"*), Agent sẽ tự động ưu tiên thông tin bạn cung cấp.
* Hoặc mở `SKILL.md` của `don-xin-nghi-hoc` và `email-giang-vien`, thay tên và MSSV mặc định bằng thông tin của riêng bạn để dùng cố định lâu dài!
