
create table nguoi_dung(
	nguoi_dung_id int IDENTITY(1,1) primary key not null,
	ho_ten nvarchar(50) null,
	tai_khoan nvarchar(50) not null,
	mat_khau nvarchar(50) not null,
	so nvarchar(50) null,
	gioi_tinh bit null
)
create database WeBookVe

create table rap(
	rap_id int IDENTITY(1,1) primary key not null,
	ten nvarchar(50) null,
	dia_chi nvarchar(50) null
)


create table phong(
	phong_id int IDENTITY(1,1) primary key not null,
	so_phong int null,
	rap_id int not null,
	foreign key(rap_id) references rap(rap_id)
)



create table suat_chieu(
	suat_chieu_id int IDENTITY(1,1) primary key not null,
	bat_dau nvarchar(50) null,
	ngay date null,
	phim_id int not null,
	phong_id int not null,
	foreign key(phong_id) references phong(phong_id),
	foreign key(phim_id) references phim(phim_id)
)


create table ghe(
	ghe_id int IDENTITY(1,1) primary key not null,
	so_ghe int null,
	phong_id int not null,
	foreign key(phong_id) references phong(phong_id),	
)

create table ve(
	ve_id int IDENTITY(1,1) primary key not null,
	ngay_ban date null,
	tong_tien int null,
	suat_chieu_id int not null,
	nguoi_dung_id int not null,
	so int null,
	foreign key(nguoi_dung_id) references nguoi_dung(nguoi_dung_id),
	foreign key(suat_chieu_id) references suat_chieu(suat_chieu_id)
)

create table the_loai(
the_loai_id int IDENTITY(1,1) primary key not null,
ten nvarchar(50) null
)


create table phim(
	phim_id int IDENTITY(1,1) primary key not null,
	ten_phim nvarchar(50) null,
	thoi_luong int null,
	ngay_cong_chieu date null,
	dien_vien nvarchar(50) null,
	dao_dien nvarchar(50) null,
	the_loai_id int null,
	tom_tat nvarchar(max) null,
	anh nvarchar(max) null,
	banner nvarchar(max),
	trailer nvarchar(max),
	foreign key(the_loai_id) references the_loai(the_loai_id)
)
insert into phim(ten_phim, thoi_luong, ngay_cong_chieu, dien_vien, dao_dien, the_loai_id, tom_tat, anh, banner, trailer)
values
(N'Người Nhện: Du Hành Vũ Trụ Nhện', '120', '2022-01-01', N'Nham Hung', 'Nham Hung', '1', N' Sau khi gặp lại Gwen Stacy, chàng Spider-Man thân thiện đến từ Brooklyn phải du hành qua đa vũ trụ và gặp một nhóm Người Nhện chịu trách nhiệm bảo vệ các thế giới song song. Nhưng khi nhóm siêu anh hùng xung đột về cách xử lý một mối đe dọa mới, Miles buộc phải đọ sức với các Người Nhện khác và phải xác định lại ý nghĩa của việc trở thành một người hùng để có thể cứu những người cậu yêu thương nhất', 'https://img.cdn.vncdn.io/cinema/img/91248112558434555-7g4J08JRBGsYr7N7OYPMYYMKIbG.jpg','https://i.ytimg.com/vi/-g5uZxaQaGI/maxresdefault.jpg',''),
(N'Shazam! Cơn Thịnh Nộ Của Các Vị Thần', '150', '2022-06-13', N'David', 'David', '2', N'Phần tiếp nối của Shazam! 2019.', 'https://img.cdn.vncdn.io/cinema/img/78933142651798299-vrFVPBprPlKKmIcpuLVu8SluI9j.jpg', 'https://tintuc-divineshop.cdn.vccloud.vn/wp-content/uploads/2023/03/shazam-con-thinh-no-cua-cac-vi-than-co-the-la-lan-cuoi-cung-zachary-levi-xuat-hien_640025c16eb64.jpeg', ''),
(N'Khóa Chặt Cửa Nào Suzume', '125', '2023-06-20', N'David', 'Suzuki', '3', N'Suzume, 17 tuổi, mồ côi mẹ từ nhỏ. Trên đường đến trường, cô gặp một chàng trai bí ẩn. Nhưng sự tò mò của cô ấy đã gây ra một tai họa gây nguy hiểm cho toàn bộ người dân Nhật Bản, vì vậy Suzume bắt đầu cuộc hành trình để giải quyết mọi việc.', 'https://img.cdn.vncdn.io/cinema/img/1942230700177970-5.jpg', 'https://i.rada.vn/data/image/2023/02/17/khoa-chat-cua-nao-suzume-700.jpg', ''),
(N'Anh Em Super Mario', '130', '2021-06-13', N'Ungh', 'Kazik', '4', N'A plumber named MarioCuộc phiêu lưu đến Vương quốc Nấm của anh chàng thợ sửa ống nước Mario và quá trình anh vươn lên trở thành một huyền thoại.', 'https://img.cdn.vncdn.io/cinema/img/90491023749644835-9xv2PnPV1UWdIRbpa2olHuN4FCX.jpg', 'https://phongcach24h.com/wp-content/uploads/2022/12/Super-Mario-06.jpg', ''),
(N'Mikey 17', '160', '2022-01-30', N'David', 'David', '1', N'Được chuyển thể từ tiểu thuyết Mickey 7 của nhà văn Edward Ashton, Cuốn tiểu thuyết xoay quanh các phiên bản nhân bản vô tính mang tên “Mickey”, dùng để thay thế con người thực hiện cuộc chinh phạt nhằm thuộc địa hóa vương quốc băng giá Niflheim. Mỗi khi một Mickey chết đi, một Mickey mới sẽ được tạo ra, với phiên bản được đánh số 1, 2, 3 tiếp theo. Mickey số 7 được cho rằng đã chết, để rồi một ngày kia, hắn quay lại và bắt gặp phiên bản tiếp theo của mình', 'https://img.cdn.vncdn.io/cinema/img/90576470029227527-y5rrebdZsGgpKb2U52rxMQTYbn0.jpg', 'https://sportshub.cbsistatic.com/i/2022/12/05/57dacc73-1f2b-4db1-b0f3-e8fdec2d3df4/mickey-17-movie.jpg', ''),
(N'Cô Gái Trong Lưới Nhện Ảo', '100', '2020-06-13', N'Davidiod', 'Davidopo', '2', N'Được chuyển thể từ loạt tiểu thuyết trinh thám bán chạy nhất của Thuỵ Điển, The Girl in the Spider’s Web là phần hậu truyện của The Girl with the Dragon Tattoo (2011). Trong phần phim này, nữ hacker có hình xăm rồng Lisbeth Salander (Claire Foy) và nhà báo Mikael Blomkvist (Beau Gadsdon) sẽ trở lại với một phi vụ mới gay go, khó khăn và phức tạp gấp nhiều lần. Cụ thể, Lisbeth Salander được chọn tham gia thực hiện một nhiệm vụ mới, có liên quan đến dự án tuyệt mật quy tụ những bộ óc hàng đầu thế giới. Trong khi đó, nhà báo Mikael Blomkvist vốn đang vật vã ở toà soạn giữa cơn bão khủng hoảng tài chính, cũng bị kéo vào vụ tấn công tin tặc động trời nhằm vào nhà khoa học đầu ngành trong lĩnh vực trí tuệ nhân tạo. Hai người bạn lâu ngày không liên lạc sẽ được kết nối trong một phi vụ đặc biệt', 'https://static.mservice.io/cinema/s256x384/momo-cdn-api-220615130903-637908953438970180.jpg', 'https://i.ytimg.com/vi/FkjX6lGogQ4/maxresdefault.jpg', ''),
(N'Đại Chiến Gã Khổng Lồ', '90', '2022-06-13', N'David', 'David', '3', N'Từ những nhà sản xuất của bộ phim Harry Potter, Đại Chiến Gã Khổng Lồ kể về Barbaca - cô học sinh bé nhỏ bị trói buộc trong cuộc sống trường học và gia đình buồn tẻ, Barbara đã tìm cách giải thoát bằng việc hòa mình vào thế giới huyền diệu của gã khổng lồ. Phát hiện ra âm mưu xâm chiến thế giới, Barbara đã đứng lên vượt qua nổi sợ hãi và cam đảm một mình chống lại', 'https://static.mservice.io/cinema/s256x384/momo-cdn-api-220615130915-637908953553363988.jpg', 'https://i.ytimg.com/vi/Ko9Ds3jLwwg/maxresdefault.jpg', ''),
(N'Lật Mặt 3: Ba Chàng Khuyết', '158', '2022-06-13', N'David', 'David', '4', N'Lật Mặt: Ba Chàng Khuyết là hành trình tìm lại người thân của ba người bạn Tâm - Đức - Lộc tuy kém may mắn phải chịu khuyết tật trên cơ thể và bị cha mẹ bỏ rơi từ nhỏ nhưng luôn lạc quan với cuộc đời. Phim là phần tiếp theo của Series hành động hài - hành động Lật Mặt, do Kiều Minh Tuấn, Huy Khánh, Song Luân và hot girl Thái Lan Nene đóng chính', 'https://static.mservice.io/cinema/s256x384/momo-cdn-api-220615130907-637908953479780599.jpg', 'https://i.ytimg.com/vi/JcKMQQLycpQ/sddefault.jpg', ''),
(N'Biệt Đội Siêu Anh Hùng: Cuộc Chiến Vô Cực', '134', '2022-06-13', N'David', 'David', '5', N'Sau chuyến hành trình độc nhất vô nhị không ngừng mở rộng và phát triển vụ trũ điện ảnh Marvel, bộ phim Avengers: Cuộc Chiến Vô Cực sẽ mang đến màn ảnh trận chiến cuối cùng khốc liệt nhất mọi thời đại. Biệt đội Avengers và các đồng minh siêu anh hùng của họ phải chấp nhận hy sinh tất cả để có thể chống lại kẻ thù hùng mạnh Thanos trước tham vọng hủy diệt toàn bộ vũ trụ của hắn', 'https://static.mservice.io/cinema/s256x384/momo-cdn-api-220615130907-637908953470484079.jpg', 'https://i.ytimg.com/vi/k2b2Jb24hQc/maxresdefault.jpg', ''),
(N'Lăn Đến Bên Em', '111', '2022-09-13', N'Harik', 'Kazaka', '4', N'Mọi chuyện bắt đầu khi Jocelyn đến thăm ngôi nhà của mẹ mình, và bắt gặp cô gái hàng xóm bốc lửa khi đang ngồi trên chiếc xe lăn của bà, khiến cô hiểu nhầm anh là một người khuyết tật. Jocelyn quyết định dùng chiếc xe lăn như một công cụ để tán tỉnh cô gái, nhưng không ngờ cô lại muốn giới thiệu anh với Florence – người chị gái khuyết tật của mình. Rất nhiều tình huống hài hước dở khóc dở cười xảy ra với Jocelyn, khi anh phải giả vờ làm người khuyết tật mỗi lúc gặp Florence mà khiến cô không nghi ngờ. “Đã lỡ phóng lao nên đành theo lao”, liệu cuối cùng Jocelyn sẽ giải quyết tình huống rắc rối mà mình tự đưa bản thân vào như thế nào?', 'https://static.mservice.io/cinema/s256x384/momo-cdn-api-220615130911-637908953513681417.jpg', 'https://khenphim.b-cdn.net/wp-content/uploads/2018/05/Rolling-to-you-5-512x288.jpg', ''),
(N'Mèo đi hia: điều ước cuối cùng', '135', '2022-01-11', N'Nanol', 'Hachigu', '5', N'Puss phát hiện ra rằng niềm đam mê phiêu lưu mạo hiểm của anh đã gây ra hậu quả: Anh đã đốt cháy 8 trong số 9 mạng sống của mình, bây giờ chỉ còn lại đúng một mạng. Anh ta bắt đầu một cuộc hành trình để tìm Điều ước cuối cùng thần thoại trong Rừng Đen nhằm khôi phục lại chín mạng sống của mình. Chỉ còn một mạng sống, đây có lẽ sẽ là cuộc hành trình nguy hiểm nhất của Puss.', 'https://cdn.galaxycine.vn/media/2022/12/7/1200x1800_1670397246643.jpg', 'https://img.meta.com.vn/data/image/2022/12/27/lich-chieu-phim-meo-di-hia-3.jpg', ''),
(N'THANH GƯƠM DIỆT QUỶ: ĐƯỜNG ĐẾN LÀNG RÈN GƯƠM', '154', '2022-05-30', N'Borock', 'Faker', '1', N'Sau trận chiến khốc liệt với anh em quỷ Thượng Huyền Lục Gyuutarou và Daki tại Phố Đèn Đỏ, Tanjiro cùng các kiếm sĩ diệt quỷ đều bị thương nặng và được đưa trở về trụ sở của Đội Diệt Quỷ để dưỡng thương và phục hồi. Sau trận chiến, thanh gươm của Tanjiro cũng bị hư hỏng nặng và lúc này, cậu cần một thanh gươm mới để tiếp tục lên đường làm nhiệm vụ. Cậu được đưa đến Làng Rèn Gươm, nơi phụ trách rèn vũ khí cho các kiếm sĩ của Đội Diệt Quỷ và chuẩn bị cho trận chiến mới với các thành viên mạnh nhất trong hàng Thượng Huyền của Thập Nhị Quỷ Nguyệt', 'http://starlight.vn/Areas/Admin/Content/Fileuploads/images/POSTER/thanh-guom-diet-quy.jpg', 'https://image.lag.vn/upload/news/23/03/07/khan-gia-my-chi-trich-thanh-guong-diet-quy-duong-den-lang-tho-ren-lua-dao-1_IXCP.jpg', '')


insert into nguoi_dung(tai_khoan, mat_khau) values (?, ?)
select * from phim where phim_id = '20'

delete from phim

insert into suat_chieu(bat_dau, ngay, phim_id, phong_id)
values
('14h30', '2024-03-06', '1', '1'),
('15h30', '2024-04-05', '1', '2'),
('16h30', '2024-05-04', '1', '3'),
('17h30', '2024-06-03', '1', '4'),
('18h30', '2024-07-02', '1', '5'),
('19h30', '2024-08-01', '1', '6'),
('20h30', '2024-09-09', '1', '7'),

('2h30',  '2024-02-02', '2', '1'),
('1h15',  '2024-01-01', '2', '2'),
('9h40',  '2024-01-26', '2', '3'),

('7h30',  '2024-09-15', '3', '1'),
('8h30',  '2024-04-28', '3', '2'),
('9h30',  '2024-05-04', '3', '3'),
('3h30',  '2024-04-05', '3', '4'),

('17h30', '2024-03-06', '4', '1'),
('1h', '2024-01-07', '4', '2'),
('2h', '2024-04-05', '4', '3'),
('3h', '2024-09-11', '4', '4'),
('4h', '2024-09-09', '4', '5'),

('14h30', '2024-03-09', '5', '1'),
('15h30', '2024-04-10', '5', '2'),
('16h30', '2024-05-11', '5', '3'),
('17h30', '2024-06-12', '5', '4'),
('18h30', '2024-07-13', '5', '5'),
('19h30', '2024-08-14', '5', '6'),
('20h30', '2024-09-15', '5', '7'),

('14h30', '2024-10-06', '6', '1'),
('15h30', '2024-11-05', '6', '2'),
('16h30', '2024-09-20', '6', '3'),
('17h30', '2024-09-21', '6', '4'),

('14h30', '2024-01-06', '7', '1'),
('15h30', '2024-01-05', '7', '2'),

('14h30', '2024-03-06', '8', '1'),

('14h30', '2024-03-06', '9', '1'),
('15h30', '2024-04-05', '9', '2'),
('16h30', '2024-05-04', '9', '3'),
('17h30', '2024-06-03', '9', '4'),

('14h30', '2025-03-06', '10', '1'),
('15h30', '2025-04-05', '10', '2'),
('16h30', '2025-05-04', '10', '3'),
('17h30', '2025-06-03', '10', '4'),
('18h30', '2025-07-02', '10', '5'),
('19h30', '2025-08-01', '10', '6'),
('20h30', '2025-09-09', '10', '7'),

('14h30', '2026-03-06', '11', '1'),

('14h30', '2027-03-06', '12', '1'),
('15h30', '2027-04-05', '12', '2'),
('16h30', '2027-05-04', '12', '3')







DBCC CHECKIDENT ('phim', NORESEED)
DBCC CHECKIDENT ('rap', RESEED, 1);
DBCC CHECKIDENT ('phim', RESEED, 1);
DBCC CHECKIDENT ('the_loai', RESEED, 1);
DBCC CHECKIDENT ('suat_chieu', RESEED, 1);
DBCC CHECKIDENT ('phong', RESEED, 1);
DBCC CHECKIDENT ('ghe', RESEED, 1);
DBCC CHECKIDENT ('nguoi_dung', RESEED, 1);
DBCC CHECKIDENT ('ve', RESEED, 1);

insert into the_loai(ten)
values
(N'Last'),
(N'Adults'),
(N'Kids'),
(N'Comedy'),
(N'Action')


insert into rap(ten, dia_chi)
values
(N'KazuMoV', N'Ha Noi'),
(N'HieuChauPhi', N'Trung Quoc'),
(N'VietBeDe', N'Da Nang')



insert into phong(so_phong, rap_id)
values
('1', '1'),
('2', '1'),
('3', '1'),

('1', '2'),
('2', '2'),

('1', '3'),
('2', '3')


insert into ghe(so_ghe, phong_id)
values
('1', '1'),
('2', '1'),
('3', '1'),
('4', '1'),
('5', '1'),
('6', '1'),
('7', '1'),
('8', '1'),
('9', '1'),
('10', '1'),
('11', '1'),
('12', '1'),
('13', '1'),
('14', '1'),
('15', '1'),
('16', '1'),
('17', '1'),
('18', '1'),
('19', '1'),
('20', '1'),

('1', '2'),
('2', '2'),
('3', '2'),
('4', '2'),
('5', '2'),
('6', '2'),
('7', '2'),
('8', '2'),
('9', '2'),
('10', '2'),
('11', '2'),
('12', '2'),
('13', '2'),
('14', '2'),
('15', '2'),
('16', '2'),
('17', '2'),
('18', '2'),
('19', '2'),
('20', '2'),

('1', '3'),
('2', '3'),
('3', '3'),
('4', '3'),
('5', '3'),
('6', '3'),
('7', '3'),
('8', '3'),
('9', '3'),
('10', '3'),
('11', '3'),
('12', '3'),
('13', '3'),
('14', '3'),
('15', '3'),
('16', '3'),
('17', '3'),
('18', '3'),
('19', '3'),
('20', '3'),

('1', '4'),
('2', '4'),
('3', '4'),
('4', '4'),
('5', '4'),
('6', '4'),
('7', '4'),
('8', '4'),
('9', '4'),
('10', '4'),
('11', '4'),
('12', '4'),
('13', '4'),
('14', '4'),
('15', '4'),
('16', '4'),
('17', '4'),
('18', '4'),
('19', '4'),
('20', '4'),
('21', '4'),
('22', '4'),
('23', '4'),
('24', '4'),
('25', '4'),
('26', '4'),
('27', '4'),
('28', '4'),
('29', '4'),
('30', '4'),

('1', '5'),
('2', '5'),
('3', '5'),
('4', '5'),
('5', '5'),
('6', '5'),
('7', '5'),
('8', '5'),
('9', '5'),
('10', '5'),
('11', '5'),
('12', '5'),
('13', '5'),
('14', '5'),
('15', '5'),
('16', '5'),
('17', '5'),
('18', '5'),
('19', '5'),
('20', '5'),
('21', '5'),
('22', '5'),
('23', '5'),
('24', '5'),
('25', '5'),
('26', '5'),
('27', '5'),
('28', '5'),
('29', '5'),
('30', '5'),

('1', '6'),
('2', '6'),
('3', '6'),
('4', '6'),
('5', '6'),
('6', '6'),
('7', '6'),
('8', '6'),
('9', '6'),
('10', '6'),
('11', '6'),
('12', '6'),
('13', '6'),
('14', '6'),
('15', '6'),
('16', '6'),
('17', '6'),
('18', '6'),
('19', '6'),
('20', '6'),

('1', '7'),
('2', '7'),
('3', '7'),
('4', '7'),
('5', '7'),
('6', '7'),
('7', '7'),
('8', '7'),
('9', '7'),
('10', '7'),
('11', '7'),
('12', '7'),
('13', '7'),
('14', '7'),
('15', '7'),
('16', '7'),
('17', '7'),
('18', '7'),
('19', '7'),
('20', '7')


select distinct phim.phim_id, suat_chieu_id, bat_dau, ngay, phong_id from phim join suat_chieu on phim.phim_id = suat_chieu.phim_id where phim.phim_id = '1'

insert into ghe()


de



select distinct suat_chieu_id, ngay, bat_dau from rap
join phong on rap.rap_id = phong.rap_id
join ghe on ghe.phong_id = ghe.phong_id
join suat_chieu on suat_chieu.phong_id = phong.phong_id
join phim on phim.phim_id = suat_chieu.phim_id
where phim.phim_id = '1' and rap.rap_id = '1'


select distinct so_ghe from rap
join phong on rap.rap_id = phong.rap_id
join ghe on ghe.phong_id = ghe.phong_id
join suat_chieu on suat_chieu.phong_id = phong.phong_id
join phim on phim.phim_id = suat_chieu.phim_id
where phim.phim_id = '1' and rap.rap_id = '1' and suat_chieu_id = '1' and phong.phong_id = '3'
order by so_ghe desc


select  * from ghe 
join phong on ghe.phong_id = phong.phong_id 
--where phong.phong_id = '1'
order by so_ghe desc

select * from ghe
order by so_ghe

select ten_phim, banner from phim where phim_id = '1'




select * from ve where suat_chieu_id = ? and so = ?


insert into ve(ngay_ban, tong_tien, suat_chieu_id, nguoi_dung_id, so)
values
(?, ?, ?, ?, ?)



select distinct ten_phim, ngay, bat_dau, ten, so_phong, ve.so, tong_tien, ngay_ban from rap
join phong on rap.rap_id = phong.rap_id
join ghe on ghe.phong_id = ghe.phong_id
join suat_chieu on suat_chieu.phong_id = phong.phong_id
join phim on phim.phim_id = suat_chieu.phim_id
join ve on ve.suat_chieu_id = suat_chieu.suat_chieu_id
join nguoi_dung on nguoi_dung.nguoi_dung_id = ve.nguoi_dung_id
where ngay <= '2023/03/16'


select distinct phong.phong_id from suat_chieu
join phong on suat_chieu.phong_id = phong.phong_id
join rap on rap.rap_id = phong.rap_id 
where suat_chieu_id = '4' and rap.rap_id = '2'



select distinct suat_chieu_id, ngay, bat_dau from rap
                    join phong on rap.rap_id = phong.rap_id
                    join ghe on ghe.phong_id = ghe.phong_id
                    join suat_chieu on suat_chieu.phong_id = phong.phong_id
                    join phim on phim.phim_id = suat_chieu.phim_id
                    where phim.phim_id = '1' and rap.rap_id = '1' and ngay >= '2023/03/16' 