# finalproject-n2_2_7_webbangiay
finalproject-n2_2_7_webbangiay created by GitHub Classroom
Nhóm : N27
Thành viên:
1. Vũ Hồng Anh - B15DCCN047
2. Mai Thành Công -  B15DCCN076

Nội dung
1. a. Xây dựng web bán hàng với các chức năng dựa trên thực tế
   b. Đạt được một số yêu cầu cơ bản của web bán hàng thực tế và yêu cầu của giảng viên
   c. Hạn chế là web còn 1 số nhược điểm vẫn chưa được khắc phục
2. Phân công công việc

STT        Họ tên          Các nội dung thực hiện                                              Đánh giá
1       Vũ Hồng Anh    Các phần liên quan đến back-end logic của trang web                     80% hoàn thành
2     Mai Thành Công   Các nội dung liên quan đến thiết kế cơ sở dữ liệu cho trang web         80% hoàn thành

Các bạn cùng đóng góp ý kiến đưa ra các giải pháp cho các yêu cầu đề ra của trang web.    

3. Quá trình thực hiện
Phiên bản   Chức năng                                                                             Kỹ thuật/nội dung lý thuyết đã ứng dụng                                                                                    Thời gian         Vấn đề gặp phải hình thức xử lí             
1.          Kích thước menu và phần hiển thị sản phẩm thay đổi theo kích thước màn hình           Sử dụng các thẻ ngữ nghĩa,các kiến thức cơ bản về CSS                                                                      2 tuần            Pro: Căn chỉnh kích thước của các menu, khoảng cách giữa các menu theo sự điều chỉnh của kích thước của màn hình
            (flex box, transition,...), có sử dụng bootstrap 4                                    Sol: Sử dụng flexbox của bootstrap , media screen để chỉnh cho phù hơp. Tượng tự với phần hiển thị sản phẩm bên dưới
	    	 
	    Tiêu đề đại diện trang thay đổi theo yêu cầu                                          Hàm xử lí sự kiện khi click thì display none, khi sự kiện kéo chuột lên thì display: block                        
2.          Không cần đăng nhập vẫn có thể lưu giỏ hàng                                           Sử dụng localstorage trên trình duyệt                                                                                       2 tuần            
            Tải dữ liệu từ file json 
	    Cho phép lọc ở json 1 vài tiêu chí                                                    Sử dụng ajax để lấy dữ liệu từ file json

3           Bán hàng cho phép chọn giày theo size, theo hãng, theo màu sắc                        Sử dụng các kiến thức liên quan đến jsp, servlet và javacore, các api là việc với excel                                      2 tuần           Chưa hoàn thiện chức năng so sánh 2 sản phẩm
            Giỏ hàng thanh toán và in hóa đơn, cho phép người dùng gửi thông báo qua mai
	    Cho phép so sánh 2 sản phẩm theo các tiêu chí, màu sắc, kích cỡ, thương hiệu
            Báo cáo thống kế top các sản phẩm bán chạy theo tuần, theo tháng , xuất ra file
            top 10     
