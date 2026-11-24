---
name: email-giang-vien
description: >-
  Soạn thảo nội dung gửi giảng viên (thầy/cô) ở bậc đại học cho 3 tình huống:
  xin nghỉ buổi học, xin gia hạn nộp bài (dời deadline bài tập/đồ án), và hỏi
  bài hoặc nhờ giải đáp thắc mắc học thuật. Kích hoạt skill này ngay cả khi
  người dùng không nhắc tới chữ "email", ví dụ: "nhắn thầy xin nộp trễ bài tập",
  "xin cô dời hạn đồ án", "hỏi thầy chỗ chưa hiểu trong bài giảng", "báo cô
  chiều nay em vắng", "thầy ơi cho em hỏi về đề tài". Không dùng khi người dùng
  yêu cầu viết "Đơn" hành chính có Quốc hiệu Tiêu ngữ (dùng don-xin-nghi-hoc)
  hoặc làm slide thuyết trình (dùng lam-slide-thuyet-trinh).
---

# Skill: Viết email gửi giảng viên (`email-giang-vien`)

Skill này giúp sinh viên soạn thảo thư điện tử / tin nhắn học thuật gửi giảng viên (thầy/cô) đúng chuẩn mực giao tiếp đại học: có tiêu đề (Subject) rõ ràng, đầy đủ **Họ tên, MSSV, Lớp/Môn học, Lý do/Nội dung cụ thể**, văn phong lễ phép, ngắn gọn và đi thẳng vào trọng tâm.

---

## 1. Khi nào sử dụng và ranh giới chống xung đột

* **Nên dùng (kể cả khi người dùng không nhắc chữ "email"):**
  1. **Xin nghỉ / báo vắng tới giảng viên:** *"nhắn cô chiều nay em nghỉ"*, *"gửi thầy xin phép vắng buổi thực hành"*.
  2. **Xin gia hạn nộp bài (deadline):** *"xin thầy dời hạn nộp bài tập lớn"*, *"xin cô cho nộp trễ đồ án 2 ngày"*, *"em chưa kịp xong bài tập, nhắn thầy sao giờ"*.
  3. **Hỏi bài / trao đổi đồ án:** *"hỏi thầy về lỗi trong bài tập"*, *"nhờ cô giải thích lại phần slide hôm qua"*, *"hỏi giảng viên về yêu cầu đồ án môn học"*.
* **Không được dùng:**
  * Khi người dùng yêu cầu viết **"Đơn xin nghỉ học"** theo mẫu văn bản hành chính có Quốc hiệu, Tiêu ngữ, chữ ký -> Dùng skill `don-xin-nghi-hoc`.
  * Khi người dùng yêu cầu lập dàn ý hay viết nội dung slide thuyết trình -> Dùng skill `lam-slide-thuyet-trinh`.

---

## 2. Thông tin bắt buộc phải có trong mọi email gửi thầy/cô

Mỗi email tạo ra **bắt buộc** phải đảm bảo 4 nhóm thông tin cốt lõi:
1. **Mã số sinh viên (MSSV)** và **Họ tên** (Ví dụ: `Nguyễn Tuấn Khang - MSSV: 077206003397`, Email: `khangnt3397@ut.edu.vn`; nếu thiếu thông tin lớp/môn thì để `[Mã lớp]` / `[Tên môn học]`).
2. **Lớp học phần và tên môn học** (Ví dụ: *Kỹ thuật AI Agent*, *Lập trình di động*, v.v.).
3. **Lý do cụ thể / câu hỏi cụ thể** (Trình bày trung thực, ngắn gọn, có kèm phương án khắc phục hoặc những gì đã tự tìm hiểu trước khi hỏi).
4. **Tiêu đề (Subject) chuẩn quy tắc:**
   `[Tên môn học - Mã lớp] Họ và tên - MSSV - Vấn đề cần trao đổi`

---

## 3. Ba mẫu email chuẩn theo tình huống

### Tình huống 1: Xin nghỉ buổi học
```markdown
**Tiêu đề (Subject):** [Tên môn học - Mã lớp] Nguyễn Tuấn Khang - 077206003397 - Xin phép vắng mặt buổi học ngày [dd/mm/yyyy]

**Nội dung:**
Kính gửi Thầy/Cô [Tên giảng viên],

Em là Nguyễn Tuấn Khang, mã số sinh viên 077206003397, sinh viên lớp [Mã lớp] môn [Tên môn học] do Thầy/Cô phụ trách vào [Buổi/Thứ].

Em viết thư này kính xin phép Thầy/Cô cho em được vắng mặt trong buổi học ngày [dd/mm/yyyy].
- **Lý do:** [Nêu rõ lý do ngắn gọn, chính đáng: VD bị sốt cao / có lịch khám bệnh / việc gia đình đột xuất].
- **Minh chứng đính kèm (nếu nghỉ bệnh):** [Em có chụp và đính kèm ảnh giấy tờ khám bệnh / đơn thuốc của bệnh viện để chứng minh, hoặc xin phép gửi bổ sung ảnh chụp giấy khám bệnh ngay sau khi khám xong].

Em xin cam kết sẽ chủ động xem lại tài liệu, mượn bài ghi chép của các bạn trong lớp và hoàn thành đầy đủ bài tập của buổi học đúng hạn.

Em cảm ơn Thầy/Cô đã xem xét và tạo điều kiện giúp em. Kính chúc Thầy/Cô nhiều sức khỏe!

Trân trọng,
Nguyễn Tuấn Khang
MSSV: 077206003397
Lớp: [Mã lớp] - Trường ĐH Giao thông Vận tải TP.HCM (UTH)
Email: khangnt3397@ut.edu.vn
```

### Tình huống 2: Xin gia hạn nộp bài (xin dời deadline)
```markdown
**Tiêu đề (Subject):** [Tên môn học - Mã lớp] Nguyễn Tuấn Khang - 077206003397 - Xin phép gia hạn nộp [Tên bài tập/Đồ án]

**Nội dung:**
Kính gửi Thầy/Cô [Tên giảng viên],

Em là Nguyễn Tuấn Khang (MSSV: 077206003397), sinh viên lớp [Mã lớp] môn [Tên môn học].

Theo lịch của lớp, hạn nộp [Tên bài tập/Đồ án] là vào [Thời gian deadline gốc]. Hiện tại em đã hoàn thành được khoảng [X%] khối lượng công việc (gồm [các phần đã làm xong]). Tuy nhiên, do [Lý do chính đáng và trung thực], em chưa thể hoàn thiện phần cuối cùng kịp thời gian quy định.

Em kính mong Thầy/Cô xem xét cho phép em được gia hạn thời gian nộp bài đến **[Giờ, Ngày/Tháng/Năm đề xuất cụ thể]** để em có thể hoàn thiện bài làm với chất lượng tốt nhất. Em đã đính kèm bản tiến độ hiện tại trong email này để Thầy/Cô tiện theo dõi.

Em rất mong nhận được sự thông cảm và chấp thuận của Thầy/Cô. Em xin chân thành cảm ơn!

Trân trọng,
Nguyễn Tuấn Khang
MSSV: 077206003397
Lớp: [Mã lớp] - Trường ĐH Giao thông Vận tải TP.HCM (UTH)
Email: khangnt3397@ut.edu.vn
```

### Tình huống 3: Hỏi bài / nhờ giải đáp thắc mắc học thuật
```markdown
**Tiêu đề (Subject):** [Tên môn học - Mã lớp] Nguyễn Tuấn Khang - 077206003397 - Thắc mắc về [Chủ đề/Bài tập cụ thể]

**Nội dung:**
Kính gửi Thầy/Cô [Tên giảng viên],

Em là Nguyễn Tuấn Khang (MSSV: 077206003397), sinh viên lớp [Mã lớp] môn [Tên môn học].

Trong quá trình ôn tập và thực hành phần [Tên bài học / Bài tập / Đồ án], em có gặp một vấn đề chưa rõ như sau:
- **Vấn đề gặp phải:** [Mô tả ngắn gọn câu hỏi hoặc lỗi đang gặp].
- **Những gì em đã thử tìm hiểu:** [Nêu rõ em đã đọc tài liệu trang nào, thử cách nào nhưng kết quả ra sao - thể hiện tinh thần tự học trước khi hỏi].
- **Câu hỏi cụ thể:** Em muốn xin Thầy/Cô gợi ý hoặc giải thích giúp em [Câu hỏi trọng tâm] ạ.

Khi nào Thầy/Cô có thời gian thuận tiện, kính mong Thầy/Cô giải đáp giúp em. Em xin chân thành cảm ơn Thầy/Cô!

Trân trọng,
Nguyễn Tuấn Khang
MSSV: 077206003397
Lớp: [Mã lớp] - Trường ĐH Giao thông Vận tải TP.HCM (UTH)
Email: khangnt3397@ut.edu.vn
```

---

## 4. Quy tắc kiểm tra trước khi xuất kết quả
- [x] Đã có dòng **Tiêu đề (Subject)** chuẩn cấu trúc `[Môn - Lớp] Họ tên - MSSV - Nội dung` chưa?
- [x] Đã có đủ 3 thông tin bắt buộc: **MSSV**, **Lớp**, **Lý do / nội dung đã tìm hiểu** chưa?
- [x] Giọng văn có lễ phép, khiêm tốn, rõ ràng và có chữ ký cuối thư không?
