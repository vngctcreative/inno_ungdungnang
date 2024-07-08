# CF4VN Installer

## Giới thiệu
Đây là tệp cấu hình sử dụng Inno Setup để tạo bộ cài đặt cho ứng dụng CF4VN phiên bản 2.1. Bộ cài đặt này sẽ sao chép các tệp cần thiết vào máy tính của người dùng, tạo các biểu tượng, và hiển thị thông báo sau khi cài đặt hoàn tất.

## Nội dung tệp cấu hình

### [Setup] Section
- **AppName**: Tên ứng dụng là CF4VN.
- **AppVersion**: Phiên bản của ứng dụng là 2.1.
- **DefaultDirName**: Thư mục mặc định để cài đặt ứng dụng là `C:\Program Files\CF4VN`.
- **DefaultGroupName**: Tên nhóm mặc định cho các biểu tượng chương trình là `CF4VN`.
- **OutputDir**: Thư mục đầu ra cho bộ cài đặt là `E:\Game Online\Full Version CF\output`.
- **OutputBaseFilename**: Tên tệp bộ cài đặt là `CF4VNInstaller`.
- **Compression**: Sử dụng thuật toán nén lzma.
- **SolidCompression**: Kích hoạt nén dữ liệu liên tục.
- **DiskSpanning**: Kích hoạt tính năng chia đĩa.
- **DiskSliceSize**: Kích thước mỗi phần đĩa là 1GB.
- **SetupIconFile**: Đường dẫn đến tệp biểu tượng cho bộ cài đặt là `C:\Users\kutdi\Desktop\cf4vn.ico`.
- **DisableProgramGroupPage**: Ẩn trang chọn nhóm chương trình.
- **DisableDirPage**: Hiển thị trang chọn thư mục cài đặt.
- **PrivilegesRequired**: Yêu cầu quyền quản trị để cài đặt.

### [Files] Section
- **Source**: Đường dẫn đến các tệp nguồn cần sao chép.
- **DestDir**: Thư mục đích là `{app}`, thư mục cài đặt được chọn.
- **Flags**: Các cờ cho phép bỏ qua phiên bản và đệ quy vào các thư mục con.

### [Icons] Section
- **Name**: Tên biểu tượng.
- **Filename**: Đường dẫn đến tệp chương trình để tạo biểu tượng.
- **Tasks**: Nhiệm vụ kèm theo (tạo biểu tượng trên desktop).

### [Run] Section
- **Filename**: Tên tệp chương trình sẽ chạy sau khi cài đặt.
- **Description**: Mô tả cho hành động.
- **Flags**: Các cờ cho phép bỏ qua nếu cài đặt trong chế độ im lặng và không đợi chương trình kết thúc.

### [Tasks] Section
- **Name**: Tên nhiệm vụ.
- **Description**: Mô tả cho nhiệm vụ.
- **GroupDescription**: Mô tả nhóm nhiệm vụ.
- **Flags**: Cờ cho phép nhiệm vụ này có thể được chọn riêng lẻ.

### [Code] Section
- **MyAppName**: Hằng số chứa tên ứng dụng.
- **DiscordLink**: Hằng số chứa liên kết đến máy chủ Discord của CF4VN.

#### CurStepChanged Procedure
Đây là thủ tục kiểm tra bước cài đặt hiện tại. Khi bước cài đặt hoàn tất (`ssDone`), nó sẽ hiển thị một thông báo cảm ơn người dùng và cung cấp đường dẫn cài đặt cũng như liên kết đến máy chủ Discord.

```pascal
procedure CurStepChanged(CurStep: TSetupStep);
var
  InstallDir: string;
begin
  if CurStep = ssDone then
  begin
    InstallDir := ExpandConstant('{app}');
    MsgBox('Cảm ơn bạn đã cài ' + MyAppName + '!!!' + #13#10 + 'Đường dẫn cài đặt: ' + InstallDir + #13#10 + 'Tham gia Discord: ' + DiscordLink, mbInformation, MB_OK);
  end;
end;
```

## Hướng dẫn cài đặt
1. Chạy tệp `CF4VNInstaller.exe` để bắt đầu quá trình cài đặt.
2. Chọn thư mục cài đặt hoặc để mặc định.
3. Hoàn tất quá trình cài đặt.
4. Một thông báo cảm ơn sẽ hiện ra sau khi cài đặt hoàn tất, cung cấp thông tin về đường dẫn cài đặt và liên kết Discord.

## Liên hệ
Nếu bạn có bất kỳ câu hỏi hoặc gặp vấn đề gì, vui lòng tham gia máy chủ Discord của chúng tôi tại [Discord CF4VN](https://discord.gg/cf4vn).
