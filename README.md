# Tên Dự Án

**Mô tả ngắn gọn về dự án**: Dự án này là một ứng dụng quản lý đơn hàng cho cửa hàng bán giày thể thao. Người dùng có thể duyệt sản phẩm, thêm vào giỏ hàng, thanh toán và nhận hóa đơn. Nhân viên có thể thanh toán tại quầy và kiểm tra hóa đơn.Các quản trị viên có thể quản lý sản phẩm, đơn hàng và xuất hóa đơn.

## Công Cụ và Ngôn Ngữ Sử Dụng

- **Java**: Ngôn ngữ lập trình chính cho backend.
- **Spring Boot**: Framework chính để xây dựng ứng dụng web.
- **Thymeleaf**: Template engine sử dụng để hiển thị giao diện người dùng.
- **JPA (Java Persistence API)**: Dùng để xử lý dữ liệu với cơ sở dữ liệu.
- **Bootstrap**: Framework CSS để thiết kế giao diện web.
- **MySQL**: Cơ sở dữ liệu lưu trữ thông tin người dùng và sản phẩm.
- **BCrypt**: Mã hóa mật khẩu người dùng.

  
### Phần Mềm

- **Java 17 hoặc phiên bản cao hơn**
- **Spring Boot 3.2.x hoặc phiên bản cao hơn**
- **Microsoft SQL Server** (hoặc cơ sở dữ liệu quan hệ tương thích)
- **Maven** để quản lý phụ thuộc
- **IDE**: IntelliJ IDEA, Eclipse hoặc Visual Studio Code
- **Trình duyệt web**: Chrome, Firefox, Edge hoặc Safari

### Cấu Hình Dự Án

1. **Cài đặt Java**: Đảm bảo rằng bạn đã cài đặt Java Development Kit (JDK) 17 hoặc phiên bản mới hơn trên máy tính của mình.
2. **Cài đặt SQL Server**: Cài đặt SQL Server và tạo cơ sở dữ liệu cho ứng dụng. Bạn có thể tham khảo cấu hình sau trong `application.properties` hoặc `application.yml` của Spring Boot để kết nối tới cơ sở dữ liệu:
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
