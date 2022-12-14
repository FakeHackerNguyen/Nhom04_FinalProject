USE [MovieWeb]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 2/5/2021 8:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[maBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[maPhim] [varchar](15) NOT NULL,
	[tenDN] [varchar](15) NOT NULL,
	[Sao] [int] NOT NULL,
	[noiDung] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoiDung]    Script Date: 2/5/2021 8:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoiDung](
	[tenDN] [varchar](15) NOT NULL,
	[Ho] [nvarchar](10) NOT NULL,
	[Ten] [nvarchar](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[matKhau] [varchar](20) NOT NULL,
	[vaiTro] [bit] NOT NULL,
 CONSTRAINT [PK__nguoiDun__FB7499F6FC00F2AF] PRIMARY KEY CLUSTERED 
(
	[tenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 2/5/2021 8:32:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[maPhim] [varchar](15) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[noiDung] [nvarchar](max) NOT NULL,
	[doPhanGiai] [varchar](10) NOT NULL,
	[daoDien] [nvarchar](50) NOT NULL,
	[ngayCongChieu] [date] NOT NULL,
	[thoiLuong] [int] NOT NULL,
	[phuDe] [nvarchar](20) NOT NULL,
	[luotXem] [int] NULL,
	[Trailer] [varchar](max) NULL,
	[Link] [varchar](max) NULL,
	[Poster] [varchar](max) NULL,
	[Hinh1] [varchar](max) NULL,
	[Hinh2] [varchar](max) NULL,
	[Hinh3] [varchar](max) NULL,
	[Hinh4] [varchar](max) NULL,
	[hieuLuc] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhimTH]    Script Date: 2/5/2021 8:32:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhimTH](
	[maTongHop] [int] IDENTITY(1,1) NOT NULL,
	[maPhim] [varchar](15) NOT NULL,
	[maTheLoai] [varchar](15) NOT NULL,
	[loaiPhim] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[maTongHop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 2/5/2021 8:32:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[maTheLoai] [varchar](15) NOT NULL,
	[tenTheLoai] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuThich]    Script Date: 2/5/2021 8:32:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuThich](
	[maYeuThich] [int] IDENTITY(1,1) NOT NULL,
	[maPhim] [varchar](15) NOT NULL,
	[tenDN] [varchar](15) NOT NULL,
	[ngayThich] [date] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([maBinhLuan], [maPhim], [tenDN], [Sao], [noiDung]) VALUES (4, N'FZ22019', N'hoangtk123', 4, N'Đỉnh của chóp :V')
INSERT [dbo].[BinhLuan] ([maBinhLuan], [maPhim], [tenDN], [Sao], [noiDung]) VALUES (3, N'FZ22019', N'tuanml123', 5, N'Phim khá hay :V')
INSERT [dbo].[BinhLuan] ([maBinhLuan], [maPhim], [tenDN], [Sao], [noiDung]) VALUES (5, N'FZ22019', N'tuantran000', 3, N'Air, Earth, Water, Fire nghe cứ như là đang xem Avatar: The last Airbender :V')
INSERT [dbo].[BinhLuan] ([maBinhLuan], [maPhim], [tenDN], [Sao], [noiDung]) VALUES (6, N'FZ22019', N'hungnguyencc', 4, N'nhìn hai chị em nhà elsa rất thắm thiết còn chị em nhà tôi như mèo với chuột
Hahahaha')
INSERT [dbo].[BinhLuan] ([maBinhLuan], [maPhim], [tenDN], [Sao], [noiDung]) VALUES (9, N'AVEG19', N'tuanml123', 4, N'Phim đỉnh :V')
INSERT [dbo].[BinhLuan] ([maBinhLuan], [maPhim], [tenDN], [Sao], [noiDung]) VALUES (7, N'FZ22019', N'thinochipheo', 4, N'phim hay dễ thương, nhưng mà chưa đỉnh cao bằng phần 1')
INSERT [dbo].[BinhLuan] ([maBinhLuan], [maPhim], [tenDN], [Sao], [noiDung]) VALUES (8, N'FZ22019', N'doinothue123', 5, N'hqua xem lai, để ý đoạn đầu 2 chị em chơi với nhau, Elsa "khuấy cháo" ra thg người tuyết đồ chơi :)')
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
INSERT [dbo].[nguoiDung] ([tenDN], [Ho], [Ten], [Email], [matKhau], [vaiTro]) VALUES (N'doinothue123', N'Chi', N'Pheo', N'chipheo2k4@gmail.com', N'1234567', 0)
INSERT [dbo].[nguoiDung] ([tenDN], [Ho], [Ten], [Email], [matKhau], [vaiTro]) VALUES (N'hoangtk123', N'Phạm', N'Hoàng', N'khoahoangyahoo@gmail.com', N'1234567', 0)
INSERT [dbo].[nguoiDung] ([tenDN], [Ho], [Ten], [Email], [matKhau], [vaiTro]) VALUES (N'hungnguyencc', N'Nguyễn', N'Hưng', N'hungnguyen555@gmail.com', N'1234567', 0)
INSERT [dbo].[nguoiDung] ([tenDN], [Ho], [Ten], [Email], [matKhau], [vaiTro]) VALUES (N'khoahoanghh', N'Ho', N'Khoa', N'khoahoangyahoo@gmail.com', N'1234567', 0)
INSERT [dbo].[nguoiDung] ([tenDN], [Ho], [Ten], [Email], [matKhau], [vaiTro]) VALUES (N'PHKBZ', N'Nguyen', N'Hoang', N'hoangnguyen@gmail.com', N'12345678', 1)
INSERT [dbo].[nguoiDung] ([tenDN], [Ho], [Ten], [Email], [matKhau], [vaiTro]) VALUES (N'thinochipheo', N'Thị', N'Nở', N'thino2k1@gmail.com', N'1234567', 0)
INSERT [dbo].[nguoiDung] ([tenDN], [Ho], [Ten], [Email], [matKhau], [vaiTro]) VALUES (N'tuanml123', N'Phạm', N'Tuấn', N'tuanml234@gmail.com', N'1234567', 0)
INSERT [dbo].[nguoiDung] ([tenDN], [Ho], [Ten], [Email], [matKhau], [vaiTro]) VALUES (N'tuantran000', N'Trần', N'Tuấn', N'tuantranyahoo@gmail.com', N'1234567', 0)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'ALC2017', N'Alien: Covenant', N'<b>Alien: Covenant</b> lấy bối cảnh hơn 10 năm sau các sự kiện xảy ra trong Prometheus, tập trung khám phá số phận của những thành viên tàu Prometheus còn sống sót, đồng thời lý giải cho câu hỏi muôn thuở chưa có lời đáp: quái vật ngoài hành tinh được tạo ra khi nào, như thế nào và bởi ai?
<br>
<br>
<b>Quái vật không gian bị... đẩy xuống vai phụ</b>
<br>
<br>
Ridley Scott là “cha đẻ” của series Alien, là người thực hiện phần phim đầu tiên ra mắt vào năm 1979. Ông cũng chính là đạo diễn của phần mới nhất này. Ở đoạn đầu tác phẩm, ông khiến khán giả sống dậy cảm giác khi xem Alien vào 38 năm về trước. Công cuộc khám phá hành tinh bí ẩn cùng sự trỗi dậy của loài sinh vật khủng khiếp luôn hấp dẫn, kịch tính và rùng rợn.
<br>
<br>
Nhưng mạch phim sau đó bị kèo chùng xuống hoàn toàn, đồng thời từ một phim đấu tranh sinh tồn gay cấn, phim rẽ hướng sang một tác phẩm như-nghệ-thuật với những câu thoại khó hiểu, những diễn biến tâm lý có phần phức tạp, điên rồ và những cảnh phim gây sốc. Vai trò của các quái vật không gian bị giảm bớt bởi kẻ đã tạo ra/ cải tiến nó. 
<br>
<br>
<b>Kinh tởm hơn là kinh dị</b>
<br>
<br>
Trong Alien: Covenant, khán giả bắt gặp 2 loài quái vật không gian: Xenomorph đã gieo rắc nỗi ám ảnh kinh hoàng suốt 3 thập kỷ qua và loài mới Neomorph. Xenomorph trải qua 4 giai đoạn phát triển: Ovomorph (trứng) > Facehugger (sinh vật chui ra từ trứng, bám vào vật chủ và đẻ trứng lên lên vật chủ) > Chestbuster (quái vật “sơ sinh” chui ra từ cơ thể vật bị ký sinh) > Xenomorph (quái vật không gian trưởng thành).
<br>
<br>
Trong khi đó, các bào tử từ trứng của Neomorph với kích thước siêu vi có khả năng phát tán trong không khí khi bị tác động và chủ động chui vào vật chủ để ký sinh. Sau đó, nó hút chất dinh dưỡng từ cơ thể vật chủ và phát triển thành Neomorph. Chính việc tạo ra loài mới để tránh khiến khán giả nhàm chán mà “đất diễn” phải chia đều cho cả 2 loài.
', N'HD', N'Ridley Scott', CAST(N'2017-05-04' AS Date), 123, N'Tiếng Việt', 0, N'svnAD0TApb8', N'svnAD0TApb8', N'alienposter.png', N'alienhinh1.jpg', N'alienhinh2.jpg', N'alienhinh3.jpg', N'alienhinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'ALITA19', N'Alita: Battle Angel', N'<b>Alita: Battle Angel</b> được chuyển thể từ loạt truyện tranh Gunnm của tác giả Yukito Kishiro, lần đầu xuất bản năm 1990. Lấy bối cảnh thế giới giả tưởng hậu tận thế, tác phẩm xoay quanh nhân vật chính là Alita - cô gái trẻ mang cơ thể người máy với chuyến hành trình đi tìm ký ức của bản thân.
<br>
<br>
Đứng sau Alita: Battle Angel là James Cameron - nhà làm phim huyền thoại từng tạo nên nhiều bom tấn thuộc hàng kinh điển như Aliens, Terminator 2: Judgment Day, Titanic, Avatar… Việc chuyển thể Gunnm lên màn ảnh rộng được Cameron ấp ủ từ đầu thập niên 2000, với công tác biên kịch và đạo diễn do chính ông thực hiện. Tuy nhiên, dự án liên tục bị đình trệ do nhà làm phim bận rộn thực hiện Avatar, cũng như các phần hậu truyện sau khi bom tấn về hành tinh Pandora ra mắt hồi cuối 2009.
<br>
<br>
Đến tháng 4/2016, thông tin chính thức đầu tiên của dự án mới được hãng 20th Century Fox công bố. Robert Rodriguez - nhà làm phim được biết đến với các tác phẩm nổi bật như Desperado (1995), From Dusk till Dawn (1996) hay Sin City (2005) được giao cho vai trò đạo diễn, còn James Cameron lui về làm sản xuất và đồng biên kịch.
<br>
<br>
Mất đến hai thập kỷ phát triển, được đầu tư kinh phí khủng lên đến 170 triệu USD, Alita: Battle Angel là dự án phim chuyển thể từ truyện tranh Nhật Bản đắt đỏ và dài hơi nhất từ trước đến nay. Dưới sự nhào nặn đầy tâm huyết của Cameron và Rodriguez, khán giả kỳ vọng đây sẽ là dự án bom tấn hấp dẫn và thành công.
<br>
<br>
Tuy nhiên, lịch sử Hollywood chưa từng để lại dấu ấn tốt đẹp nào với các tác phẩm chuyển thể từ truyện tranh hay hoạt hình Nhật Bản. Hầu hết nhóm tác phẩm này đều thất bại toàn diện bởi chất lượng kém cỏi, từ Guyver (1991), Fist of the North Star (1995), Dragonball: Evolution (2009) đến Death Note (2017).
<br>
<br>
Ngay cả những tác phẩm được đầu tư lớn như Speed Racer (2008) hay Ghost in the Shell (2017) tuy có chất lượng tốt hơn, nhưng vẫn thất bại về doanh thu và không đạt kỳ vọng của khán giả khi đặt lên bàn cân so sánh với nguyên tác. Do đó, dù được đầu tư khủng và chống lưng bởi những nhà làm phim bậc nhất Hollywood, Alita: Battle Angel vẫn là canh bạc đầy rủi ro đối với hãng 20th Century Fox.
', N'Full HD', N'Robert Rodriguez', CAST(N'2019-01-31' AS Date), 122, N'Tiếng Việt', 0, N'w7pYhpJaJW8', N'w7pYhpJaJW8', N'alitaposter.jpg', N'alitahinh1.jpg', N'alitahinh2.jpg', N'alitahinh3.jpg', N'alitahinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'AVEG19', N'Avengers: End Game', N'Cuối cùng thì siêu siêu bom tấn lớn nhất năm đã đổ bộ các phòng vé toàn cầu rồi các bạn nè. Chắc hẳn đây là phim mà việc đọc review không còn ý nghĩa gì với người xem nữa vì dù chê hay khen, bạn cũng phải ra rạp thưởng thức cơn bão này mà thôi. Hiếm có phim nào mà dù khi xem xong đã 2h30 sáng nhưng rạp vẫn full như lúc 19-20h00 các ngày cuối tuần, đã đủ để chúng ta thấy được sức hút vô biên của bộ phim thứ 22 đến từ thương hiệu Marvel này. Nào, hãy cùng Ghiền review phim Avengers: Endgame nha. Yên tâm, mình sẽ không tiết lộ nội dung gì của phim đâu nè.
<br>
<br>
<b>Cốt truyện:</b> Nối tiếp phần trước – Avengers Infinity War khi mà Thanos búng tay, một nửa sinh vật trong vũ trụ biến mất, những siêu anh hùng còn sót lại phải sống trong một cuộc sống đầy tuyệt vọng và hối tiếc. Tên ác nhân Thanos vẫn còn ở một nơi nào đó ngoài vũ trụ, liệu rằng các Avengers còn đủ sức và động lực để lật ngược thế cờ cũng như end game thật sự không? Hãy ra rạp để khám phá những câu hỏi trên các bạn nhé.
<br>
<br>
Đầu tiên phải khẳng định rằng, phim nào mà hay thì dù dài cỡ nào chúng ta cũng thấy nhanh và Avengers: Endgame là một phim như thế. Ba tiếng trôi qua trong rạp thực sự không lâu như chúng ta ngồi đợi bạn gái make up trước khi đi chơi và cứ như thể còn 3 phút cuối cùng của thi học kỳ vậy. Tuy vậy, nếu chia bộ phim thành 3 phần, mỗi phần 1 tiếng thì ở tiếng đầu tiên, mọi thứ diễn ra rất chậm, thậm chí có thể nói là dài lê thê và khiến nhiều người mới với dòng phim này sẽ cảm thấy buồn ngủ luôn ấy.
<br>
<br>
Ở tiếng thứ 2, mạch phim tăng tốc đột ngột, mọi việc diễn ra quá gấp gáp mà nếu bạn lơ là một xíu hoặc chưa xem 21 phần phim trước sẽ cảm thấy khá bỡ ngỡ và không biết điều gì đang diễn ra. Thế nhưng từ 15 phút tiếp theo trở đi, bộ phim là tất cả những gì bạn muốn, hấp dẫn, nghẹt thở, hoành tráng và mãn nhãn. Khoảng 10 phút cuối là phần kết luận, yên ả như mặt hồ để bộ phim trở về với đúng tên gọi của nó. Vẫn còn vài cảnh thừa mà nếu cắt bỏ khỏi phim thì mạch phim sẽ ổn định hơn í các bạn.', N'4K', N'Anthony Russo, Joe Russo', CAST(N'2019-04-26' AS Date), 182, N'Tiếng Việt', 0, N'TcMBFSGVi1c', N'9jZ01i92JI8', N'avenposter.jpg', N'avenhinh1.jpg', N'avenhinh2.jpg', N'avenhinh3.jpg', N'avenhinh4.png', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'AVEN12', N'The Avengers (2012)', N'<b>Biệt đội Siêu anh hùng 1 (The Avengers 2012)</b> là bộ phim với sự góp mặt của những nhân vật cộm cán nhất của vũ trụ điện ảnh Marvel. Trong bộ phim này, sự kết hợp của các siêu anh hùng không hề nằm trong mục đích của chính họ. Nhưng vô tình, khi trái đất đứng bên bờ bị xâm lấn, tất cả phải nắm chặt tay nhau để đẩy lùi nguy cơ diệt vong của trái đất
<br>
<br>
Biệt đội Siêu anh hùng 1 (The Avengers 2012) ngay từ khi ra mắt đã nhận được đánh giá tích cực từ hầu hết những nhà phê bình phim và thiết lập nhiều kỷ lục phòng vé trên toàn cầu, trở thành bộ phim có doanh thu mở màn ấn tượng nhất tại Bắc Mỹ và là phim cán mốc 1 tỷ đô nhanh nhất trên toàn thế giới. Thời điểm đó, bộ phim Biệt đội siêu anh hùng còn được xếp vị trí  thứ 3 trong danh sách những phim ăn khách nhất của điện ảnh Hoa Kỳ.
<br>
<br>
Đây là bộ trong những bộ phim có những trận đấu mãn nhãn nhất của Marvel
<br>
<br>
<b>Loki – mầm họa đến từ Asgard</b>
<br>
<br>
Nối tiếp câu chuyện đã diễn ra ở phần phim Solo về Thor, sau khi phát hiện ra thân phận thật sự của mình, Loki vô cùng thất vọng và trở thành vị thần nổi loạn.
<br>
<br>
Lúc này, vị thần lừa lọc gặp gỡ The Other – thủ lĩnh của một chủng tộc ngoài Trái Đất –( tên là Chitauri) hắn là thủ hạ của một kẻ bí ẩn. The Other sở hữu một cây quyền trượng gắn đá Tâm trí với mục đích chiếm đoạt khối Tesseract. Hắn và Loki thực hiện giao dịch và trao cho Loki đội quân của mình để xâm chiếm Trái Đất.
<br>
<br>
Lúc này, ở trái đất, Nick Fury – Giám đốc của S.H.I.E.L.D và trung tá Maria Hill đi đến trung tâm nghiên cứu chức năng, nơi việc sơ tán đang diễn ra, Tiến sĩ Erik Selvig là người dẫn đầu nhóm nghiên cứu tại đây. Đặc vụ Phil Coulson giải thích rằng khối Tesseract đang phát ra một nguồn năng lượng bất thường. Mọi người tập trung lại phòng thí nghiệm để theo dõi viên đá Nó đột ngột phát ra một luồn ánh sáng lớn và mở ra cánh cổng đưa Loki đến Trái Đất. Loki dùng sức mạnh làm bị thương nhiều người có mặt tỏng phòng thí nghiệm, cướp khối Tesseract, tẩy não tiến sĩ Selvig và đặc vụ Clint Barton và một vài người khác đi theo hắn.', N'HD+', N'Joss Whedon', CAST(N'2012-04-27' AS Date), 144, N'Tiếng Việt', 0, N'eOrNdBpGMv8', N'eOrNdBpGMv8', N'avengerposter.jpg', N'avengerhinh1.jpg', N'avengerhinh2.jpg', N'avengerhinh3.jpg', N'avengerhinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'BAT', N'Batman: The Dark Night', N'<b>The Dark Knight</b> là một tượng đài điện ảnh của thể loại phim siêu anh hùng, được các nhà phê bình trên thế giới đánh giá là phim siêu anh hùng hay nhất mọi thời đại. Ra mắt vào tháng 7/2008 với bàn tay của đạo diễn bậc thầy Christopher Nolan, Kỵ sĩ bóng đêm đã phá kỷ lục về số lượng vé bán trước và doanh thu cùng với hàng loạt đề cử và giải thưởng điện ảnh danh giá. Tuy nhiên, vào thời điểm năm 2008, thực sự Ghiền review cũng như nhiều bạn khán giả Việt khác chưa có điều kiện để thưởng thức siêu phẩm này ở các rạp chiếu phim.
<br>
<br>
May mắn thay, vừa qua Ghiền Review đã có dịp xem lại bom tấn này trên màn ảnh rộng tại rạp Beta Cinema Cao thắng. Đây là chương trình kỷ niệm 10 năm phim The Dark Knight được công chiếu cũng như tưởng niệm sự ra đi của thiên tài diễn xuất Heath Ledger. Sự kiện này đang được diễn ra liên tục tại Beta Cineplex Cao Thắng từ ngày 20/4 – 27/4/2018 với ba suất chiếu 16h, 19h và 20h30 hằng ngày. Đây thực sự là cơ hội hiếm có cho những ai đã, đang và sẽ hâm mộ các siêu anh hùng của DC nói riêng và yêu mến The Dark Knight nói chung, được thưởng thức và trải nghiệm bom tấn này trên màn chiếu rộng, ghế ngồi êm và âm thanh sống động. Nào, hãy cùng Ghiền review một số cảm nhận về bộ phim kinh điển này nhé.
<br>
<br>
<b>Một bộ phim vượt qua các khuôn mẫu có sẵn</b>
<br>
<br>
Phải nhận xét thẳng thắn rằng The Dark Knight nằm trong bộ ba phim về Batman của hãng DC nhưng xét ở một khía cạnh nào đó thì Kỵ sĩ bóng đêm không đơn thuần chỉ là bộ phim về siêu anh hùng mà tác phẩm như một bài tranh luận giữa tội ác và công lý, là một màn đấu trí căng não giữa hai bên chính kiến về đạo đức và xã hội. Bộ phim này khác hẳn những phim siêu anh hùng khác khi ở đó là cuộc chiến giữa những siêu nhân có khả năng phi phàm đối đầu với những con quái vật với âm mưu hủy diệt thế giới.
<br>
<br>
The Dark Knight là cuộc chiến giữa siêu anh hùng con người nhất (Batman) với kẻ thù truyền kiếp, điên loạn nhưng lại thâm sâu, khó lường như Joker. Chính điều này đã tạo nên nét riêng của bộ phim: vừa gần gũi, vừa quen thuộc, vừa phi lý nhưng lại có thể lý giải bằng những suy luận hợp lý, qua đó tạo nên sức hút cho người xem và khiến họ phải trầm trồ, thán phục với cách suy nghĩ của những nhà làm phim.', N'HD+', N'Christopher Nolan', CAST(N'2008-07-14' AS Date), 152, N'Tiếng Việt', 0, N'EXeTwQWrcwY', N'EXeTwQWrcwY', N'batdnposter.jpg', N'batdnhinh1.jpg', N'batdnhinh2.jpg', N'batdnhinh3.jpg', N'batdnhinh4.jpg', 0)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'BIGH24', N'Big Hero 6', N'<b>Nội dung phim</b>
<br>
<br>
Biệt đội Big Hero 6 là bộ phim được sản xuất với sự kết hợp của Disney và Marvel, kể về Hiro Hamada – thần đồng nhỏ tuổi và Baymax – chú robot chăm sóc sức khỏe được phát minh bởi anh trai của Hiro. Từ một cậu nhóc chỉ thích đấu robot, Hiro đã được anh trai của mình dẫn đến ngôi trường anh đang theo học và những điều thú vị cậu bé 13 tuổi gặp tại đây đã khiến Hiro quyết tâm trở thành bạn cùng trường với anh trai. Thế nhưng ngày cậu nhận được lời mời nhập học, cũng là lúc anh trai Hiro mất mạng do cố gắng cứu giáo sư khỏi đám cháy.
<br>
<br>
Đau lòng bởi sự ra đi đột ngột của anh trai, Hiro thu mình khỏi thế giới xung quanh và từ chối giao tiếp với tất cả mọi người. Nhưng may mắn thay Hiro có Baymax ở bên, Baymax không chỉ là món quà anh trai để lại cho cậu nhóc mà còn giúp cậu nhóc phát hiện ra bí mật khủng khiếp trong đám cháy đã cướp đi tính mạng anh trai. Và với sự giúp đỡ của Baymax và những người bạn thân của anh trai, Hiro đã quyết phải lột bỏ tấm mặt nạ của kẻ hung ác.
<br>
<br>
Big Hero 6 là bộ phim dành cho tất cả mọi đối tượng khán giả từ người lớn đến trẻ nhỏ. Nội dung phim khá đơn giản nên các bạn nhỏ hoàn toàn có thể hiểu được những gì đang diễn ra, và bị cuốn vào cuộc truy tìm kẻ xấu của Hiro và những người bạn. Còn đối với những khán giả lớn tuổi thì bộ phim cho thấy được bản chất xấu xa ẩn sâu trong mỗi người, chỉ khi bị đẩy đến bước đường cùng họ sẽ trở nên vô cùng đáng sợ. Cuối cùng cái thiện cũng sẽ chiến thắng cái ác và ai cũng cần sự đồng hành của những người bạn để cuộc sống trở nên trọn vẹn hơn.
<br>
<br>
Bộ phim ghi điểm với khán giả bởi câu chuyện về sự trưởng thành của Hiro. Khi đang ở độ tuổi dậy thì ẩm ương, lại phải chịu nỗi mất mát quá lớn đã khiến cuộc sống của Hiro như không có lối thoát. Nhưng với tình cảm và sự quan tâm chân thành đến từ bạn bè, đặc biệt là Baymax Hiro đã trưởng thành hơn và có những suy nghĩ cực kỳ chính chắn, cũng rất thiện lương.
<br>
<br>
Bộ phim cũng mang đến cho khán giả những tình huống đầy hài hước đến từ anh bạn Baymax mập mạp. Một chú robot được lập trình để chăm sóc sức khỏe đã trở thành một người bạn rất đáng yêu và sẵn sàng làm những điều không có trong lập trình để bảo vệ người bạn của mình. Baymax đã mang đến cho các bạn nhỏ rất nhiều tiếng cười thích thú.', N'Full HD', N'Don Hall, Chris Williams', CAST(N'2014-11-07' AS Date), 108, N'Song ngữ ', 0, N'z3biFxZIJOQ', N'z3biFxZIJOQ', N'bigheroposter.jpg', N'bigherohinh1.jpg', N'bigherohinh2.jpg', N'bigherohinh3.jpg', N'bigherohinh4.png', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'BP2018', N'Black Panther', N'<b>Black Panther</b> là tác phẩm tiếp theo của nhà Marvel và là phần phim đầu tiên nói về siêu anh hùng gốc Phi với màn debut đầy ấn tượng trong Civil War. Bộ phim được đánh giá cao bởi ê kip thực hiện bộ phim đều là người da màu và những ý nghĩa về thế giới hiện tại mà phim mang đến. Với doanh thu 5 ngày gần nửa tỷ USD trên toàn thế giới và điểm đánh giá 97% trên chuyên trang Rotten Tomatoes, chắc chắn là một sự bảo chứng tin cậy cho sự thành công của Phim. Hãy cùng Ghiền Review phim Black Panther – Chiến binh báo đen nhé.
<br>
<br>
<b>Cốt truyện:</b> Phim lấy bối cảnh sau Civil War của Marvel một vài tháng, khi T’Challa trở về quê hương Wakanda để thừa kế ngai vàng sau cái chết của cha mình. Theo phong tục ở đây, anh sẽ bị tước bỏ sức mạnh của Black Panther đang mang trong người để bình đẳng tiếp nhận sự khiêu chiến từ 5 bộ lạc và những hoàng thân quốc thích của mình. Với khả năng vượt trội, T’Challa đã trở thành tân quốc vương của Wakanda và phim xoay quanh sự trưởng thành trong vai trò mới này của chàng chiến binh báo đen. Đất nước mà anh cai trị là một quốc gia phát triển vượt bậc hơn bất cứ quốc gia nào trên trái đất nhưng lại ẩn mình dưới vỏ bọc của một đất nước nghèo nàn, thuộc thế giới thứ 3. Sự vượt bậc của Wakanda đến từ việc sở hữu mỏ kim loại có nguồn gốc ngoài hành tinh là vibranium. Chính vì vậy, kim loại quý này thường xuyên bị những kẻ xấu ăn trộm ra thế giới bên ngoài và nhiệm vụ của Black Panther là tìm ra kẻ đó và mang về Wakanda xét xử. Tất cả việc này đều là âm mưu của Killmonger – Em họ của T’Challa nhằm tìm cách quay về Wakanda để lật đổ T’Challa do những hận thù với cha của Black Panther và khác biệt về tư tưởng lãnh đạo đất nước.
<br>
<br>
Nhìn chung, nội dung phim đơn giản và không có nhiều điểm nhấn. Tuy nhiên cách kể chuyện của phim rất trơn tru nên không có nhiều tình tiết để khán giả cảm thấy bị vướng lại và chỉ cần thả lỏng đầu óc để cùng xem nội dung diễn tiến ra sao. Nội dung phim dù có liên quan với những phần phim khác của vũ trụ Marvel nhưng vẫn đủ để người xem lần đầu vẫn nắm bắt trọn vẹn tác phẩm. Bởi vì phim diễn ra tương đối đồng đều, không thực sự có nhiều cao trào nên có những phân đoạn có thể mang đến cảm giác hơi chán một chút. Tuy nhiên với cách chuyển cảnh tốt và xây dựng nhân vật chắc tay của đội ngũ biên kịch đã giúp bộ phim rất mạch lạc. Đây là phim riêng giới thiệu về black panther nhưng thực sự nhân vật chính của chúng ta chưa được khắc họa rõ nét về những điểm mạnh của bản thân. Nhiều người xem sẽ chỉ nhớ về anh với bộ giáp siêu hiện đại và phương hướng lãnh đạo đất nước cấp tiến cũng như dám nhìn nhận sai lầm và sửa sai, ngoài những điều này thực sự không còn điều gì đáng nhớ với tên gọi và sức mạnh của chiến binh báo đen. Phim có hai phản diện khá tốt, tuy nhiên Ulysses Klaue thì có vẻ hơi điên với cái chết quá đơn giản so với sự tinh quái của một gã trộm cắp, buôn kim loại quý suốt mấy chục năm (mặc dù diễn xuất của chàng khỉ Caesar rất tốt) cũng như Killmonger với âm mưu và lý do tạm chấp nhận được nhưng vẫn không đủ độ ngầu, sức thuyết phục và nguy hiểm mà phản diện này cần có. Phần đầu phim giới thiệu tốt về Wakanda và vị vua T’Challa, phần giữa phim tương đối dài để kể về mâu thuẫn giữa các nhân vật và phần cuối phim kết lại bằng một trận đánh mãn nhãn nhưng chưa thực sự thỏa mãn. Ý nghĩa của phim mang đến cho người xem đó chính là việc lên án nạn phân biệt chủng tộc, sự ích kỷ của các quốc gia và tình anh em máu mủ. Tóm lại, cốt truyện phim an toàn, dễ theo dõi dù thiếu điểm nhấn, mang một số thông điệp lớn cho thế giới và khiến người xem thấy quen quen như đang xem Ironman hay Vua sư tử vậy. Ghiền review xin  chấm cốt truyện 7/10 nhé.', N'Full HD', N'Ryan Coogler', CAST(N'2018-02-23' AS Date), 134, N'Tiếng Việt', 0, N'xjDjIWPwcPU', N'xjDjIWPwcPU', N'bpposter.jpg', N'bphinh1.jpg', N'bphinh2.jpg', N'bphinh3.jpg', N'bphinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'CACW16', N'Captain America: Civil War', N'<b>Captain America: Civil War</b> (Tựa tiếng Việt: Captain America: Nội chiến siêu anh hùng)  lấy mốc thời gian không lâu sau khi các sự kiện trong Avengers: Age of Ultron kết thúc. Những siêu anh hùng tiếp tục công cuộc trừ gian diệt bạo. Song, mọi thứ chuyển sang một hướng hoàn toàn khác sau một sự cố. Nhóm Avengers trong lúc ngăn cản một quả bom phát nổ đã vô tình để nó hất vào một tòa nhà khiến không ít dân thường thiệt mạng. Vụ việc chính là giọt nước tràn ly buộc chính phủ và Liên hiệp quốc vào cuộc. Họ quyết định ra một bộ luật nhằm kiểm soát hoạt động của các siêu anh hùng. Nhóm Avengers cũng bắt đầu tách làm hai nửa. Một nửa đứng đầu bởi Captain America – Steve Roger (Chris Evans) cùng mong muốn các Avenger được tự do bảo vệ nhân loại mà không có sự can thiệp của chính phủ. Nửa còn lại đứng đầu bởi Ironman – Tony Stark (Robert Downey Jr.), ủng hộ việc quản lý và giám sát của chính phủ. Ngay sau đó, Winter Soldier – Bucky (Sebastian Stan) bất ngờ xuất hiện kèm một biến cố dữ dội đẩy xung đột lên cao tới đỉnh điểm. Một cuộc nội chiến bắt đầu từ đây.
<br>
<br>
Captain America: Civil War có đủ những gì khán giả cần của một bom tấn hè lẫn những gì người ta thường kì vọng ở một sản phẩm của Marvel Studios:  kịch bản đủ kịch tính lẫn những âm mưu bất ngờ, các cảnh hành động hoành tráng và dồn dập, sự xuất hiện đầy bất ngờ của các siêu anh hùng khác. Và tất nhiên, không thể nào thiếu được những câu thoại hay tình huống hết sức hài hước, đúng chất Marvel. Song, rất nhiều vấn đề cũng đồng thời nảy sinh.
<br>
<br>
Qua trailer thì các bạn cũng thấy, có hai phe đánh nhau, một bên là phe Ironman, bao gồm Black Widow, Vision, WarMachine, một bên là Captain America với Hawk Eyes và mấy người khác.
', N'Full HD', N'Anthony Russo', CAST(N'2016-04-27' AS Date), 147, N'Tiếng Việt', 0, N'dKrVegVI0Us', N'dKrVegVI0Us', N'caposter.jpg', N'cahinh1.jpg', N'cahinh2.jpg', N'cahinh3.jpg', N'cahinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'CM2019', N'Captain Marvel', N'<b>Cốt truyện:</b> Phần phim riêng đầu tiên về Captain Marvel đưa người xem theo hành trình tìm lại ký ức của Carol Danvers ở bối cảnh năm 1995. Cô vốn là người trái đất nhưng không biết nguyên do vì sao mà Captain Marvel lại trở thành một thành viên của biệt đội Starforce do chủng tộc Kree lập ra để ngăn cản âm mưu thôn tính vũ trụ của chủng tộc Skrull. Trong một lần chạm trán với lũ Skrull, cô bị rơi xuống trái đất và nhiệm vụ mới của cô là tìm kiếm thứ mà tên trùm Talos của loài Skrull đang truy lùng tại nơi đây. Trên hành trình này, cô đã gặp được đặc vụ Nick Fury và hai người đã cùng đồng hành để khám phá ra những bí ẩn đằng sau danh tính thực sự của Captain Marvel.
<br>
<br>
Chọn ngày ra rạp đúng dịp lễ 8/3, Captain Marvel được Marvel hi vọng sẽ là một biểu tượng nữ quyền mới cũng như là một tấm gương để các bé gái có thể noi theo và tự tin vào bản thân mình hơn. Tuy nhiên, Captain Marvel lại không đáp ứng được kỳ vọng đó vì các thông điệp về phái nữ từ vẻ đẹp, sự tinh tế, nhạy cảm hay sức mạnh của họ lại được phim truyền tải một cách hời hợt theo cách khiến nhiều người kỹ tính có thể cảm thấy khó chịu.
<br>
<br>
Theo đó, hình ảnh người phụ nữ trong phim bị những gã đàn ông coi thường và giễu cợt chỉ xuất hiện trong đúng 2 cảnh phim rất rất phụ, mọi thứ diễn ra quá nhanh lẹ nên hầu như ít người cảm nhận được yếu tố phân biệt giới tính ở đây. Hơn nữa, nữ quyền không phải là cứ hạ thấp những người đàn ông xuống để tôn vinh người phụ nữ lên như cách mà Captain Marvel đã làm, đó phải là sự mạnh mẽ, gan dạ, xả thân vì công lý, vì những người yếu thế mà Wonder Woman đã làm khi một mình xông lên vùng đất No Man’s Land – nơi mà những anh lính đang co ro cố thủ không dám băng qua.
<br>
<br>
Trở lại về với cốt truyện của phim, Đại úy Marvel sở hữu một nội dung đơn giản, xem để giải trí và giới thiệu được phần nào về nhân vật nữ hùng mạnh bậc nhất của MCU. Tuy nhiên, cách kể chuyện và tình tiết trong phim khá đều đều, tình tiết không quá đặc sắc và những cú đảo chiều khá dễ đoán và tương đối cũ nên sự hấp dẫn của phim bị giảm sút đáng kể. 2 tiếng trôi qua trong rạp thật sự rất dài và có không ít lần bạn sẽ ngáp và hơi mất tập trung xíu vì buồn ngủ í. Tuy nhiên, nếu là fan ruột của Marvel thì các bạn vẫn sẽ khá ok với nội dung phim í.
', N'Full HD', N'Anna Boden, Ryan Fleck', CAST(N'2019-03-07' AS Date), 124, N'Tiếng Việt', 0, N'0LHxvxdRnYc', N'0LHxvxdRnYc', N'captainmarvel.jpg', N'hinh1.jpg', N'hinh2.jpg', N'hinh3.png', N'hinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'DSBM14', N'Stand by Me Doraemon', N'Đối với thế hệ 7x cuối và 8x, chắc hẳn không ai xa lạ với những câu chuyện về chú mèo máy thông minh Doraemon, Nobita và những người bạn tinh nghịch đáng yêu cùng khu phố. Có thể nói những cuốn truyện tranh trắng đen với hình ảnh ngộ nghĩnh cùng những câu chuyện về những chuyến phưu lưu qua cỗ máy vượt thời gian của Doreamon chứa đầy những kỷ niệm của thời thơ ấu. Stand by Me sẽ dành cho những ai đã từng là thiếu nhi.
<br>
<br>
Doraemon hay tiếng Việt chúng ta vẫn đọc là Đôrêmon là một bộ truyện tranh của Nhật Bản được sáng tác từ năm 1969 dành cho tuổi thiếu nhi. Tác phẩm tuyệt vời này của Fujiko Fujio (bút danh chung của 2 họa sĩ Manga Fujimoto Hiroshi và Abiko Motoo). Theo như tác giả thì sở dĩ có nhân vật Doraemon với hình dáng như chúng ta thấy vì trong một buổi chiều Hiroshi thấy con gái chơi với con lật đật, nên ông nảy ra ý định kết hợp giữa con mèo và lật đật làm tạo hình nhân vật cho Doraemon.
<br>
<br>
Tại Nhật Bản tính đến năm 1999 đã có khoảng 100 triệu tập đã được tiêu thụ ở nước này. Bên cạnh đó với sức hút từ bộ truyện tranh không chỉ dành riêng cho thiếu nhi, có hàng ngàn tập phim ngắn được phát sóng và gần 40 tập phim dài về các nhân vật hoạt hình này. Sau Nhật Bản, Doraemon được phát hành trên khắp thế giới, đặc biệt khu vực Châu á trong đó có Việt Nam đã dành rất nhiều tình cảm và sự hâm mộ đặc biệt cho bộ truyện tranh đáng yêu này.
<br>
<br>
Đối với khán giả Việt Nam thì những năm 1990 thì những bộ truyện tranh là kênh giải trí tuyệt vời nhất mà bất kỳ đứa trẻ nào cũng mong muốn sở hữu, thậm chí việc đọc ké cũng là niềm ao ước của rất nhiều bạn, trong đó có mình J. Doraemon mở ra một chân trời hoàn toàn đẹp đẽ và tươi sáng với các thiết bị điện tử thông minh và rất lạ lẫm so với thời điểm đó, khán giả nhí có thể thả trí tượng tượng và những ước mơ bay cao theo những chiếc chong chóng tre.
<br>
<br>
Với Doraemon: Stand by Me, là bộ phim hoạt hình 3D đầu tiên về Doraemon, thế nên phần hình ảnh và hình dáng nhân vật rất khác khác biệt so với những tập phim của phiên bản 2D đã chiếu.
<br>
<br>
<b>Về cốt truyện,</b> Stand by Me không dựa trên một tập phim hay chuyến phưu lưu cụ thể nào của mèo máy và các bạn mà lắp ghép khéo léo những câu chuyện ngắn thành một nội dung xuyên suốt. Bộ phim kể về lý do tại sao mèo ú xuất hiện bên cạnh Nobia hậu đậu, ngốc nghếch nhưng tốt bụng. Qúa trình lớn lên của đôi bạn với rất nhiều những kỉ niệm vui buồn cho đến khi Nobita cảm thấy thật sự hạnh phúc. Hoàn thành được sứ mệnh của mình, cũng là lúc mèo máy phải trở về tương lai
<br>
<br>
Stand by Me vẫn giữ nguyên phong cách vốn có của bộ truyện tranh gốc. Hài hước kiểu rất ngố, đúng theo tâm lý trẻ con. Nhẹ nhàng, trong sáng nhưng rất đỗi tình cảm. Khán giả có thể cười nghiêng ngả với những trò đùa tai quái Xeko, những trò bắt nạt có 1 không 2 của Chaien mập và hình ảnh xuka đáng yêu. Đặc biệt tạo hình của Xuka trong tương lai cực kỳ xinh đẹp và tinh tế. Ngoài ra các nhân vật như Chaiko, Đekhi và các nhân vật khác với tạo hình “cực chuẩn”, theo đúng trí tưởng tượng của mình trong phiên bản truyện tranh.
<br>
<br>
Khán giả cũng dễ dàng bắt gặp những hình ảnh hết sức quen thuộc, mà chỉ cần thấy lập tức những câu chuyện xung quanh “chốn cũ” lại ùa về, một cảm giác thực sự rất khó tả. Đó là khoảng đất trống có những chiếc cống trống mà Nobita và các bạn vẫn chui ra vào, những ngôi nhà và con đường đặc trưng của xứ sở hoa anh đào, mái nhà, con chó hung dữ…tất cả đều rất gần gũi và thân quen.', N'HD', N'Yamazaki Takashi, Ryuichi Yagi', CAST(N'2014-08-08' AS Date), 94, N'Song ngữ ', 0, N'dnRAVwBBRRA', N'dnRAVwBBRRA', N'doremonsbmposter.jpg', N'doremonsbmhinh1.png', N'doremonsbmhinh2.jpg', N'doremonsbmhinh3.png', N'doremonsbmhinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'FDN03', N'Finding Nemo', N'Vào thời điểm <i>"chào đời"</i>, <b>Finding Nemo</b> mới là bộ phim thứ năm trong lịch sử xưởng hoạt hình Pixar. Từ đó cho đến nay, dù 8 người anh em khác lần lượt được giới thiệu tới khán giả nhưng Finding Nemo vẫn là một trong những tác phẩm xuất sắc nhất, thể hiện tinh thần, phong cách Pixar rõ nét nhất. 
<br>
<br>
Bộ phim kể về hành trình đi tìm con xuyên đại dương của chú cá hề Marlin (Albert Brooks lồng tiếng). Trong buổi đầu tiên đi học, cậu bé Nemo vì bất bình với sự bảo bọc quá kỹ của cha nên đã có hành động mạo hiểm, để rồi bị bắt tới tận thành phố Sydney. Dù chỉ còn chút ít phần trăm hy vọng nhưng Marlin vẫn quyết tâm giải cứu cậu con trai duy nhất. Trên đường đi, Marlin đồng hành với cô nàng lắm mồm nhưng tốt bụng Dori (Ellen DeGeneres). 
<br>
<br>
Trước nay, thể loại hoạt hình sinh ra mặc nhiên dành cho trẻ em. Thế nhưng với Findning Nemo, Pixar đã hoàn toàn làm thay đổi lối tư duy đã tồn tại mấy chục năm qua. Thông qua tính chất phiêu lưu kỳ diệu, sự hóm hỉnh, hài hước trong chi tiết, Đi tìm Nemo không những thu hút khán giả nhỏ tuổi mà còn hấp dẫn cả những người trưởng thành. 
<br>
<br>
Các nhân vật trong phim đều để lại ấn tượng hết sức sâu sắc. Ngoài hai nhân vật chính Marlin và Dori đồng hành với chúng ta từ đầu đến cuối, Pixar đã tạo cho các nhân vật phụ những đặc điểm, cá tính rất riêng, từ 3 con cá mập có vẻ bề ngoài hung dữ, chú cá voi khổng lồ, đám chim biển ngốc nghếch, rùa già cho đến đám sinh vật trong bể cá cảnh. 
<br>
<br>
Ở Finding Nemo, người xem được chứng kiến một cuộc phiêu lưu vô cùng kỳ thú, gặp gỡ những nhân vật hài hước, thậm chí có phần chập mạch, lắm mồm và đặc biệt chìm đắm trong thế giới đại dương đẹp đến kinh ngạc. Hiếm có bộ phim nào khiến khán giả phải há hốc mồm vì các nét vẽ chi tiết, chuyển động mượt mà, cách phối màu tuyệt vời như Finding Nemo. 
<br>
<br>
Bên cạnh sự hài hước, đáng yêu, bộ phim còn chứa đựng nhiều kịch tính. Kịch bản không đơn thuần chỉ cho câu chuyện diễn ra một chiều mà để các tuyến nhân vật phát triển song song. Ngoài đường dây câu chuyện đi tìm con của Marlin và Dori, Nemo cùng những người bạn mới quen cũng không hề thụ động. Chúng tìm cách thoát khỏi bể cá, trốn tránh con người để trở về với biển cả. Kịch tính được thắt nút và mở nút cho đến tận phút cuối. ', N'HD+', N'Andrew Stanton', CAST(N'2003-05-30' AS Date), 100, N'Song ngữ ', 0, N'2zLkasScy7A', N'2zLkasScy7A', N'fnposter.jpg', N'fnhinh1.jpg', N'fnhinh2.jpg', N'fnhinh3.jpg', N'fnhinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'FZ22019', N'Frozen 2', N'<i>Frozen</i> là câu chuyện đậm màu cổ tích, đơn giản và phù hợp với các bé thiếu nhi. Frozen 2 lại mang đến một cốt truyện sâu sắc, đa chiều hơn. Ẩn chứa nhiều thông điệp hợp thời về môi trường, chủng tộc và nữ quyền. 
<br>
<br>
Sau khi kết thúc phần trước, chị em Elsa và Anna cùng cai trị vương quốc Arendelle hòa bình thịnh vượng bên cạnh Kingoff, chú lừa Sven và người tuyết Olaf. Thế nhưng, thời kỳ yên bình bỗng chốc tan biến khi Elsa bắt đầu nghe một tiếng hát bí ẩn và vô tình đánh thức những tinh linh bí ẩn. Nữ hoàng băng giá nhận ra rằng bản thân đã đẩy cả vương quốc vào nguy hiểm. Vì ngăn cản thảm họa tự nhiên sắp ập đến Arendelle, theo lời khuyên của Pabbie, Elsa quyết định tìm đến khu rừng bí ẩn linh thiêng, luôn bị bao vậy bởi sương mù dày đặc. Dĩ nhiên, Anna không cho chị gái phiêu bạt một mình. 
<br>
<br>
<b>Nữ Hoàng Băng Giá 2</b> chẳng hề đơn giản, cũng không dễ dàng để vừa xem đoạn đầu đã biết ai tốt ai xấu như phần trước. Tuyến truyện đi sâu vào từng chi tiết, cài cắm suốt 103 phút. Bí mật về quá khứ cùng những con người liên quan đến khu rừng kỳ lạ dần dần xuất hiện. Mỗi phút mỗi cảnh, khán giả lại nhận ra thêm bất ngờ mới. Xuất sắc nhất là, cú twist quan trọng- nút thắt mọi vấn đề cài cắm rất “chuẩn”. Biên kịch xử lý nội dung Frozen 2 hợp lý, hết sức nhân văn và cũng đầy bất ngờ. Có thể nói, kịch bản là điểm ấn tượng nhất, vượt trội nhất của Frozen 2 so với phần đầu.', N'Full HD', N'Jennifer Lee', CAST(N'2019-11-22' AS Date), 103, N'Tiếng Việt', 0, N'Zi4LMpSDccc', N'Zi4LMpSDccc', N'fz2poster.jpg', N'fz2hinh1.jpg', N'fz2hinh2.jpg', N'fz2hinh3.jpg', N'fz2hinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'IRON08', N'Iron man(2008)', N'<b>Tập đoàn sản xuất vũ khí hàng đầu thế giới và bộ giáp đầu tiên</b>
<br>
<br>
Tony Stark-người thừa kế Tập đoàn không chỉ là một tỷ phú mà còn là thiên tài với lối sống khá là phóng túng và tùy hứng. Tuy nhiên, trong công việc ông là một người vô cùng nghiêm túc chính vì vậy mà chính Tony đã đưa cơ ngơi cha mình để lại phát triển lên một tầm cao mới.
<br>
<br>
Stark Industries là tập đoàn chuyên nhận thầu quốc phòng. Bất cứ ai sở hữu những vũ khí do Tony sáng chế đều sở hữu cơ hội trở thành người mạnh nhất thế giới. Một lần, Tony Stark cùng với Trung tá James Rhodes sang Afghanistan khi nước này đang chìm trong chiến tranh không dứt để giới thiệu một phát minh tên lửa mới có tên “Jericho” với ứt hủy diệt kinh khủng. Sau buổi thuyết trình, đoàn hộ tống Tony bị phục kích khiến anh bị thương nặng bởi chính những vũ khí mà mình tạo ra. Tony Stark bị bắt giam trong hang động thuộc xào huyệt của nhóm khủng bố Ten Rings.
<br>
<br>
Tony Stark được cứu sống bởi Yinsen, một người rất có tài cũng bị bắt như anh. Người bạn cùng cảnh ngộ này dùng một nam châm điện gắn vào giữa ngực Tony  để ngăn các mảnh đạn di chuyển và đâm vào tim. Khi Tony tỉnh lại, thủ lĩnh của Ten Rings là Raza đến gặp anh và yêu cầu Tony thiết kế tên lửa Jericho cho hắn,khi mọi việc đã hoàn thành Tony sẽ được tự do. Tony hiểu rằng hắn sẽ không bao giờ giữ lời hứa nên anh không đồng ý. Cho đến khi hắn mang tính mạng của Yinsen để uy hiếp anh. Dù bản tính cao ngạo không dễ kết bạn, nhưng Tony Stark thật sự cảm mến tài năng cũng như hoàn cảnh của Yinsen.', N'HD+', N'Jon Favreau', CAST(N'2008-05-16' AS Date), 126, N'Tiếng Việt', 0, N'8ugaeA-nMTc', N'8ugaeA', N'ironposter.jpg', N'ironhinh1.jpg', N'ironhinh2.jpg', N'ironhinh3.jpg', N'ironhinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'LION94', N'The Lion King(1994)', N'Được đồng đạo diễn bởi Roger Allers và Rob Minkoff, bộ phim hoạt hình năm 1994 của Disney – The Lion King đã giành giải Oscar cho phần nhạc phim (được Hans Zimmer soạn nhạc) và bài hát chính ‘Can You Feel the Love Tonight’ (của Elton John & Tim Rice), cùng với giải thưởng Quả cầu vàng cho phim chuyển động hay nhất – Nhạc kịch hay hài.
<br>
<br>
Năm 1997, Vua Sư Tử (The Lion King) xuất hiện lần đầu tiên trên sân khấu nhạc kịch Broadway, giành được sáu giải Tony; 22 năm sau, nó vẫn là một trong những hit lớn nhất của sân khấu Broadway, đánh dấu màn trình diễn thứ 9.000. Bộ phim kinh điển được yêu thích của Disney cũng truyền cảm hứng cho hai phần tiếp theo ra mắt vào năm 1998 – The Lion King II: Simba’s Pride (1998) và năm 2004 – The Lion King 1½ – và hai loạt phim truyền hình, về 2 nhân vật Timon và Pumbaa và The Lion Guard.
<br>
<br>
Giờ đây, sau sự thành công quan trọng và doanh thu phòng vế ấn tượng của bản làm lại The Jungle Book năm 2016, đạo diễn John Favreau sẽ bắt đầu vào dự án live action kết hợp công nghệ kỹ xảo để kể lại câu chuyện về Vua sư tử cho khán giả đương đại theo một khung hình khác mới mẻ hơn.
<br>
<br>
The Lion King 1994 là bộ phim hoạt hình đầu tiên của Disney khi nó được phát hành dựa trên một câu chuyện gốc thay vì một tác phẩm đã có sẵn. Câu chuyện được lấy ý tưởng rất nhiều từ bộ phim hoạt hình thập niên 1960 của William Shakespeare Hamlet và Osamu Tezuka, Kimba the White Lion, theo chân Simba (JD McCrary), một chú sư tử con sẽ kế vị cha đẻ của mình, Mufasa (James Earl Jones) trong tương lai.
<br>
<br>
Trong bộ phim hoạt hình năm 1994, chú của Simba là Scar (Chiwetel Ejiofor) đã âm mưu sát hại vua Mufasa, bi kịch ập đến khi Mufasa cứu Simba khỏi bầy linh dương giẫm đạp và sau đó bị anh trai độc ác Scar (Chiwetel Ejiofor) ám hại, sau đó Scar tìm cách đánh lừa Simba để cậu phải tự mình lưu vong, từ bỏ ngai vàng để hắn ngư ông đắc lợi ngồi vào vị ví trí mà Mufasa để lại.
<br>
<br>
Để rồi Simba từ bỏ vùng đất của mình và sống một cuộc đời du mục với hai người bạn gặp trên đường là cày meerkat Timon (Billy Eichner) và heo rừng Pumbaa (Seth Rogen). Trong một lần, người bạn thân nhất thời thơ ấu Nala (Beyonce) tình cờ gặp Simba (Donald Glover) đã trưởng thành và hai người như thể đã nảy sinh tỉnh cảm,sau nhiều biến cố xảy ra thì liệu Simba có tìm lại được những thứ đáng ra thuộc về cậu?', N'HD', N'Rob Minkoff, Roger Allers', CAST(N'1994-05-07' AS Date), 89, N'Tiếng Việt', 0, N'lFzVJEksoDY', N'lFzVJEksoDY', N'lionposter.jpg', N'lionhinh1.jpg', N'lionhinh2.jpg', N'lionhinh3.jpg', N'lionhinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'SMTA12', N'Spider Man: The Amazing', N'<b>Nội dung: </b>Nhà khoa học Richard Parker (Campbell Scott) đang chơi trò trốn tìm với con trai nhỏ Peter ( Max Charles ) thì anh phát hiện ra rằng phòng nghiên cứu của mình bị đột nhập. Sau khi nhanh chóng thu thập một số tài liệu ẩn, Richard và vợ Mary (Embeth Davidtz) đưa Peter đến sống cùng dì May (Sally Field) và chú Ben (Martin Sheen), sau đó rời đi một cách bí ẩn mà không nói cho Peter biết họ sẽ đi đâu.
<br>
<br>
Nhiều năm sau, thiếu niên Peter Parker (Andrew Garfield) đã trở thành một người bị xã hội xa lánh. Anh ta theo học tại trường trung học khoa học Midtown, nơi anh ta yêu mến Gwen Stacy (Emma Stone), trong khi thường xuyên bị bắt nạt bởi Flash Thompson đáng ghét (Chris Zylka)
<br>
<br>
Ở nhà, Peter tìm thấy một chiếc cặp chứa một số tài liệu cũ của cha mình và biết rằng cha anh đã làm việc với nhà khoa học đồng nghiệp Tiến sĩ Curtis Connors (Rhys Ifans) tại một công ty dược phẩm tên là Oscarorp. Tìm đường đến tòa nhà Oscarorp bằng cách giả vờ là một thực tập sinh, Peter lẻn vào một phòng thí nghiệm nơi “sinh học” cực kỳ mạnh mẽ đang được tạo ra từ những con nhện biến đổi gen. Một trong những con nhện trốn thoát khỏi thùng chứa của nó và cắn Peter. Trên chuyến tàu điện ngầm về nhà, Peter xô xát với một nhóm côn đồ và phát hiện ra rằng anh ta đột nhiên tăng sự nhanh nhẹn và sức mạnh. Khi trở về nhà, anh ta tìm thấy con nhện trốn trong áo khoác và cất nó đi.
<br>
<br>
Với những khả năng này, và trước việc chứng kiến cái chết của chú Ben trước mặt mình, anh quyết định trở thành một thứ gì đó vĩ đại hơn và sớm chấp nhận bản ngã thay đổi của ‘Người nhện’. Quay vòng qua thành phố New York, Peter Parker / Người nhện chiếm giữ vị trí anh hùng để cứu thành phố khỏi ‘Lizard’ quái dị.', N'HD+', N'Marc Webb', CAST(N'2012-06-29' AS Date), 136, N'Tiếng Việt', 0, N'nbp3Ra3Yp74', N'nbp3Ra3Yp74', N'smtaposter.jpg', N'smtahinh1.jpg', N'smtahinh2.jpg', N'smtahinh3.jpg', N'smtahinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'SOUL20', N'Soul', N'Được tạo nên bởi đạo diễn Pete Docter  và biên kịch là Kemp Powers, Soul mang những màu sắc tích cực  cho năm 2020, một năm với nhiều sự kiện khiến nhân loại khốn đốn. Với năng lượng tươi sáng đó bộ phim không hề mang sự châm biếm hay đả kích bất cứ ai, Soul đúng chất là một bản nhạc Jazz nhẹ nhàng đi vào tâm hồn người xem và thắp lên ngọn lửa tình yêu cuộc sống này trong mỗi người.
<br>
<br>
<b>Cốt truyện</b>: Xoay quanh Joe Gardner, một giáo viên trường trung học tại thành phố New York. Soul kể về ước mơ mà Joe ấp ủ kèm theo một tình yêu mãnh liệt dành cho nhạc Jazz. Nhưng ước mơ vẫn chỉ là mơ ước, Joe phải kiếm sống bằng nghề dạy nhạc tại một trường trung học, tuy vẫn được sống với âm nhạc nhưng đó không phải là thứ Joe thực sự muốn. Ông sinh ra là để chơi nhạc Jazz, ý nghĩ đó luôn tồn tại trong đầu ông.
<br>
<br>
Trong một ngày nọ như bao ngày Joe nhận được hai tin tốt, được nhận vào dạy chính thức và được diễn thử để tham gia vào buổi hoà nhạc Jazz cùng thần tượng của ông. Mẹ ông luôn ủng hộ việc ông đi dạy để có thể nuôi sống bản thân, còn Joe thì muốn sống với đam mê của mình hơn.
<br>
<br>
Buổi tập thử trước khi diễn đã thành công, Joe vui mừng về nhà để chuẩn bị cho buổi biểu diễn để đời. Nhưng một tai nạn không ngờ đã khiến linh hồn của Joe tách ra khỏi cơ thể và đến với miền đất The Great Beyond (Tạm dịch: Cõi Sau). Không muốn chấp nhận việc phải bỏ buổi biểu diễn, Joe vùng vẫy và rơi vào vùng The Great Before (Tạm dịch: Cõi Trước) nơi những linh hồn bắt đầu định hình tính cách và sở thích trước khi đến Trái Đất.
<br>
<br>
Chính nơi này, Joe gặp 22 và cả hai bắt đầu hành trình quay trở lại thân thể của Joe. Đây cũng là lúc cả hai được trải nghiệm cuộc sống, Joe trải nghiệm qua góc nhìn của một chú mèo còn 22 được trải nghiệm sống thử trong thân thể của Joe.
<br>
<br>
<b>Đánh giá</b>
<br>
<br>
Cách đặt vấn đề và kể chuyện của Soul rất hay, Joe đại diện cho người khao khát được sống và thực hiện ước mơ, 22 đại diện cho người thực sự không biết mục đích sống của mình là gì và đối với cô tất cả đều nhàm chán. Sự tương phản đó dẫn đến sự bổ sung cho nhau trong tính cách và cũng là tiền đề cho câu hỏi rằng: liệu cuộc sống của chúng ta có đáng để sống?
<Br>
<br>
Xuyên suốt hành trình, Joe luôn cố gắng để 22 thấy được cuộc sống là như thế nào, để cô cảm nhận qua từng giác quan của Joe. Từ những bước đi trên đôi chân, đến không khí choáng ngợp của New York và hương vị tuyệt vời của chiếc pizza,... nhưng đó là chưa đủ để một linh hồn như 22 có thể tìm ra được Tinh Hoả (Spark) của cô.
<br>
<Br>
Cũng từ Joe và 22, Soul cho người xem thấy được góc nhìn khác của cuộc sống chính nhân vật qua đôi mắt của một vật thể khác. Trước giờ chúng ta hay chính Joe chỉ chạy theo những điều mơ ước mà quên mất đi sự hiện diện của những người xung quanh, bản thân cũng chưa dám nói ra ước mơ của  mình, cũng không quan tâm đến cảm xúc của người khác. Tất cả chỉ dừng lại với những suy nghĩ làm sao có thể đạt được mục đích của bản thân, rằng tình yêu và ước mơ của chúng ta mới là chân ái, là thứ mọi người phải lắng nghe và chia sẻ với ta. Qua thân thể của chú mèo, Joe nhận ra mình đã bỏ lỡ những gì, nhận ra mình thiếu can đảm, rằng ngôn từ là thứ vũ khí vô hình nhưng vô cùng sắc bén. Sự chuyển biến tâm lý của Joe vô cùng nhịp nhàng như khiến chính  người xem thấy được bản thân mình cũng chỉ là một trong những Joe khác trong hàng vạn hàng ngàn Joe ngoài kia.
', N'HD+', N'Pete Docter', CAST(N'2020-12-25' AS Date), 100, N'Song ngữ ', 0, N'xOsLIiBStEs', N'xOsLIiBStEs', N'soulposter.jpg', N'soulhinh1.jpg', N'soulhinh2.jpg', N'soulhinh3.jpg', N'soulhinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'THOR11', N'Thor', N'Có lẽ chúng ta đã không còn quá xa lạ với vị thần mang tên Thor-thần sấm-một vị thần uy lực hàng đầu trong văn hóa  của người dân Bắc Âu. Năm 2011, Vũ trụ điện ảnh Marvel cho ra đời bộ phim Thor ( thần sấm) , chính thức đưa vị thần này lên màn ảnh rộng mở đầu cho những câu chuyện vô cùng thú vị về vị thần này trong vũ trụ của Marvel.
<br>
<br>
Thor có thể xem là một siêu anh hùng đặc biệt nhất của Marvel bởi anh có xuất thân khác biệt so với những người khác-một vị thần. Hãy cùng mình thưởng thức bộ phim đầu tiên mang Thor hùng mạnh đến với chúng ta nhé.
<br>
<br>
<b>Nội dung phim Thần Sấm (Thor 2011)</b>
 <br>
<br>
Kẻ thù không đội trời chung với Asgard chính là bọn khổng lồ băng cầm đầu bọn chúng là Laufey, cuộc chiến giữa hai bên kéo dài rất lâu, cho đến khi Odin gần như tiêu diệt hoàn toàn mối đe dọa ấy và tịch thu Chiếc tráp mùa đông vĩnh cửu của chúng, cái giả phải trả là vị vua Odin vĩ đại mất mắt phải của Người.
<br>
<br>
Odin, vị vua xứ Asgard có hai người con trai là thần sấm Thor và Loki. Thor là một chiến binh anh dũng, thiện chiến khiến cho quân địch luôn cảm thấy khiếp sợ. Tuy nhiên, ngược lại với Thor thì Loki lại ham vui và có tính bất trị, thích lừa lọc và quậy phá bởi những bất mãn dành cho vua cha khi thấy ông dành quá nhiều tình yêu thương, thiên vị cho anh trai của mình. Anh ta cảm thấy rằng không có sự công bằng trong việc truyền ngôi vua lại cho Thor.
<br>
<br>
Trong mắt vua Odin, Thor là người con trai xứng đáng nhất về tài năng cũng như tư cách để kế thừa ngôi vị của cha, Thor được Odin trao chiếc búa Mjolnir quyền năng và tiến hành  vị ngai vàng trị vì Asgard, thì phải bỏ dở vì bọn khổng lồ đột nhập định lấy lại Chiếc tráp mùa đông vĩnh cửu, bộ giáp rỗng làm nhiệm vụ canh gác kho tàng đã ngăn chặn và tiêu diệt chúng.

', N'HD+', N'Kenneth Branagh', CAST(N'2011-04-29' AS Date), 114, N'Tiếng Việt', 0, N'vJUDu40Z_RY', N'vJUDu40Z_RY', N'thorposter.jpg', N'thorhinh1.jpg', N'thorhinh2.jpg', N'thorhinh3.jpg', N'thorhinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'TRANS07', N'Transformers(2007)', N'Phần phim khá nhất, cũng là phần phim đầu tiên của thương hiệu này. Phần đầu được khai thác nội dung khá tốt, diễn xuất của những nhân vật trong phim cũng được thể hiện rõ nét, đặc biệt là qua ánh mắt đúng như câu nói: “More than meets the eye!" Đây là lần đầu tiên khán giả biết đến Shia Labeouf và Megan Fox mặc dù họ đã từng đóng những vai nhỏ trong nhiều bộ phim gia đình.Nhưng cảnh hành động của phần này không nhiều như những phần sau nhưng nó được đan xen hợp lý và khai thác một cách tốt nhất. Nhạc phim của phần đầu tiên chính là điểm nền cho những phiên bản sau này, tất cả đều hay, giàu cảm xúc và đánh vào tâm trạng của người xem.', N'HD+', N'Michael Bay', CAST(N'2007-08-24' AS Date), 143, N'Tiếng Việt', 0, N'dxQxgAfNzyE', N'dxQxgAfNzyE', N'trans1poster.jpg', N'trans1hinh1.jpg', N'trans1hinh2.jpg', N'trans1hinh3.jpg', N'trans1hinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'TTN1997', N'Titanic(1997)', N'Rose Dewitt Bukater bị gia đình “ép duyên” với nhà quý tộc giàu có Cal Hockley. Chính con tàu Titanic là nơi cô đã gặp được Jack Dawson, một họa sỹ trẻ thuộc tầng lớp bình dân. Cuộc sống tự do phóng khoáng với nụ cười luôn nở trên môi đã hẫp dẫn Rose. Cô gái quý tộc này đã từ bỏ tất cả để hòa nhập vào cuộc sống không có sự trưởng giả, dối trá mà chỉ toàn những con người thân thiện luôn sẵn sàng mỉm cười với cô. Thế nhưng một thảm họa đã xảy ra khiến mọi chuyện lệch khỏi quỹ đạo không còn đi theo kế hoạch, tàu Tinatic va phải một tảng băng trôi. Rose nằm trên một tấm phản gỗ trôi dập dềnh trên mặt biển, còn Jack thì đã vĩnh viễn rời xa cô. Xung quanh cô toàn xác người chết cóng, bản thân cô cũng đã quá mệt mỏi nhưng vì Jack cô đã quyết tâm phải sống. Một chiếc thuyền cứu hộ quay lại với hy vọng tìm được ai đó đã nhìn thấy cô và đưa cô trở về. Ký ức buồn vui về Jack đã đi theo Rose suốt cả cuộc đời, để bây giờ bà già Rose 80 tuổi ngồi kể chuyện cho lũ cháu về một người mà bà thực sự yêu, một người đã đem đến cho bà cuộc sống chân thực.', N'HD+', N'James Cameron', CAST(N'1997-11-01' AS Date), 194, N'Tiếng Việt', 0, N'ZQ6klONCq4s', N'ZQ6klONCq4s', N'ttnPoster.jpg', N'ttn1.jpg', N'ttn2.jpg', N'ttn3.jpg', N'ttn4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'VFV2005', N'V For Vendetta', N'Hôm nay là ngày 05/11. Đối với những người yêu phim sẽ nhận ra ngày này được nhắc đến như một mốc thời gian rất quan trọng trong một bộ phim kinh điển của DC nói riêng và của lịch sử nói chung. Đó chính là phim V for Vendetta. Bộ phim này mang đậm chất triết lý, khó xem hơn The Dark Knight (2008) nhưng nhẹ đô hơn so với Watchmen (2009). Nào, hãy cùng Ghiền review phim V for Vendetta (2005) xem phim này có gì thú vị các bạn nhé.
<br>
<br>
<b>Cốt truyện:</b> Tại thành phố London giả định năm 2020, khi mà Đại pháp quan Adam Sutler nắm quyền, áp dụng chế độ chuyên chế độc tài lên đất nước này, sử dụng các chính sách hà khắc nhằm bảo đảm an toàn tuyệt đối cho quốc gia để mị dân. Đúng ngày 5/11 năm đó, sự xuất hiện của một gã quái dị mang mặt nạ của Guy Fawkes với những kế hoạch khủng bố đã thay đổi hoàn toàn cục diện London.
<br>
<br>
<i>Guy Fawkes</i> là ai? Đây là một người nổi tiếng, được sinh tại thành phố York của Anh Quốc ngày 13/4/1570. Lớn lên, ông bất mãn với sự thống trị của hoàng gia nên ngày 05/11/1605, ông đã cùng các đồng chí của mình chôn 36 thùng thuốc nổ dưới nền gạch của tòa nhà quốc hội ở London với mưu tính ám sát vua James I. Tuy nhiên, kế hoạch bại lộ, ông bị bắt và kết tội phản quốc, để rồi bị treo cổ vào năm 1606. Trước khi chết, Guy Fawkes không tỏ ra khuất phục mà thay vào đó là nở một nụ cười đầy bí hiểm. Chính vì nụ cười và cái chết vì lý tưởng này của mình, Guy Fawkes đã trở thành một biểu tưởng cho sự đấu tranh và được nhắc đến trong các khía cạnh của văn hóa ở nhiều quốc gia trên thế giới.
<br>
<br>
Quay trở lại với phim, nhân vật chính của chúng ta lựa chọn khoác lên mình chiếc mặt nạ của Guy Fawkes để tấn công đế chế độc tài của Sutler (mô phỏng hình ảnh của Hitler ngoài đời thực) và khơi dậy ý chí đấu tranh vì công bằng và công lý của người dân. Đây là lựa chọn không thể sáng suốt hơn vì mọi tư tưởng, mục tiêu và cách thức hành động của V đều được lấy cảm hứng từ Guy Fawkes, chỉ khác duy nhất là Fawkes thất bại còn V thì thành công.', N'HD', N'Hugo Weaving, Natalie Portman, Rupert Graves', CAST(N'2006-02-23' AS Date), 132, N'Tiếng Việt', 0, N'lSA7mAHolAw', N'lSA7mAHolAw', N'vfvposter.jpg', N'vfvhinh1.jpg', N'vfvhinh2.jpg', N'vfvhinh3.jpg', N'vfvhinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'WALLE08', N'Wall-E', N'<b>Cốt truyện:</b> Trong khi nhiều người review ầm ầm về những bộ phim hoành tráng mới sản xuất, thì tôi xem lại bộ phim Wall-E cách đây 11 năm và viết bài cho nó, tại sao vậy? Vì bộ phim này cho chúng ta biết chúng ta là ai, con đường chúng ta đang đi sẽ dẫn về đâu, tương lai sẽ thế nào. Cuộc sống thú vị ở chỗ, phần lớn con người nhắm mắt lao về phía trước với sự hân hoan vô bờ về những tiến bộ của khoa học, nhưng không nhìn thấy sự thụt lùi của nền văn minh trong ý nghĩa thật sự của nó.
<br>
<br>
Rác là thứ chúng ta sẽ nhìn thấy đầu tiên trong tương lai, nơi nào con người từng sống thì nơi đó có rác, chúng chất thành núi và cao hơn cả những tòa nhà chọc trời. Những tháp rác chỉ ra rằng mức độ tiêu thụ/ hủy hoại của con người là vô bờ bến, nó hoàn toàn vượt xa những gì mà con người có thể mang lại cho cuộc đời này. Khi góc nhìn được hạ thấp, thì nơi nơi là các đại siêu thị, các biển quảng cáo sản phẩm để phục vụ cho nhu cầu ăn uống, sinh hoạt và giải trí. Tất cả chỉ có vậy!
<br>
<br>
Trái đất, nơi không còn bóng dáng con người lại tràn ngập thứ họ thải ra ấy, ta bắt gặp một cỗ máy lẽ loi vẫn đang miệt mài dọn dẹp thành phố. Tôi tự hỏi cỗ máy ấy đã làm việc trong bao lâu? Có lẽ là 700 năm, một khoản thời gian quá dài để những cỗ máy còn lại như nó phải gục ngã. Nó xứng đáng để gọi bằng tên, tên nó là Wall-E. Giờ ta hãy xem Wall-E sống thế nào nhé, năng lượng Wall-E dùng là năng lượng sạch (mặt trời), phụ tùng thay thế từ các “bạn” đã chết, sáng sớm thì miệt mài lao động cho đến tối mịt, dọn dẹp thứ Wall-E không thải ra, bạn của Wall-E là một con gián nhỏ. Wall-E có sở thích sưu tầm những món đồ lạ, nếu bạn nhìn kỹ sẽ thấy rằng phần lớn các món đồ đều đại diện cho tính sáng tạo của con người, nhưng bóng đèn, tivi, cuộn băng video, cái muỗng, nĩa, khối rubik, áo ngực (cười), tấm nylon chống sốc, hộp nữ trang … trong khi chiếc nhẫn kim cương thì bị vứt đi. Cuối cùng thứ quý giá nhất trong bộ sưu tập là một cây non – “vật” mang sự sống, và tình yêu được thể hiện trong bài hát.
<br>
<br>
Sự sống và tình yêu cũng không dễ thấy được, cây non nằm trong chiếc tủ, còn tình yêu thì trong cuộn băng, chúng chỉ đến với ai có một tâm hồn và luôn tìm kiếm điều gì đó có ý nghĩa.
<br>
<br>
Tất nhiên cảnh thú vị nhất chính là khi EVE đến trái đất để dò tìm sự sống. Không gì đáng kinh ngạc hơn dành cho “chàng trai” độc thân suốt mấy trăm năm khi nhìn thấy một “nữ” thiên thần đến từ trời, nàng xinh đẹp và có thể bay lượn. Tuy vậy phụ nữ lại rất nguy hiểm, đặt biệt là khi nóng giận, hãy nhớ kỹ điều đó.
<br>
<br>
Nếu rác là thứ đầu tiên đại diện cho tương con người, thì sự sống và tình yêu là khởi nguồn của mọi câu chuyện và mọi thay đổi mang đến sự tốt đẹp. Nhờ vào sự tiến bộ của khoa học kỹ thuật, nó giúp con người biến nhà trái đất thành bãi rác, và biến con người thành kẻ chạy trốn, thành loài phù du trong vũ trụ; nhờ vậy mà con người đã tiến bộ hơn, từ biết đi tiến lên biết bò, từ người trưởng thành biến thành như đứa trẻ từ thể xác cho đến tâm hồn, từ ông chủ biến thành kẻ phụ thuộc. Có đôi khi chủ và nô lệ rất khó để phân biệt, nhưng có một yếu tố rất quan trọng để chỉ ra vai trò của mỗi bên, đó là ai quyết định số phận của đối phương.
<br>
<br>
Tôi thích câu chào buổi sáng của vị thuyền trưởng “cha ông chúng ta sẽ tự hào khi biết rằng 700 năm sau con cháu vẫn làm những gì như họ đã làm” – sự châm biếm sâu sắc dành cho con người. Khi mà con người rời xa nguồn cội quá lâu thì họ không còn biết gì nữa, đất – nguồn dưỡng chất cho sự sống thì bị xem là “chất bẩn lạ”, không biết biển, rừng và các loài sinh vật, hoặc khiêu vũ. Thứ họ biết là cái màn hình trước mặt, là thức ăn đưa tới tận miệng sau khi cất tiếng gọi. Họ đã tiến hóa thành trẻ con.', N'HD', N'Andrew Stanton', CAST(N'2008-06-21' AS Date), 103, N'Tiếng Việt', 0, N'8-_9n5DtKOc', N'8-_9n5DtKOc', N'walleposter.jpg', N'wallehinh1.jpg', N'wallehinh2.jpg', N'wallehinh3.jpg', N'wallehinh4.jpg', 1)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'WWZ2013', N'World War Z', N'<b>Nội dung:</b> những năm gần đây, phim điện ảnh và game hay chọn đề tài xác sống (zombie) làm ý tưởng để phát triển cốt truyện, chúng ta dễ dàng bắt gặp những cái tựa quen thuộc như Resident Evil, Day of The Dead, The Happening, Zombieland, I Am Legend... phim bộ thì có The Walking Dead, Zombie Diaries... Nói chung là đủ thể loại khai thác đề tài này. Trong năm 2013, phim chiếu rạp có 2 phim về xác sống nổi bật là Warm Bodies: khai thác một khía cạnh của xác sống là một chàng trai tên R dù đã chết nhưng con tim vẫn sống và biết yêu; và World War Z, khi đại dịch vi rút chết người lây lan khắp địa cầu.
<br>
<br>
"World War Z" là cuốn tiểu thuyết thứ tư về đề tài xác ướp của nhà văn Max Brooks. Với nội dung hấp dẫn, bộ phim hứa hẹn sẽ thu hút sự chú ý của đông đảo khán giả khi nó ra rạp vào ngày 21/6 tới đây. Chúng ta thường thấy trong các phim ảnh thì xác sống di chuyển chậm chạp và vụng về, thế mạnh của chúng là gần như bất tử (trừ khi bị đánh nát đầu), cực kì khỏe mạnh và khát máu. Nhưng trong World War Z, ngoài sức mạnh vô địch thì zombie còn là những sinh vật rất nhanh nhẹn và hành động đoàn kết. Chính vì sự nhanh nhẹn bất thường này mà xác sống gần như không thể ngăn chặn được. Trước đây trong phim I Am Legend (2007) do Will Smith đóng, zombie cũng có tốc độ nhanh nhẹn, nhưng chúng lại sợ ánh sáng (giống ma cà rồng), còn trong WWZ thì không, chúng vô tư hành động mà không sợ bất cứ thứ gì, trừ khi bị tấn công vô cái đầu.
​<br>
<br>
Trong truyện, tác giả đặt mình vào vai Brooks, một nhân viên làm việc ở Ủy ban hậu chiến tranh của liên hợp quốc, đặc vụ này đã đi khắp các nước (còn tồn tại trên bản đồ thế giới) để phỏng vấn những người còn sống sót sau khi đại dịch toàn cầu đã xảy ra 10 năm trước, gây nên bệnh zombie. Sau đó, Brooks tập hợp những gì thu thập được vào một cuốn sách nhằm giúp lịch sử loài người có một bằng chứng sống về đại dịch đó.
<br>
<br>
Trong truyện, tác giả đặt mình vào vai Brooks, một nhân viên làm việc ở Ủy ban hậu chiến tranh của liên hợp quốc, đặc vụ này đã đi khắp các nước (còn tồn tại trên bản đồ thế giới) để phỏng vấn những người còn sống sót sau khi đại dịch toàn cầu đã xảy ra 10 năm trước, gây nên bệnh zombie. Sau đó, Brooks tập hợp những gì thu thập được vào một cuốn sách nhằm giúp lịch sử loài người có một bằng chứng sống về đại dịch đó.', N'HD', N'Marc Forster', CAST(N'2013-06-21' AS Date), 116, N'Tiếng Việt', 0, N'Md6Dvxdr0AQ', N'Md6Dvxdr0AQ', N'wwzposter.jpg', N'wwzhinh1.jpg', N'wwzhinh2.jpg', N'wwzhinh3.jpg', N'wwzhinh4.jpg', 0)
INSERT [dbo].[Phim] ([maPhim], [Title], [noiDung], [doPhanGiai], [daoDien], [ngayCongChieu], [thoiLuong], [phuDe], [luotXem], [Trailer], [Link], [Poster], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [hieuLuc]) VALUES (N'YN2016', N'Your Name', N'<b><i>“Mỗi buổi sáng mở mắt ra tôi đều có cảm giác mất mát. Thứ đã đánh mất đó là gì? Điều gì đó quan trọng, một người nào đó, hay đơn giản chỉ là một cái tên mà thôi”.</i></b>
<br>
<br>
Mitsuha là cô nữ sinh sống tại một vùng quê hẻo lánh trong một thị trấn nhỏ được bao quanh bởi núi rừng, cô lớn lên cùng với bà và em gái, trong một gia đình kế thừa nghi lễ truyền thống đền Shinto. Cha của cô sau cái chết của vợ, không chấp nhận nối nghiệp gia đình mà quyết định đi theo con đường chính trị. Mitsuha như bao cô gái khác, càng ngày càng trở nên chán ngán cuộc sống thôn quê buồn tẻ, yên bình, không có nổi một quán cafe, hiệu sách, tàu chỉ đến mỗi 2 tiếng, cửa hàng mới có 9 giờ đã đóng cửa. Cô mong ước kiếp sau mình có thể trở thành chàng trai Tokyo thành thị.
<br>
<br>
Nhưng không cần phải chờ đến kiếp sau đâu! Bởi vì điều kì diệu đã xảy ra, một ngày kia Mitsuha tỉnh dậy trong hình hài của một anh chàng Tokyo xa lạ tên là Taki, một cậu bạn năng động, hiền lành và dễ mến với một cuộc sống bận rộn từ học hành đến đi làm thêm.
<br>
<br>
Ngày này qua ngày khác, với những giấc mơ kì lạ khiến Taki và Mitsuha dần nhận ra, đây không đơn thuần chỉ là giấc mơ nữa, họ đã thật sự trao đổi thân xác cho nhau khi ngủ. Hai người họ đi từ bất ngờ, ngạc nhiên chuyển sang trạng thái dần thích nghi và giúp đỡ nhau để có thể sống tốt trong thân xác của đối phương. Để tránh những rắc rối, họ để lại những lời nhắn, những quy định cho nhau, thậm chí còn tặng kèm cả mấy trò chơi khăm hài hước. Việc hoán đổi cứ thể diễn ra và lặp lại tạo nên những sắc màu mới cho cuộc sống vốn nhàm chán của cả hai nhân vật. Hai người xa lạ, không có điểm chung như hai sợi dây song song đan vào nhau tạo thành phép màu kỳ diệu. Và rồi trải qua những tháng ngày đó, họ dần nhận ra tình cảm của mình dành cho đối phương, người mà họ chưa từng một lần chạm mặt.
<br>
<br>
Khi trái tim quyết định cất lên tiếng nói thì cũng là lúc cả hai nhận ra sự tồn tại mơ hồ của đối phương. Ngôi sao chổi nhiệm màu xuất hiện trên bầu trời Nhật Bản, khung cảnh tưởng chừng đẹp như trong mơ, đẹp đến mức khiến người ta vấn vương đó đã cuốn đi những giấc mơ kì lạ và mở ra một sự thật kinh hoàng.
<br>
<br>
Motif hoán đổi thân xác chắc chẳng có gì lạ lẫm đối với nền điện ảnh thế giới. Tuy nhiên với <b>your name</b>., đạo diễn Shinkai Mokoto đã khéo léo lồng ghép trong đó những giá trị văn hóa, nhân sinh quan và cả câu chuyện nhân duyên kỳ diệu.', N'4K', N'Shinkai Makoto', CAST(N'2016-08-26' AS Date), 112, N'Tiếng Việt', 0, N'NooIc3dMncc', N'NooIc3dMncc', N'yournameposter.png', N'yournamehinh1.jpg', N'yournamehinh2.jpg', N'yournamehinh3.jpg', N'yournamehinh4.jpg', 1)
SET IDENTITY_INSERT [dbo].[PhimTH] ON 

INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (25, N'IRON08', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (26, N'CACW16', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (27, N'BP2018', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (30, N'ALC2017', N'KD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (32, N'DSBM14', N'GD01', 0)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (33, N'ALITA19', N'HD01', 0)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (34, N'TTN1997', N'TC01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (37, N'SOUL20', N'GD01', 0)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (38, N'WALLE08', N'GD01', 0)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (39, N'YN2016', N'TC01', 0)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (41, N'LION94', N'GD01', 0)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (43, N'AVEN12', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (45, N'THOR11', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (46, N'SMTA12', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (47, N'BAT', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (48, N'TRANS07', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (49, N'VFV2005', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (50, N'WWZ2013', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (51, N'AVEG19', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (52, N'CM2019', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (54, N'FDN03', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (55, N'FZ22019', N'HD01', 1)
INSERT [dbo].[PhimTH] ([maTongHop], [maPhim], [maTheLoai], [loaiPhim]) VALUES (56, N'BIGH24', N'GD01', 1)
SET IDENTITY_INSERT [dbo].[PhimTH] OFF
INSERT [dbo].[TheLoai] ([maTheLoai], [tenTheLoai]) VALUES (N'CT01', N'Chiến tranh')
INSERT [dbo].[TheLoai] ([maTheLoai], [tenTheLoai]) VALUES (N'GD01', N'Gia đình')
INSERT [dbo].[TheLoai] ([maTheLoai], [tenTheLoai]) VALUES (N'HD01', N'Hành động')
INSERT [dbo].[TheLoai] ([maTheLoai], [tenTheLoai]) VALUES (N'HS01', N'Hình sự')
INSERT [dbo].[TheLoai] ([maTheLoai], [tenTheLoai]) VALUES (N'KD01', N'Kinh dị')
INSERT [dbo].[TheLoai] ([maTheLoai], [tenTheLoai]) VALUES (N'PL01', N'Phiêu lưu')
INSERT [dbo].[TheLoai] ([maTheLoai], [tenTheLoai]) VALUES (N'TC01', N'Tình cảm')
INSERT [dbo].[TheLoai] ([maTheLoai], [tenTheLoai]) VALUES (N'TL01', N'Tâm lý')
INSERT [dbo].[TheLoai] ([maTheLoai], [tenTheLoai]) VALUES (N'TL02', N'Tài liệu')
INSERT [dbo].[TheLoai] ([maTheLoai], [tenTheLoai]) VALUES (N'TT01', N'Thần thoại')
SET IDENTITY_INSERT [dbo].[YeuThich] ON 

INSERT [dbo].[YeuThich] ([maYeuThich], [maPhim], [tenDN], [ngayThich]) VALUES (7, N'FZ22019', N'khoahoanghh', CAST(N'2021-02-01' AS Date))
INSERT [dbo].[YeuThich] ([maYeuThich], [maPhim], [tenDN], [ngayThich]) VALUES (8, N'AVEG19', N'tuanml123', CAST(N'2021-02-01' AS Date))
INSERT [dbo].[YeuThich] ([maYeuThich], [maPhim], [tenDN], [ngayThich]) VALUES (13, N'FZ22019', N'tuanml123', CAST(N'2021-02-03' AS Date))
INSERT [dbo].[YeuThich] ([maYeuThich], [maPhim], [tenDN], [ngayThich]) VALUES (14, N'ALITA19', N'tuanml123', CAST(N'2021-02-03' AS Date))
INSERT [dbo].[YeuThich] ([maYeuThich], [maPhim], [tenDN], [ngayThich]) VALUES (15, N'THOR11', N'tuanml123', CAST(N'2021-02-03' AS Date))
INSERT [dbo].[YeuThich] ([maYeuThich], [maPhim], [tenDN], [ngayThich]) VALUES (12, N'CM2019', N'tuanml123', CAST(N'2021-02-02' AS Date))
SET IDENTITY_INSERT [dbo].[YeuThich] OFF
ALTER TABLE [dbo].[BinhLuan] ADD  CONSTRAINT [DF__BinhLuan__noiDun__4316F928]  DEFAULT (NULL) FOR [noiDung]
GO
ALTER TABLE [dbo].[nguoiDung] ADD  DEFAULT ((0)) FOR [vaiTro]
GO
ALTER TABLE [dbo].[Phim] ADD  DEFAULT ((0)) FOR [luotXem]
GO
ALTER TABLE [dbo].[Phim] ADD  CONSTRAINT [DF_Phim_hieuLuc]  DEFAULT ((1)) FOR [hieuLuc]
GO
ALTER TABLE [dbo].[PhimTH] ADD  DEFAULT ((0)) FOR [loaiPhim]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK__BinhLuan__maPhim__440B1D61] FOREIGN KEY([maPhim])
REFERENCES [dbo].[Phim] ([maPhim])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK__BinhLuan__maPhim__440B1D61]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK__BinhLuan__tenDN__44FF419A] FOREIGN KEY([tenDN])
REFERENCES [dbo].[nguoiDung] ([tenDN])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK__BinhLuan__tenDN__44FF419A]
GO
ALTER TABLE [dbo].[PhimTH]  WITH CHECK ADD FOREIGN KEY([maPhim])
REFERENCES [dbo].[Phim] ([maPhim])
GO
ALTER TABLE [dbo].[PhimTH]  WITH CHECK ADD FOREIGN KEY([maTheLoai])
REFERENCES [dbo].[TheLoai] ([maTheLoai])
GO
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK__YeuThich__maPhim__49C3F6B7] FOREIGN KEY([maPhim])
REFERENCES [dbo].[Phim] ([maPhim])
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK__YeuThich__maPhim__49C3F6B7]
GO
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK__YeuThich__tenDN__4AB81AF0] FOREIGN KEY([tenDN])
REFERENCES [dbo].[nguoiDung] ([tenDN])
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK__YeuThich__tenDN__4AB81AF0]
GO
