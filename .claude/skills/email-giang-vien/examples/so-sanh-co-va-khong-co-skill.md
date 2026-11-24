# Bài tập 1: So sánh kết quả khi có và khi không có skill `email-giang-vien` (Slide 32)

Tài liệu này tổng hợp 3 lần chạy thử với các câu lệnh **không hề chứa chữ "email"** và bảng so sánh sự khác biệt rõ rệt giữa khi **không có skill** và **có skill `email-giang-vien`**.

---

## 1. Ba lần chạy thử (không nhắc chữ "email")

### Lần chạy 1 (tình huống xin nghỉ học):
* **Prompt:** `"Chiều nay em bị sốt không đi học thực hành AI Agent được, nhắn thầy giúp em"`
* **Trạng thái skill:** **Đã kích hoạt `email-giang-vien`** (dù prompt chỉ dùng từ *"nhắn thầy"*).
* **Kết quả khi có skill:**
  * **Tiêu đề (Subject):** `[Kỹ thuật AI Agent - Lớp ...] Nguyễn Tuấn Khang - 077206003397 - Xin phép vắng mặt buổi thực hành ngày ...`
  * **Nội dung:** Đầy đủ lời chào kính trọng, giới thiệu họ tên (`Nguyễn Tuấn Khang`), MSSV (`077206003397`), lớp học phần, lý do sốt cao đột ngột kèm ảnh chụp giấy tờ khám bệnh của bệnh viện để chứng minh, cam kết tự xem lại tài liệu và làm bài tập thực hành đúng hạn, kèm chữ ký chuẩn sinh viên UTH (`khangnt3397@ut.edu.vn`).

### Lần chạy 2 (tình huống xin gia hạn nộp bài):
* **Prompt:** `"Đồ án Lập trình di động UniShare còn phần kết nối API chưa kịp xong, xin cô cho nộp trễ 2 ngày"`
* **Trạng thái skill:** **Đã kích hoạt `email-giang-vien`** (dù prompt chỉ dùng từ *"xin cô cho nộp trễ"*).
* **Kết quả khi có skill:**
  * **Tiêu đề (Subject):** `[Lập trình di động - Lớp ...] Nguyễn Tuấn Khang - 077206003397 - Xin phép gia hạn nộp đồ án UniShare`
  * **Nội dung:** Nêu rõ tiến độ hiện tại đã hoàn thành phần giao diện và kiến trúc chính, lý do phần kết nối API cần thêm thời gian kiểm thử lỗi, đề xuất mốc thời gian nộp mới cụ thể (sau 2 ngày), đính kèm bản tiến độ hiện tại và chữ ký sinh viên đầy đủ.

### Lần chạy 3 (tình huống hỏi bài):
* **Prompt:** `"Hỏi thầy chỗ viết description cho SKILL.md sao cho hai skill không bị đè nhau"`
* **Trạng thái skill:** **Đã kích hoạt `email-giang-vien`** (dù prompt chỉ dùng từ *"Hỏi thầy"*).
* **Kết quả khi có skill:**
  * **Tiêu đề (Subject):** `[Kỹ thuật AI Agent - Lớp ...] Nguyễn Tuấn Khang - 077206003397 - Thắc mắc về cách thiết kế description chống xung đột giữa các skill`
  * **Nội dung:** Trình bày rõ vấn đề đang gặp khi thực hành Bài 00, nêu những gì đã tự thử nghiệm (đặt quy tắc `Không dùng khi...`), đặt câu hỏi trọng tâm ngắn gọn để thầy dễ phản hồi, kèm lời cảm ơn và thông tin MSSV ở chữ ký.

---

## 2. Bảng so sánh khi không có skill và khi có skill `email-giang-vien`

| Tiêu chí so sánh | Khi không có skill `email-giang-vien` | Khi có skill `email-giang-vien` |
| :--- | :--- | :--- |
| **Khi người dùng không nhắc chữ "email"** (VD: *"nhắn thầy..."*, *"xin cô dời hạn..."*) | AI thường viết một đoạn tin nhắn chat ngắn kiểu Zalo/Messenger suồng sã, không có tiêu đề (Subject). | Tự động nhận diện ngữ cảnh giao tiếp với giảng viên và soạn email chuẩn mực có đầy đủ **Subject** và **Body**. |
| **Tiêu đề (Subject line)** | Chung chung (VD: *"Xin nghỉ học"*, *"Xin nộp bài trễ"*) khiến giảng viên không biết sinh viên lớp nào. | Chuẩn công thức: `[Tên môn học - Mã lớp] Nguyễn Tuấn Khang - 077206003397 - Vấn đề cụ thể`. |
| **Thông tin định danh (MSSV, lớp, trường)** | Thường xuyên bỏ sót MSSV, tên môn học hoặc tên trường, phải nhắc AI sửa lại nhiều lần. | Luôn tự động đưa đầy đủ **Họ tên, MSSV (`077206003397`), lớp, Trường ĐH GTVT TP.HCM (UTH), email (`khangnt3397@ut.edu.vn`)**. |
| **Cấu trúc lập luận (xin gia hạn / hỏi bài)** | Xin gia hạn chỉ nêu lý do chung chung; hỏi bài hỏi trống không. | Xin gia hạn luôn kèm **% tiến độ đã làm được và mốc thời gian mới đề xuất**; hỏi bài luôn kèm **những gì đã tự tìm hiểu trước khi hỏi**. |
