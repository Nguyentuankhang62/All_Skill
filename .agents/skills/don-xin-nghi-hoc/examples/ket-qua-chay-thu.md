# Kết quả thực hành trên lớp: Skill `don-xin-nghi-hoc` (Slide 30)

Tài liệu này ghi lại kết quả kiểm thử 4 câu hỏi theo đúng yêu cầu **Thực hành trên lớp (Slide 30 - Bài 00: Kỹ thuật AI Agent)**.

---

## Bảng tổng hợp kết quả gọi skill

| Lần hỏi | Câu lệnh của người dùng (Prompt) | Agent có dùng skill `don-xin-nghi-hoc` không? | Giải thích lý do |
| :--- | :--- | :---: | :--- |
| **Lần 1** | `"xin nghỉ học"` | **Có dùng skill** | Khớp trực tiếp với mục đích soạn đơn xin phép nghỉ học cho sinh viên trong `description`. |
| **Lần 2** | `"mai em bị sốt"` | **Có dùng skill** | Dù không có chữ "đơn", người dùng nêu lý do sức khỏe báo vắng buổi học ngày mai -> Khớp với mẫu câu kích hoạt trong `description`. |
| **Lần 3** | `"báo vắng thứ Năm"` | **Có dùng skill** | Khớp với tình huống sinh viên xin phép vắng mặt buổi học thứ Năm trong `description`. |
| **Lần 4** | `"viết đơn xin việc"` | **Không dùng skill** | Trong `description` đã quy định rõ ranh giới: **Không kích hoạt** khi người dùng yêu cầu viết đơn xin việc, CV, đơn thực tập. Agent trả lời bằng kiến thức chung. |

---

## Chi tiết các lần chạy thử

### Lần 1: Hỏi `"xin nghỉ học"` -> [Agent dùng skill `don-xin-nghi-hoc`]
**Kết quả Agent xuất ra:**
> Đã kích hoạt skill `don-xin-nghi-hoc`. Dưới đây là mẫu đơn xin phép nghỉ học theo thông tin sinh viên Nguyễn Tuấn Khang (MSSV: `077206003397` - Trường ĐH Giao thông Vận tải TP.HCM - UTH):
>
> **CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM**
> **Độc lập - Tự do - Hạnh phúc**
>
> **ĐƠN XIN PHÉP NGHỈ HỌC**
>
> **Kính gửi:** Giảng viên bộ môn `[Tên môn học]` - Khoa Công nghệ thông tin, Trường Đại học Giao thông Vận tải TP.HCM (UTH)
> - **Em tên là:** Nguyễn Tuấn Khang
> - **Mã số sinh viên:** 077206003397
> - **Lớp:** `[Mã lớp]`
> - **Thời gian xin nghỉ:** `[Buổi/Tiết, Ngày/Tháng/Năm]`
> - **Lý do xin nghỉ:** `[Điền lý do cụ thể]`
> - **Cam đoan:** Tự giác chép bài, nghiên cứu tài liệu và hoàn thành đầy đủ bài tập được giao.

---

### Lần 2: Hỏi `"mai em bị sốt"` -> [Agent dùng skill `don-xin-nghi-hoc`]
**Kết quả Agent xuất ra:**
> Đã kích hoạt skill `don-xin-nghi-hoc`. Agent tự động chuyển lý do *"bị sốt"* thành ngôn ngữ hành chính lịch sự:
> - **Thời gian xin nghỉ:** Ngày mai (1 buổi học).
> - **Lý do xin nghỉ:** Do em bị sốt cao đột ngột, cần nghỉ ngơi và theo dõi sức khỏe theo hướng dẫn của bác sĩ nên không thể đảm bảo sức khỏe để đến lớp.
> - **Minh chứng đính kèm:** Đính kèm ảnh chụp giấy tờ khám bệnh / đơn thuốc của bệnh viện để chứng minh (hoặc gửi bổ sung ảnh chụp giấy khám ngay sau khi khám xong).
> - Đầy đủ Quốc hiệu, Tiêu ngữ, thông tin sinh viên Nguyễn Tuấn Khang (`077206003397`) và lời cam kết học bù.

---

### Lần 3: Hỏi `"báo vắng thứ Năm"` -> [Agent dùng skill `don-xin-nghi-hoc`]
**Kết quả Agent xuất ra:**
> Đã kích hoạt skill `don-xin-nghi-hoc`. Agent tự động điền thời gian xin nghỉ là **Thứ Năm tuần này** vào mẫu đơn hành chính chuẩn UTH, kèm cam kết chép bài và làm bài tập đầy đủ.

---

### Lần 4: Hỏi `"viết đơn xin việc"` -> [Agent không dùng skill `don-xin-nghi-hoc`]
**Kết quả Agent xuất ra:**
> Agent nhận diện đây là yêu cầu viết **Đơn xin ứng tuyển công việc**, hoàn toàn nằm ngoài phạm vi của `don-xin-nghi-hoc`. Agent **không nạp** `don-xin-nghi-hoc/SKILL.md` mà sử dụng kiến thức tổng quát để viết mẫu đơn ứng tuyển vị trí lập trình viên.
