CREATE DATABASE ASM_QLBH;
go
USE ASM_QLBH;

USE master

--Tính tiền sản phẩm đã giảm giá
CREATE FUNCTION dbo.DiscountProduct (
    @Price FLOAT,
    @PercentageDiscount INT
)
RETURNS FLOAT
AS
BEGIN
    DECLARE @DiscountedPrice FLOAT;
    SET @DiscountedPrice = @Price - (@Price * @PercentageDiscount / 100);
    RETURN @DiscountedPrice;
END;


GO
SELECT * FROM bill_details;
go
-- Ví dụ sử dụng hàm để tính giá sau khi giảm giá
SELECT ProductID, product_name, price, percentage_discount, 
       dbo.DiscountProduct(price, percentage_discount) AS DiscountedPrice
FROM Products;


-- Lấy dữ liệu từ bảng BillDetails và tính giá sau khi giảm giá
SELECT bd.BillDetailID, bd.BillID, bd.ProductID, bd.CustomerName, bd.PhoneNumber, 
       bd.Address, bd.CategoryName, bd.TotalPrice, bd.QuantityBuy, 
       dbo.DiscountProduct(p.Price, p.PercentageDiscount) AS DiscountedPrice
FROM BillDetails bd
JOIN Products p ON bd.ProductID = p.ProductID;
go



SET IDENTITY_INSERT Accounts ON;
INSERT INTO accounts (ID,Email, Password, Role) VALUES
(1,'than123@gmail.com', '123', 0),
(2,'hieu123@gmail.com', '123', 1);
GO
SET IDENTITY_INSERT Accounts OFF;
GO
-- Insert data into Customers
INSERT INTO customers(CustomerID, customer_name, phone_number, Address, Account_id) VALUES
('C001', 'T Sion', '1234567890', 'An Suong',2),
('C002', 'Hieu Da Den', '0987654321', 'Q12 Ho Chi Minh',1);
go
-- Insert data into Categories
INSERT INTO categories(CategoryID, category_name) VALUES
('CAT001', 'Non' ),
('CAT002', 'Ao'),
('CAT003', 'Giay'),
('CAT004', 'Quan'),
('CAT005', 'Trang suc');
go
-- Insert data into Products
INSERT INTO products(ProductID,product_name , Content, Price, create_date, CategoryID, Image, Image1, Image2, Image3, percentage_discount, Likes, Sold, Quantity, Condition,Note) VALUES
('P001', N'Mũ Bánh Tiêu', N'Mũ Bánh Tiêu', 99.99, '2024-01-01', 'CAT001', 'Mubanhtieu.jpg', 'Mubanhtieu-1.jpg', 'Mubanhtieu-2.jpg', 'Mubanhtieu-3.jpg', 10, 100, 50, 200, 1,'Phong cách thời trang, phù hợp cho mọi dịp.'),
('P002', N'Mũ Nam Thời thượng', N'Mũ Báo', 99.99, '2024-02-01', 'CAT001', 'Mubao.jpg', 'Mubao-1.jpg', 'Mubao-2.jpg', 'Mubao-3.jpg', 15, 150, 75, 100, 1,'Thiết kế độc đáo, phù hợp cho các bạn nam.'),
('P003', N'Mũ Cừu Thời Trang cho Nữ', N'Mũ Cừu', 19.99, '2024-03-01', 'CAT001', 'Mucuu.jpg', 'Mucuu-1.jpg', 'Mucuu-2.jpg', 'Mucuu-3.jpg', 5, 200, 100, 300, 1,'Dễ phối đồ, phù hợp cho các bạn nữ.'),
('P004', N'Mũ Lưỡi Trai Phong Cách', N'Mũ Lưỡi Trai', 19.99, '2024-01-15', 'CAT001', 'Muluoitrai.jpg', 'Muluoitrai-1.jpg', 'Muluoitrai-2.jpg', 'Muluoitrai-3.jpg', 10, 80, 40, 150, 1,'Phong cách lịch lãm, thích hợp cho mùa đông.'),
('P005', N'Mũ Nồi Thời Trang Hàn Quốc', N'Mũ Nồi', 14.99, '2024-02-10', 'CAT001', 'Munoi.jpg', 'Munoi-1.jpg', 'Munoi-2.jpg', 'Munoi-3.jpg', 20, 120, 60, 200, 1, 'Thời trang và thoải mái.'),
('P006', N'Mũ Phi Công Cho báo thủ', N'Mũ Phi Công', 25.99, '2024-03-05', 'CAT001', 'Muphicong.jpg', 'Muphicong-1.jpg', 'Muphicong-2.jpg', 'Muphicong-3.jpg', 15, 110, 55, 175, 1,'Độc đáo và phù hợp cho các game thủ.'),
('P007', N'Mũ Vành Phối Ren Cho Girl', N'Mũ Vành Phối Ren', 29.99, '2024-04-01', 'CAT001', 'Muvanhphoien.jpg', 'Muvanhphoiren-1.jpg', 'Muvanhphoiren-2.jpg', 'Muvanhphoiren-3.jpg', 5, 90, 45, 250, 1,' Nữ tính và dễ phối đồ.'),
('P008', N'Mũ Vành Basic Cho Nam Và Nữ', N'Mũ Vành Basic', 22.99, '2024-04-15', 'CAT001', 'Muvanhbasic.jpg', 'Muvanhbasic-1.jpg', 'Muvanhbasic-2.jpg', 'Muvanhbasic-3.jpg', 25, 130, 65, 300, 1,'Đơn giản và thời trang.'),
('P009', N'Nón Y2k từ Brand', N'Nón Y2k', 39.99, '2024-05-01', 'CAT001', 'Nony2k.jpg', 'Nony2k-1.jpg', 'Nony2k-2.jpg', 'Nony2k-3.jpg', 10, 140, 70, 100, 1,' Phong cách retro, thích hợp cho các bạn trẻ.'),
('P010', N'Quần Nam thời trang Crop', N'Quần Nam Crop', 129.99, '2024-05-01', 'CAT004', 'quancrop.jpg', 'quancrop-1.jpg', 'quancrop-2.jpg', 'quancrop-3.jpg', 10, 140, 70, 100, 1,'Quần crop phong cách và thoải mái.'),
('P011', N'Quần Nam thời trang quần đùi', N'Quần Đùi nam', 139.99, '2024-05-01', 'CAT004', 'quandui.jpg', 'quandui-1.jpg', 'quandui-2.jpg', 'quandui-3.jpg', 10, 140, 70, 100, 1,' Quần đùi nam thời trang và năng động.'),
('P012', N'Quần Nam thời trang quần gió', N'Quần Nam Gió', 159.99, '2024-05-01', 'CAT004', 'quangio.jpg', 'quangio-1.jpg', 'quangio-2.jpg', 'quangio-3.jpg', 10, 140, 70, 100, 1,'Quần gió nam thời trang và ấm áp.'),
('P013', N'Quần Nam thời trang quần jean bao đẹp', N'Quần Nam Jean', 229.99, '2024-05-01', 'CAT004', 'quanjean.jpg', 'quanjean-1.jpg', 'quanjean-2.jpg', 'quanjean-3.jpg', 10, 140, 70, 100, 1,'Quần jean nam phong cách và chất lượng.'),
('P014', N'Quần Nam thời trang quần Nhật', N'Quần Nam Nhật', 129.99, '2024-05-01', 'CAT004', 'quannhat.jpg', 'quannhat-1.jpg', 'quannhat-2.jpg', 'quannhat-3.jpg', 10, 140, 70, 100, 1,'Quần Nhật nam thời trang và thoải mái.'),
('P015', N'Quần Nam thời trang quần short', N'Quần short nam', 99.99, '2024-05-01', 'CAT004', 'quansort.jpg', 'quansort-1.jpg', 'quansort-2.jpg', 'quansort-3.jpg', 10, 140, 70, 100, 1,'Quần short nam thời trang và dễ phối đồ.'),
('P016', N'Quần Nam thời trang quần thun', N'Quần Nam thun', 129.99, '2024-05-01', 'CAT004', 'quanthun.jpg', 'quanthun-1.jpg', 'quanthun-2.jpg', 'quanthun-3.jpg', 10, 140, 70, 100, 1,'Quần thun nam thời trang và thoải mái.'),
('P017', N'Áo nam aoevisu phong cách ', N'Áo aoevisu', 129.99, '2024-05-01', 'CAT002', 'aoevisu.jpg', 'aoevisu-1.jpg', 'aoevisu-2.jpg', 'aoevisu-3.jpg', 10, 140, 70, 100, 1,'Áo aoevisu nam thời trang và cá tính.'),
('P018', N'Áo nam Hoodi Mùa lạnh ', N'Áo Hoodie', 229.99, '2024-05-01', 'CAT002', 'aohoodi.jpg', 'aohoodi-1.jpg', 'aohoodi-2.jpg', 'aohoodi-3.jpg', 10, 140, 70, 100, 1,' Áo hoodie nam ấm áp và thời trang.'),
('P019', N'Áo khoác Jean Nam thần ', N'Áo Khoác jean', 129.99, '2024-05-01', 'CAT002', 'aokhoacjean.jpg', 'aokhoacjean-1.jpg', 'aokhoacjean-2.jpg', 'aokhoacjean-3.jpg', 10, 140, 70, 100, 1,'Áo khoác jean nam phong cách và nam tính.'),
('P020', N'Áo Polo Nam thời thượng ', N'Áo polo', 129.99, '2024-05-01', 'CAT002', 'aopolo.jpg', 'aopolo-1.jpg', 'aopolo-2.jpg', 'aopolo-3.jpg', 10, 140, 70, 100, 1,'Áo polo nam thời trang và lịch lãm.'),
('P021', N'Áo Sơ mi nam ', N'Áo Sơ mi', 129.99, '2024-05-01', 'CAT002', 'aosomi.jpg', 'aosomi-1.jpg', 'aosomi-2.jpg', 'aosomi-3.jpg', 10, 140, 70, 100, 1,'Áo sơ mi nam lịch lãm và phù hợp cho công việc.'),
('P022', N'Áo thun nam ', N'Áo thun', 129.99, '2024-05-01', 'CAT002', 'aothun.webp', 'aothun-1.webp', 'aothun2.jpg', 'aothun-3.jpg', 10, 140, 70, 100, 1,'Áo thun nam thoải mái và dễ phối đồ.'),
('P023', N'Áo Bóng đá quỷ đỏ ', N'Áo quỷ đỏ', 129.99, '2024-05-01', 'CAT002', 'aowido.jpg', 'aowido-1.jpg', 'aowido-2.jpg', 'aowido-3.jpg', 10, 140, 70, 100, 1,'Áo quỷ đỏ phong cách và nổi bật trên sân cỏ.'),
('P024', N'Giày bóng đá mizu  ', N'Giày mizu', 129.99, '2024-05-01', 'CAT003', 'mizu.jpeg', 'mizu-1.jpeg', 'mizu-2.jpeg', 'mizu-3.jpeg', 10, 140, 70, 100, 1,'Giày mizu chất lượng và thoải mái khi sử dụng.'),
('P025', N'Giày bóng đá mino  ', N'Giày mino', 129.99, '2024-05-01', 'CAT003', 'mino.jpeg', 'mino-1.jpg', 'mino-2.jpg', 'mino-3.jpg', 10, 140, 70, 100, 1,'Giày mino phù hợp cho các trận đấu quan trọng.'),
('P026', N'Giày bóng đá speed  ', N'Giày speed', 129.99, '2024-05-01', 'CAT003', 'Speed.jpeg', 'Speed-1.jpg', 'Speed-2.jpg', 'Speed-3.jpeg', 10, 140, 70, 100, 1,'Giày speed giúp bạn nhanh chóng trên sân.'),
('P027', N'Giày bóng đá sup ', N'Giày sup', 129.99, '2024-05-01', 'CAT003', 'Sup.jpeg', 'Sup-1.jpg', 'Sup2.jpg', 'Sup-3.jpg', 10, 140, 70, 100, 1,' Giày sup thể thao và phong cách.'),
('P028', N'Bộ nhẫn dành cho nữ ', N'Nhẫn nữ', 29.99, '2024-05-01', 'CAT005', 'bonhan.jpg', 'bonhan-1.jpg', 'bonhan-2.jpg', 'bonhan-3.jpg', 10, 140, 70, 100, 1,' Nhẫn nữ phong cách'),
('P029', N'Dây chuyền nữ hình bươm bướm ', N'Dây chuyền nữ', 29.99, '2024-05-01', 'CAT005', 'daychuyenbuom.jpg', 'daychuyenbuom-1.jpg', 'daychuyenbuom-2.jpg', 'daychuyenbuom-3.jpg', 10, 140, 70, 100, 1,'Dây chuyền nữ đơn giản sang trọng'),
('P030', N'Dây chuyền nữ hình hoa tulip ', N'Dây chuyền nữ', 129.99, '2024-05-01', 'CAT005', 'daychuyenhoatulip.jpg', 'daychuyenhoatulip-1.jpg', 'daychuyenhoatulip-2.jpg', 'daychuyenhoatulip-3.jpg', 10, 140, 70, 100, 1,' Dây chuyền nữ đơn giản sang trọng.'),
('P031', N'Dây chuyền Jewerly ', N'Dây chuyền Jewerly', 129.99, '2024-05-01', 'CAT005', 'daychuyenjewerly.jpg', 'daychuyenjewerly-1.jpg', 'daychuyenjewerly-2.jpg', 'daychuyenjewerly-3.jpg', 10, 140, 70, 100, 1,' Dây chuyền Jewerly phong cách.'),
('P032', N'Dây chuyền nam Kin ', N'Dây chuyền Kin', 129.99, '2024-05-01', 'CAT005', 'daychuyenkin.jpg', 'daychuyenkin-1.jpg', 'daychuyenkin-2.jpg', 'daychuyenkin-3.jpg', 10, 140, 70, 100, 1,' Dây chuyền nam trẻ trung năng động.'),
('P033', N'Dây chuyền nam Kin ', N'Dây chuyền Kin', 129.99, '2024-05-01', 'CAT005', 'daychuyenkin.jpg', 'daychuyenkin-1.jpg', 'daychuyenkin-2.jpg', 'daychuyenkin-3.jpg', 10, 140, 70, 100, 1,' Dây chuyền nam trẻ trung năng động.'),
('P034', N'Dây chuyền nam Titan không gỉ ', N'Dây chuyền Titan', 129.99, '2024-05-01', 'CAT005', 'daychuyentitan.jpg', 'daychuyentitan-1.jpg', 'daychuyentitan-2.jpg', 'daychuyentitan-3.jpg', 10, 140, 70, 100, 1,' Dây chuyền nam trẻ trung năng động.'),
('P035', N'Đồng hồ Casio ', N'Đồng hồ Casio', 129.99, '2024-05-01', 'CAT005', 'donghocasio.jpg', 'donghocasio-1.jpg', 'donghocasio-2.jpg', 'donghocasio-3.jpg', 10, 140, 70, 100, 1,'Đồng hồ Casio classic bền bỉ.'),
('P036', N'Đồng hồ Geneva ', N'Đồng hồ Geneva', 129.99, '2024-05-01', 'CAT005', 'donghogeneva.jpg', 'donghogeneva-1.jpg', 'donghogeneva-2.jpg', 'donghogeneva-3.jpg', 10, 140, 70, 100, 1,'Đồng hồ Geneva sang trọng.'),
('P037', N'Đồng hồ Led ', N'Đồng hồ Led', 129.99, '2024-05-01', 'CAT005', 'dongholed.jpg', 'dongholed-1.jpg', 'dongholed-2.jpg', 'dongholed-3.jpg', 10, 140, 70, 100, 1,'Đồng hồ Led phong cách hiện đại.'),
('P038', N'Đồng hồ nữ Jhui ', N'Đồng hồ Jhui', 129.99, '2024-05-01', 'CAT005', 'donghonujhui.jpg', 'donghonujhui-1.jpg', 'donghonujhui-2.jpg', 'donghonujhui-3.jpg', 10, 140, 70, 100, 1,'Đồng hồ nữ Jhui đơn giản nhẹ nhàng và sang trọng.'),
('P039', N'Đồng hồ Sport ', N'Đồng hồ Sport', 129.99, '2024-05-01', 'CAT005', 'donghosport.jpg', 'donghosport-1.jpg', 'donghosport-2.jpg', 'donghosport-3.jpg', 10, 140, 70, 100, 1,'Đồng hồ Sport bền bỉ trẻ trung năng động.'),
('P040', N'Nhẫn hình con ếch ', N'Nhẫn con ếch', 129.99, '2024-05-01', 'CAT005', 'nhanconech.jpg', 'nhanconech-1.jpg', 'nhanconech-2.jpg', 'nhanconech-3.jpg', 10, 140, 70, 100, 1,'Nhẫn con ếch dễ thương'),
('P041', N'Nhẫn kim cương ', N'Nhẫn kim cương', 129.99, '2024-05-01', 'CAT005', 'nhankimcuong.jpg', 'nhankimcuong-1.jpg', 'nhankimcuong-2.jpg', 'nhankimcuong-3.jpg', 10, 140, 70, 100, 1,'Nhẫn kim cương sang trọng'),
('P042', N'Nhẫn mạ bạc không gỉ ', N'Nhẫn mạ bạc', 129.99, '2024-05-01', 'CAT005', 'nhanmabac.jpg', 'nhanmabac-1.jpg', 'nhanmabac-2.jpg', 'nhanmabac-3.jpg', 10, 140, 70, 100, 1,'Nhẫn mạ bạc không gỉ'),
('P043', N'Nhẫn cho nữ hình cái nơ ', N'Nhẫn hình nơ', 129.99, '2024-05-01', 'CAT005', 'nhanno.jpg', 'nhanno-1.jpg', 'nhanno-2.jpg', 'nhanno-3.jpg', 10, 140, 70, 100, 1,'Nhẫn hình nơ cho nữ'),
('P044', N'Nhẫn Titan không gỉ Tavi Studio ', N'Nhẫn Tavi', 129.99, '2024-05-01', 'CAT005', 'nhantavi.jpg', 'nhantavi-1.jpg', 'nhantavi-2.jpg', 'nhantavi-3.jpg', 10, 140, 70, 100, 1,'Nhẫn titan phong cách Tavi Studio'),
('P045', N'Nhẫn Titan không gỉ ', N'Nhẫn Titan', 129.99, '2024-05-01', 'CAT005', 'nhantitan.jpg', 'nhantitan-1.jpg', 'nhantitan-2.jpg', 'nhantitan-3.jpg', 10, 140, 70, 100, 1,'Nhẫn titan không gỉ'),
('P046', N'Vòng tay chuỗi hạt ', N'Vòng tay chuỗi', 129.99, '2024-05-01', 'CAT005', 'vongtaychuoihat.jpg', 'vongtaychuoihat-1.jpg', 'vongtaychuoihat-2.jpg', 'vongtaychuoihat-3.jpg', 10, 140, 70, 100, 1,'Vòng tay chuỗi hạt nhẹ nhàng'),
('P047', N'Vòng tay mặt trăng cho nữ ', N'Vòng tay mặt trăng', 129.99, '2024-05-01', 'CAT005', 'vongtaymattrang.jpg', 'vongtaymattrang-1.jpg', 'vongtaymattrang-2.jpg', 'vongtaymattrang-3.jpg', 10, 140, 70, 100, 1,'Vòng tay mặt trang quý phái'),
('P048', N'Vòng tay Titan không gỉ Tavi Studio ', N'Vòng tay Tavi', 129.99, '2024-05-01', 'CAT005', 'vongtaytavi.jpg', 'vongtaytavi-1.jpg', 'vongtaytavi-2.jpg', 'vongtaytavi-3.jpg', 10, 140, 70, 100, 1,'Vòng titan không gỉ Tavi Studio'),
('P049', N'Vòng tay Titan không gỉ', N'Vòng tay Titan', 129.99, '2024-05-01', 'CAT005', 'vongtaytitan.jpg', 'vongtaytitan-1.jpg', 'vongtaytitan-2.jpg', 'vongtaytitan-3.jpg', 10, 140, 70, 100, 1,'Vòng titan không gỉ'),
('P050', N'Vòng tay đá Vintage ', N'Vòng tay Vintage', 129.99, '2024-05-01', 'CAT005', 'vongtayvintage.jpg', 'vongtayvintage-1.jpg', 'vongtayvintage-2.jpg', 'vongtayvintage-3.jpg', 10, 140, 70, 100, 1,'Vòng đá Vintage');
go
-- Insert data into Bills
INSERT INTO bills(billid, customerid, create_date) VALUES
('B001', 'C001', '2024-05-01'),
('B002', 'C002', '2024-05-02');
go
-- Insert data into BillDetails
INSERT INTO bill_details(bill_detailid, productid,total_price, quantity_buy) VALUES
('BD001', 'P001', 629.99, 1),
('BD002','P003', 18.99, 1),
('BD003', 'P002', 849.99, 1);
go

--thêm dữ liệu bảng Reviews
INSERT INTO Reviews (rating, review_date, review_text, customerid, productid)
VALUES
    (5, '2024-06-01',N'Sản phẩm tuyệt vời, rất đáng mua!', 'C001', 'P001'),
    (4, '2024-06-02',N'Chất lượng rất tốt, nhưng hơi đắt.', 'C002', 'P002'),
    (3, '2024-06-03',N'Sản phẩm trung bình, cần cải thiện.', 'C002', 'P003');
   go
