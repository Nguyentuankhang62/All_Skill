# Bài tập 2: Bảng 10 câu hỏi thử và bộ slide mẫu làm bằng skill `lam-slide-thuyet-trinh` (Slide 33)

Tài liệu này bao gồm:
1. **Bảng kết quả 10 câu hỏi thử** (5 câu nên gọi skill, 5 câu không nên gọi skill).
2. **Một bộ slide hoàn chỉnh** được tạo bởi skill `lam-slide-thuyet-trinh` (Môn 1: *Kỹ thuật AI Agent*).
3. **Ứng dụng làm slide cho một môn học khác** (Môn 2: *Lập trình thiết bị di động - Dự án SmartHeritage*) và **ghi chú những chỗ cần sửa**.

---

## Phần 1: Bảng kết quả 10 câu hỏi thử (5 câu nên gọi - 5 câu không nên gọi)

| STT | Câu hỏi thử (Prompt) | Kỳ vọng | Kết quả thực tế của Agent | Đánh giá |
| :-: | :--- | :---: | :---: | :---: |
| **1** | `"Làm giúp mình bộ slide thuyết trình 10 phút về Agent Skills trong môn Kỹ thuật AI Agent"` | **Nên gọi** | **Có gọi** `lam-slide-thuyet-trinh` | Đúng |
| **2** | `"Lập dàn ý bài trình chiếu 8 trang báo cáo đồ án ứng dụng di động SmartHeritage"` | **Nên gọi** | **Có gọi** `lam-slide-thuyet-trinh` | Đúng |
| **3** | `"Thứ Sáu này nhóm mình phải lên bảng trình bày 15 phút về chủ đề An toàn thông tin, soạn nội dung từng trang chiếu giúp mình"` | **Nên gọi** | **Có gọi** `lam-slide-thuyet-trinh` (Nhận diện ngữ cảnh trình bày trên lớp và từng trang chiếu dù không có từ "slide") | Đúng |
| **4** | `"Thiết kế nội dung deck báo cáo giữa kỳ môn Công nghệ phần mềm cho dự án UniShare"` | **Nên gọi** | **Có gọi** `lam-slide-thuyet-trinh` | Đúng |
| **5** | `"Soạn slide môn Triết học Mác - Lênin chủ đề Quy luật lượng - chất trong 7 phút"` | **Nên gọi** | **Có gọi** `lam-slide-thuyet-trinh` | Đúng |
| **6** | `"Giải thích cho mình hiểu Agent Skills là gì và tại sao nó tiết kiệm token?"` | **Không nên** | **Không gọi** (Chỉ hỏi lý thuyết đơn thuần, không yêu cầu làm slide hay thuyết trình) | Đúng |
| **7** | `"Viết đoạn code Python kết nối Gemini API để tóm tắt văn bản"` | **Không nên** | **Không gọi** (Yêu cầu viết code lập trình) | Đúng |
| **8** | `"Mai em bị sốt cao không đi học thuyết trình được, viết đơn xin phép nghỉ học giúp em"` | **Không nên** | **Không gọi** `lam-slide-thuyet-trinh` (Chuyển sang gọi `don-xin-nghi-hoc` vì trọng tâm là viết đơn xin nghỉ) | Đúng |
| **9** | `"Nhắn cô xin dời lịch nộp bài thuyết trình sang tuần sau vì nhóm chưa ghép bài xong"` | **Không nên** | **Không gọi** `lam-slide-thuyet-trinh` (Chuyển sang gọi `email-giang-vien` vì trọng tâm là xin gia hạn với giảng viên) | Đúng |
| **10** | `"Viết bài tiểu luận Word dài 3000 từ phân tích xu hướng trí tuệ nhân tạo năm 2026"` | **Không nên** | **Không gọi** (Yêu cầu viết bài luận văn bản dài, không phải slide) | Đúng |

---

## Phần 2: Bộ slide mẫu hoàn chỉnh (Môn 1: Kỹ thuật AI Agent)

* **Đề tài:** Kiến trúc Agent Skills và cơ chế Progressive Disclosure
* **Môn học:** Kỹ thuật AI Agent - Trường Đại học Giao thông Vận tải TP.HCM (UTH)
* **Thời lượng:** 10 phút (8 slides)
* **Sinh viên thực hiện:** Nguyễn Tuấn Khang - MSSV: `077206003397`

### Dàn ý tổng thể (8 slides - 10 phút)
1. **Slide 1:** Trang bìa - Agent Skills: Đóng gói tri thức và tự động hóa quy trình cho AI Agent (0.5 phút)
2. **Slide 2:** Bài toán thực tế - Tại sao prompt thông thường thất bại khi mở rộng? (1.5 phút)
3. **Slide 3:** Agent Skills là gì? Cấu trúc chuẩn của một thư mục skill (1.5 phút)
4. **Slide 4:** Cơ chế Progressive Disclosure - Bí quyết tiết kiệm 90% bộ nhớ ngữ cảnh (1.5 phút)
5. **Slide 5:** Giải phẫu file `SKILL.md` - Vai trò quyết định của `description` (1.5 phút)
6. **Slide 6:** Kiến trúc chống xung đột khi cài đặt nhiều skill toàn cục (1.5 phút)
7. **Slide 7:** Demo thực tế - Hệ sinh thái 3 skills phục vụ học tập tại UTH (1 phút)
8. **Slide 8:** Tổng kết và thảo luận hỏi đáp (1 phút)

---

### Nội dung chi tiết từng slide

#### Slide 1: Agent Skills - Chuẩn hóa tri thức cho AI Agent
- **Nội dung trên slide:**
  - **Môn học:** Kỹ thuật AI Agent (Bài 00)
  - **Sinh viên thực hiện:** Nguyễn Tuấn Khang - MSSV: `077206003397`
  - **Đơn vị:** Khoa CNTT - Trường ĐH Giao thông Vận tải TP.HCM (UTH)
- **Gợi ý hình ảnh minh họa:** Logo UTH ở góc trái, sơ đồ icon AI Agent kết nối với các khối module skill ở trung tâm.
- **Lời dẫn thuyết trình:** "Xin chào thầy/cô và các bạn. Hôm nay mình sẽ trình bày về Agent Skills - giải pháp giúp AI Agent làm việc đúng quy chuẩn mà không cần lặp lại prompt."

#### Slide 2: Prompt dài gây nhiễu và lãng phí ngữ cảnh
- **Nội dung trên slide:**
  - **Lặp lại thủ công:** Phải sao chép quy tắc mỗi lần mở đoạn chat mới
  - **Tràn bộ nhớ:** Nhồi mọi thứ vào 1 file làm AI giảm độ chính xác
  - **Xung đột quy tắc:** Quy tắc viết đơn, viết mail, viết code bị trộn lẫn
  - **Khó chia sẻ:** Không thể đóng gói quy trình chuẩn cho cả nhóm cùng dùng
- **Gợi ý hình ảnh minh họa:** Hình so sánh 2 bên: Bên trái là một file prompt khổng lồ rối rắm (đỏ) đối chiếu với bên phải là các hộp skill ngăn nắp (xanh).
- **Lời dẫn thuyết trình:** "Khi làm việc thực tế, nếu ta nhồi mọi hướng dẫn vào một prompt duy nhất, AI vừa tốn token vừa dễ râu ông nọ cắm cằm bà kia."

#### Slide 3: Mỗi Agent Skill là một thư mục tri thức độc lập
- **Nội dung trên slide:**
  - **`SKILL.md` (bắt buộc):** Chứa định danh YAML (`name`, `description`) và quy trình
  - **`scripts/` (tùy chọn):** Code thực thi tự động hóa tác vụ
  - **`references/` (tùy chọn):** Tài liệu quy định, hướng dẫn chi tiết
  - **`assets/` và `examples/`:** Mẫu biểu chuẩn và dữ liệu kiểm thử
- **Gợi ý hình ảnh minh họa:** Cây thư mục `my-skill/` trực quan giống Slide 19 của bài giảng.
- **Lời dẫn thuyết trình:** "Cấu trúc một skill cực kỳ đơn giản: mỗi skill là một thư mục riêng, trong đó chỉ bắt buộc duy nhất file `SKILL.md`."

#### Slide 4: Progressive Disclosure giúp tiết kiệm 90% token
- **Nội dung trên slide:**
  - **Cấp độ 1 (luôn nạp):** Chỉ nạp `name` và `description` (khoảng 50 từ mỗi skill)
  - **Cấp độ 2 (khi khớp yêu cầu):** Agent mới đọc toàn bộ file `SKILL.md`
  - **Cấp độ 3 (khi cần tra cứu sâu):** Chỉ đọc `references/` hoặc chạy `scripts/` khi được gọi
- **Gợi ý hình ảnh minh họa:** Sơ đồ phễu 3 tầng (Metadata -> `SKILL.md` -> `references/` và `scripts/`).
- **Lời dẫn thuyết trình:** "Điểm thông minh nhất của Agent Skills là cơ chế tiết lộ lũy tiến: bình thường AI chỉ giữ phần mô tả ngắn, khi nào đúng việc mới mở cẩm nang ra đọc."

#### Slide 5: `description` là "bộ định tuyến" quyết định đúng hoặc sai
- **Nội dung trên slide:**
  - **Nêu rõ làm gì:** Chức năng cốt lõi của skill trong 1 câu đầu
  - **Nêu rõ khi nào dùng:** Kể cả các câu nói tự nhiên không chứa từ khóa
  - **Nêu rõ khi nào không dùng:** Chặn kích hoạt nhầm sang tác vụ khác
- **Gợi ý hình ảnh minh họa:** Đoạn code YAML frontmatter có tô sáng 3 màu cho 3 phần: *Chức năng*, *Khi nào kích hoạt*, và *Khi nào từ chối*.
- **Lời dẫn thuyết trình:** "AI có chọn đúng skill hay không phụ thuộc 90% vào trường `description` ở đầu file `SKILL.md`."

#### Slide 6: Tách biệt từng skill để triệt tiêu xung đột
- **Nội dung trên slide:**
  - **Nguyên tắc đơn trách nhiệm:** Mỗi skill chỉ giải quyết 1 nghiệp vụ rõ ràng
  - **`don-xin-nghi-hoc`:** Văn bản hành chính có Quốc hiệu, Tiêu ngữ, chữ ký
  - **`email-giang-vien`:** Thư điện tử có Subject, MSSV, xin nghỉ, gia hạn và hỏi bài
  - **`lam-slide-thuyet-trinh`:** Quy trình 3 bước lập dàn ý và soạn từng trang chiếu
- **Gợi ý hình ảnh minh họa:** Sơ đồ luồng: Câu hỏi người dùng -> Bộ phân loại `description` -> Rẽ nhánh chính xác vào 1 trong 3 skill.
- **Lời dẫn thuyết trình:** "Nhờ định nghĩa ranh giới rõ ràng trong `description`, 3 skill học tập được cài cùng lúc nhưng không bao giờ giẫm chân lên nhau."

#### Slide 7: Cài đặt toàn cục và chia sẻ lên GitHub
- **Nội dung trên slide:**
  - **Cài đặt cục bộ:** `.agents/skills/` hoặc `.claude/skills/` trong dự án
  - **Cài đặt toàn cục:** `~/.gemini/config/skills/` dùng cho mọi dự án trên máy
  - **Chia sẻ cộng đồng:** Đẩy lên GitHub kèm script cài đặt tự động 1 dòng lệnh
- **Gợi ý hình ảnh minh họa:** Ảnh chụp màn hình repo GitHub `Nguyentuankhang62` và lệnh chạy `install-skills.ps1`.
- **Lời dẫn thuyết trình:** "Sau khi kiểm thử, bộ skill được cài toàn cục trên máy để dùng ở bất kỳ thư mục nào và public lên GitHub để các bạn cùng lớp tải về dùng ngay."

#### Slide 8: Tổng kết và thảo luận hỏi đáp
- **Nội dung trên slide:**
  - **Đóng gói quy trình:** Biến kiến thức lặp lại thành tài sản tái sử dụng
  - **Tối ưu ngữ cảnh:** Progressive Disclosure giúp AI nhanh và chính xác hơn
  - **Viết `description` tốt:** Luôn có điều kiện kích hoạt và điều kiện loại trừ
  - **Cảm ơn thầy/cô và các bạn! Mời câu hỏi thảo luận.**
- **Gợi ý hình ảnh minh họa:** 3 hộp thông điệp chính và mã QR dẫn tới GitHub repository chứa bộ 3 skills.
- **Lời dẫn thuyết trình:** "Tóm lại, Agent Skills giúp chúng ta chuẩn hóa giao tiếp với AI một cách chuyên nghiệp. Cảm ơn thầy cô và các bạn đã lắng nghe!"

---

## Phần 3: Dùng skill làm slide cho một môn học khác và ghi lại chỗ cần sửa (Yêu cầu 4 - Slide 33)

### 1. Áp dụng cho môn học thứ 2: *Lập trình thiết bị di động* (Đề tài: Dự án ứng dụng `SmartHeritage` / `UniShare` - Thời lượng 10 phút, 8 slides)
Khi gọi skill `lam-slide-thuyet-trinh` với câu lệnh:
> *"Làm slide thuyết trình 10 phút báo cáo đồ án môn Lập trình di động về ứng dụng du lịch di sản thông minh SmartHeritage"*

Skill tạo ra cấu trúc 8 slide:
- **Slide 1:** Trang bìa - Ứng dụng di động SmartHeritage (Nguyễn Tuấn Khang - `077206003397`)
- **Slide 2:** Thực trạng tra cứu thông tin di sản văn hóa và nhu cầu số hóa trên di động
- **Slide 3:** Khảo sát yêu cầu người dùng và các tính năng cốt lõi của SmartHeritage
- **Slide 4:** Kiến trúc hệ thống (Mobile App Client - REST API / Firebase - Cơ sở dữ liệu)
- **Slide 5:** Thiết kế giao diện UI/UX và luồng trải nghiệm người dùng
- **Slide 6:** Các công nghệ nổi bật (Định vị bản đồ, quét mã tra cứu thông minh, đa ngôn ngữ)
- **Slide 7:** Kết quả thực nghiệm và demo trực tiếp trên thiết bị di động
- **Slide 8:** Tổng kết, hạn chế và hướng phát triển tiếp theo

### 2. Ghi nhận những chỗ cần sửa trong skill để dùng tốt cho nhiều môn học khác nhau
Sau khi thử nghiệm trên cả môn lý thuyết và kỹ thuật mới (*Kỹ thuật AI Agent*), môn đồ án phần mềm (*Lập trình di động - SmartHeritage/UniShare*) và môn đại cương (*Triết học*), mình đã ghi nhận và **cập nhật trực tiếp vào `SKILL.md`** 3 điểm tinh chỉnh quan trọng:
1. **Sửa khung dàn ý bước 2 linh hoạt hơn:** Ban đầu dàn ý cố định chữ *"Kiến trúc hệ thống và demo phần mềm"*, khi áp dụng sang môn đại cương hoặc kinh tế sẽ không khớp. Đã sửa thành **`Nội dung trọng tâm / giải pháp / kiến trúc`** và **`Thực nghiệm / demo / ví dụ thực tế`** để môn nào cũng áp dụng tự nhiên.
2. **Bổ sung mục "Tương thích đa môn học" ở phần 3 của `SKILL.md`:** Tách rõ gợi ý minh họa cho 2 nhóm môn:
   - *Nhóm môn CNTT và kỹ thuật:* Ưu tiên sơ đồ kiến trúc, luồng dữ liệu, đoạn mã ngắn (không quá 8 dòng), ảnh chụp màn hình demo.
   - *Nhóm môn lý luận, kinh tế và đại cương:* Ưu tiên bối cảnh thực tiễn, bảng đối chiếu quan điểm, số liệu thống kê và bài học vận dụng.
3. **Bổ sung lời dẫn thuyết trình cho từng slide:** Giúp người thuyết trình không bị đọc chép nguyên văn chữ trên slide mà có sẵn lời dẫn tự nhiên phù hợp với văn phong từng môn học.
