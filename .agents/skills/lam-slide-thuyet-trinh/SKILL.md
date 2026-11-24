---
name: lam-slide-thuyet-trinh
description: >-
  Thiết kế dàn ý và soạn nội dung chi tiết từng trang slide thuyết trình dùng
  được cho nhiều môn học ở đại học. Kích hoạt skill này khi người dùng muốn làm
  slide, tạo bài thuyết trình, chuẩn bị deck báo cáo đồ án, tiểu luận hoặc trình
  bày nhóm trên lớp (ví dụ: "làm slide thuyết trình môn...", "soạn bài trình
  chiếu 10 phút về...", "lập dàn ý slide báo cáo đồ án"). Không kích hoạt khi
  người dùng chỉ hỏi khái niệm lý thuyết đơn thuần, nhờ viết code, viết báo cáo
  Word dài, viết đơn xin nghỉ học (don-xin-nghi-hoc) hoặc viết email gửi giảng
  viên (email-giang-vien).
---

# Skill: Làm slide thuyết trình đa môn học (`lam-slide-thuyet-trinh`)

Skill này hỗ trợ sinh viên xây dựng bộ slide thuyết trình chuyên nghiệp, súc tích, dễ theo dõi và tương thích với nhiều môn học khác nhau (từ các môn Công nghệ thông tin như *Kỹ thuật AI Agent*, *Lập trình di động*, *Công nghệ phần mềm* đến các môn đại cương, kinh tế, kỹ năng mềm).

---

## 1. Khi nào sử dụng và ranh giới chống xung đột

* **Nên dùng:**
  * Người dùng yêu cầu làm slide thuyết trình, soạn nội dung slide, chuẩn bị bài trình chiếu PowerPoint/Canva/Google Slides cho một đề tài hoặc môn học.
  * Người dùng nhờ lập dàn ý báo cáo thuyết trình theo thời lượng (ví dụ: thuyết trình 10 phút, 15 phút, 7 slide, 10 slide).
* **Không được dùng:**
  * Khi người dùng chỉ hỏi kiến thức thông thường (*"AI Agent là gì?"*, *"Giải thích thuật toán Dijkstra"* mà không yêu cầu làm slide hay thuyết trình).
  * Khi người dùng nhờ viết bài luận văn hoặc báo cáo Word chi tiết nhiều trang.
  * Khi người dùng nhờ viết đơn xin nghỉ học (`don-xin-nghi-hoc`) hoặc viết email gửi thầy cô (`email-giang-vien`).

---

## 2. Quy trình 3 bước bắt buộc

Khi skill được kích hoạt, Agent phải tuân thủ đúng 3 bước sau:

### Bước 1: Hỏi đề tài, môn học và thời lượng (nếu chưa đủ thông tin)
* Kiểm tra xem người dùng đã cho biết:
  1. **Đề tài thuyết trình và tên môn học** là gì?
  2. **Thời lượng thuyết trình** (bao nhiêu phút) hoặc **số lượng slide mong muốn** là bao nhiêu?
* *Quy tắc linh hoạt:*
  * Nếu người dùng chưa nêu rõ thời lượng hoặc số slide, hãy **hỏi ngắn gọn đề tài và thời lượng**, đồng thời đề xuất ngay một **dàn ý mẫu tiêu chuẩn (8 - 10 slide cho 10 - 12 phút)** để người dùng có thể duyệt hoặc điều chỉnh ngay mà không mất thời gian chờ đợi.
  * Nếu người dùng đã cung cấp đủ đề tài và thời lượng (hoặc yêu cầu làm trọn gói), chuyển thẳng sang Bước 2 và Bước 3.

### Bước 2: Lập dàn ý tổng thể
Tính toán số lượng slide dựa trên thời lượng theo công thức chuẩn: **1 slide khoảng 1 đến 1.5 phút trình bày**.
Sử dụng khung dàn ý mẫu 5 phần (xem chi tiết tại [quy-tac-trinh-bay-va-dan-y-mau.md](./references/quy-tac-trinh-bay-va-dan-y-mau.md)):
1. **Mở đầu (1 - 2 slide):** Trang bìa (Tên đề tài, môn học, nhóm/sinh viên thực hiện: VD *Nguyễn Tuấn Khang - 077206003397*) và đặt vấn đề thu hút kèm mục lục.
2. **Cơ sở lý thuyết / bối cảnh (1 - 2 slide):** Khái niệm cốt lõi, bài toán thực tế cần giải quyết.
3. **Nội dung trọng tâm / giải pháp / kiến trúc (3 - 5 slide):** Phân tích sâu, sơ đồ quy trình, so sánh hoặc kiến trúc hệ thống.
4. **Thực nghiệm / demo / ví dụ thực tế (1 - 2 slide):** Minh họa ứng dụng thực tế, số liệu hoặc kết quả chạy thử.
5. **Tổng kết và thảo luận hỏi đáp (1 - 2 slide):** Tóm tắt 3 ý quan trọng nhất và lời cảm ơn.

### Bước 3: Viết chi tiết từng slide theo quy tắc trình bày
Với mỗi slide, trình bày rõ ràng theo định dạng:

```markdown
### Slide [Số thứ tự]: [Tiêu đề ngắn gọn, mang tính thông điệp - tối đa 8 từ]
- **Nội dung trên slide (tối đa 3 - 5 ý, mỗi ý không quá 12 từ):**
  - Ý chính 1: Từ khóa in đậm và nội dung cô đọng
  - Ý chính 2: Từ khóa in đậm và số liệu/ý nghĩa
  - Ý chính 3: Từ khóa in đậm và kết luận ngắn
- **Gợi ý hình ảnh minh họa:** [Mô tả biểu đồ, sơ đồ khối, bảng so sánh hoặc hình ảnh nên đặt trên slide]
- **Lời dẫn thuyết trình:** "[1 - 2 câu gợi ý cách nói tự nhiên khi trình bày slide này trước lớp]"
```

---

## 3. Quy tắc trình bày slide bắt buộc

1. **Quy tắc 5x12 (chống "slide toàn chữ"):** Mỗi slide không quá **5 gạch đầu dòng**, mỗi gạch đầu dòng không quá **12 từ**. Tuyệt đối không chép nguyên đoạn văn dài lên slide.
2. **Tiêu đề mang thông điệp:** Thay vì đặt tiêu đề chung chung như *"Số liệu thống kê"*, hãy đặt tiêu đề nêu bật ý chính như *"Tỷ lệ tự động hóa tăng 65% nhờ AI Agent"*.
3. **Luôn có gợi ý hình ảnh hoặc sơ đồ:** Mọi slide nội dung đều phải đi kèm gợi ý minh họa (sơ đồ Mermaid, bảng so sánh 2 cột, biểu đồ hoặc ảnh chụp demo).
4. **Tương thích đa môn học:**
   * Với **môn kỹ thuật và công nghệ thông tin** (như *Kỹ thuật AI Agent*, *Lập trình di động*): Ưu tiên sơ đồ kiến trúc, luồng hoạt động, đoạn mã ngắn (không quá 8 dòng) và kết quả demo.
   * Với **môn lý luận, kinh tế, kỹ năng và đại cương**: Ưu tiên bối cảnh lịch sử hoặc thực tiễn, bảng so sánh quan điểm, số liệu dẫn chứng và bài học vận dụng thực tế.
