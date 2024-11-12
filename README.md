# Tên Dự Án

**Mô tả ngắn gọn về dự án**: Dự án này là một ứng dụng quản lý đơn hàng cho cửa hàng bán giày thể thao. Người dùng có thể duyệt sản phẩm, thêm vào giỏ hàng, thanh toán và nhận hóa đơn. Nhân viên có thể thanh toán tại quầy và kiểm tra hóa đơn.Các quản trị viên có thể quản lý sản phẩm, đơn hàng và xuất hóa đơn.

## Công Cụ và Ngôn Ngữ Sử Dụng

- **Java**: Ngôn ngữ lập trình chính cho backend.
- **Spring Boot**: Framework chính để xây dựng ứng dụng web.
- **Thymeleaf**: Template engine sử dụng để hiển thị giao diện người dùng.
- **JPA (Java Persistence API)**: Dùng để xử lý dữ liệu với cơ sở dữ liệu.
- **Bootstrap**: Framework CSS để thiết kế giao diện web.
- **Mỉcosoft SQL Server**: Cơ sở dữ liệu lưu trữ thông tin người dùng và sản phẩm.
- **BCrypt**: Mã hóa mật khẩu ngưồ dùng.

  
### Phần Mềm

- **Java Deverlopment Kit 17 hoặc phiên bản cao hơn**
- **Spring Boot 3.2.x hoặc phiên bản cao hơn**
- **Microsoft SQL Server** (hoặc cơ sở dữ liệu quan hệ tương thích)
- **Maven** để quản lý phụ thuộc
- **IDE**: IntelliJ IDEA
- **Trình duyệt web**: Chrome, Firefox, Edge hoặc Safari

### Cấu Hình Dự Án

1. **Cài đặt Java**: Đảm bảo đã cài đặt Java Development Kit (JDK) 17 hoặc phiên bản mới hơn trên máy tính của mình.
2. Sử dụng database ở trên đã đươc cung cấp.
3. **Cài đặt SQL Server**: Cài đặt SQL Server và tạo cơ sở dữ liệu cho ứng dụng cấu hình `application.properties` . có thể tham khảo cấu hình của Spring Boot để kết nối tới cơ sở dữ liệu
```properties
spring.datasource.url=jdbc:sqlserver://localhost:1433;databaseName=<tên_database>;encrypt=true;trustServerCertificate=true;
spring.datasource.username=<tài_khoản>
spring.datasource.password=<mật_khẩu>
spring.datasource.driverClassName=com.microsoft.sqlserver.jdbc.SQLServerDriver
logging.level.org.hibernate.SQL=DEBUG
logging.level.org.hibernate.type.descriptor.sql.BasicBinder=TRACE
spring.jpa.hibernate.ddl-auto=none
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true
spring.jpa.hibernate.naming.physical-strategy=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl
```


### Lưu ý trước khi dùng
  1.  Tạo tài khoản 
-  với cơ sở dữ liệu thì có vài dữ liệu thêm làm ví dụ
-  nếu dự án chạy thành công, hãy truy cập vào đường dẫn này để tạo tài khoản có thể tạo với các vai trò khác nhau vì thông tin tài khoản mật khẩu dùng công cụ mã hóa BCrypt để mã hóa mật khẩu không thể tạo thủ công qua mã SQL.
  ```local
localhost:8080/register
```
-  dự án sử dung Spring Security nên làm vậy mới có thể truy cập được vào các trang quản lí,mua hàng tại quầy  /admin/**  ,/employee/**
-nếu thành công có thể truy cập login này
```loginadmin
localhost:8080:/login
```
-hệ thông sẽ tự nhận diện loại tài khoản nếu thông tin đăng nhập có vai trò là ADMIN thì sẽ truy cập trang admin/** , EMPLOYEE thì sẽ truy cập vào employee/**

2.  thanh toán
-  Áp dung cho thanh toán online ở trang giỏ hàng
-   tìm và chọn ngân hàng NCB như hình dưới
  ![image](https://github.com/user-attachments/assets/6994df7a-f7b5-43a9-a85a-c4a6b729f3eb)
-  nhập thông tin thẻ ngân hàng, hãy nhập thẻ này không nhập thẻ thật của mình
  ```paycard
    Ngân hàng:  NCB
    Số thẻ:  9704198526191432198
    Tên chủ thẻ:  NGUYEN VAN A
    Ngày phát hành:  07/15
    Mật khẩu OTP:  123456
 ```


