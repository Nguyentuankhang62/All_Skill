---
name: don-xin-nghi-hoc
description: >-
  Soạn thảo đơn xin nghỉ học / đơn xin phép vắng mặt chính thức theo chuẩn thể
  thức văn bản hành chính dành cho sinh viên. Kích hoạt skill này khi người dùng
  muốn viết đơn xin nghỉ học, làm đơn xin phép vắng buổi học, hoặc nêu lý do
  vắng mặt trong buổi học sắp tới như "xin nghỉ học", "mai em bị sốt", "báo vắng
  thứ Năm", "làm đơn xin nghỉ phép môn...". Không kích hoạt skill này khi người
  dùng yêu cầu viết đơn xin việc, CV, đơn xin thực tập, hoặc khi người dùng muốn
  soạn email trao đổi, xin gia hạn nộp bài, hay hỏi bài giảng viên (thuộc skill
  email-giang-vien).
---

# Skill: Viết đơn xin nghỉ học (`don-xin-nghi-hoc`)

Skill này giúp sinh viên soạn thảo **Đơn xin nghỉ học (Đơn xin phép vắng học)** trang trọng, đúng chuẩn văn bản hành chính của các trường đại học tại Việt Nam (đặc biệt tối ưu cho sinh viên **Trường Đại học Giao thông Vận tải TP.HCM - UTH**).

---

## 1. Khi nào sử dụng và ranh giới chống xung đột

* **Nên dùng:**
  * Người dùng yêu cầu viết "đơn xin nghỉ học", "đơn xin phép nghỉ học".
  * Người dùng thông báo ngắn gọn tình trạng sức khỏe hoặc lý do không thể đi học trên lớp: *"xin nghỉ học"*, *"mai em bị sốt"*, *"báo vắng thứ Năm"*, *"tuần sau em bận việc gia đình không đi học được"*.
* **Không được dùng (tránh xung đột với các skill khác):**
  * **Đơn xin việc / CV / đơn xin thực tập / đơn phúc khảo:** Từ chối kích hoạt skill này và xử lý như yêu cầu viết văn bản thông thường.
  * **Email gửi giảng viên (`email-giang-vien`):** Nếu người dùng muốn viết email hỏi bài, xin gia hạn deadline, hoặc nhắn tin điện tử ngắn gọn gửi thầy cô -> Nhường cho skill `email-giang-vien`.
  * **Làm slide thuyết trình (`lam-slide-thuyet-trinh`):** Nhường cho skill `lam-slide-thuyet-trinh`.

---

## 2. Quy trình thực hiện từng bước

### Bước 1: Thu thập và kiểm tra thông tin
Kiểm tra xem người dùng đã cung cấp đủ các thông tin sau chưa:
1. **Họ và tên sinh viên** (Ví dụ: `Nguyễn Tuấn Khang`, hoặc giữ `[Họ và tên sinh viên]` nếu chưa cung cấp).
2. **Mã số sinh viên (MSSV)** (Ví dụ: `077206003397`, hoặc `[Mã số sinh viên]`).
3. **Lớp / Khoa / Trường** (Ví dụ mặc định: `Trường Đại học Giao thông Vận tải TP.HCM (UTH)`).
4. **Môn học và giảng viên giảng dạy** (Ví dụ: môn *Kỹ thuật AI Agent*, *Lập trình di động*, v.v.).
5. **Thời gian xin nghỉ** (Thứ, ngày/tháng/năm, ca/tiết học).
6. **Lý do xin nghỉ** (Ốm/sốt, lịch khám bệnh, việc gia đình đột xuất, trùng lịch công tác/thi cử...).
7. **Minh chứng đính kèm (nếu xin nghỉ bệnh):** Nếu nghỉ vì lý do sức khỏe hoặc đi khám bệnh, bổ sung mục đính kèm ảnh chụp giấy tờ khám bệnh, đơn thuốc hoặc giấy xác nhận của bệnh viện để chứng minh.

> **Lưu ý:** Nếu người dùng chỉ nói ngắn gọn như *"mai em bị sốt"* hoặc *"báo vắng thứ Năm"*, hãy **soạn ngay bản đơn hoàn chỉnh** dựa trên thông tin lý do/thời gian đã biết, tự động điền thông tin hồ sơ mặc định (hoặc đặt trong ngoặc vuông `[...]` những trường chưa biết) và hỏi nhẹ ở cuối xem người dùng có muốn điền cụ thể tên môn học và giảng viên không.

### Bước 2: Soạn thảo đơn theo chuẩn hành chính
Sử dụng đúng cấu trúc mẫu dưới đây (hoặc tham khảo file [mau-don-uth.md](./assets/mau-don-uth.md)):

```markdown
CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM
Độc lập - Tự do - Hạnh phúc
-----------------------------------

ĐƠN XIN PHÉP NGHỈ HỌC

Kính gửi: - Giảng viên bộ môn [Tên môn học]: Thầy/Cô [Tên giảng viên]
          - Khoa Công nghệ thông tin - Trường Đại học Giao thông Vận tải TP.HCM (UTH)

Em tên là: [Họ và tên, VD: Nguyễn Tuấn Khang]
Mã số sinh viên: [MSSV, VD: 077206003397]
Lớp: [Mã lớp]
Email liên hệ: [Email, VD: khangnt3397@ut.edu.vn]

Nay em làm đơn này kính xin Thầy/Cô cho phép em được nghỉ học môn [Tên môn học] vào:
- Thời gian: [Buổi/Tiết], Thứ [...], ngày [...] tháng [...] năm [...] (tức [Số buổi] buổi học).
- Lý do xin nghỉ: [Diễn đạt lý do lịch sự, rõ ràng và trung thực, ví dụ: Do em bị sốt cao đột ngột, cần nghỉ ngơi và đi khám theo chỉ định của bác sĩ nên không thể đảm bảo sức khỏe để đến lớp].
- Minh chứng đính kèm (nếu xin nghỉ bệnh): [Đính kèm ảnh chụp giấy tờ khám bệnh / đơn thuốc / giấy xác nhận của bệnh viện để chứng minh, hoặc cam kết gửi bổ sung ảnh chụp giấy khám bệnh ngay sau khi khám xong].

Em xin cam đoan:
1. Tự giác mượn vở, chép bài và nghiên cứu đầy đủ nội dung bài giảng của buổi học vắng mặt.
2. Hoàn thành và nộp đúng hạn mọi bài tập được giao trong buổi học.
3. Chấp hành đầy đủ quy chế chuyên cần của môn học và nhà trường.

Rất mong nhận được sự xem xét và tạo điều kiện của Thầy/Cô.
Em xin chân thành cảm ơn!

TP. Hồ Chí Minh, ngày [...] tháng [...] năm [...]
Người làm đơn
(Ký và ghi rõ họ tên)

[Họ và tên sinh viên]
```

### Bước 3: Kiểm tra chất lượng
Trước khi trả kết quả cho người dùng, tự kiểm tra:
- [x] Có đầy đủ Quốc hiệu, Tiêu ngữ?
- [x] Có mục `Kính gửi`, thông tin sinh viên (`Họ tên`, `MSSV`, `Lớp`)?
- [x] Lý do nghỉ được diễn đạt lịch sự, nghiêm túc, không dùng ngôn ngữ suồng sã?
- [x] Nếu xin nghỉ bệnh, đã có mục đính kèm ảnh chụp giấy tờ khám bệnh hoặc giấy xác nhận của bệnh viện để chứng minh chưa?
- [x] Có phần cam kết tự học bù và làm bài tập đầy đủ?
