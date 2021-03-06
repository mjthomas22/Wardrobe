USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 8/6/2017 10:25:02 PM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoriesName] [nvarchar](50) NOT NULL,
	[AccessoriesPhoto] [nvarchar](500) NOT NULL,
	[AccessoryTypeID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessoryType]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessoryType](
	[AccessoryTypeID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AccessoryType] PRIMARY KEY CLUSTERED 
(
	[AccessoryTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhoto] [nvarchar](500) NOT NULL,
	[BottomTypeID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BottomType]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BottomType](
	[BottomsTypeID] [int] IDENTITY(1,1) NOT NULL,
	[BottomType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BottomType] PRIMARY KEY CLUSTERED 
(
	[BottomsTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occasion]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occasion](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Occasion] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Season]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoe](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[ShoePhoto] [nvarchar](500) NOT NULL,
	[ShoeTypeID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Shoe] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoeType]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoeType](
	[ShoeTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ShoeType] PRIMARY KEY CLUSTERED 
(
	[ShoeTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[TopsName] [nvarchar](50) NOT NULL,
	[TopsPhoto] [nvarchar](500) NOT NULL,
	[TopsTypeID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TopsType]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopsType](
	[TopsTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TopsType] PRIMARY KEY CLUSTERED 
(
	[TopsTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[youroutfits]    Script Date: 8/6/2017 10:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[youroutfits](
	[OutfitsID] [int] IDENTITY(1,1) NOT NULL,
	[TopsID] [int] NOT NULL,
	[BottomsID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoriesID] [int] NOT NULL,
 CONSTRAINT [PK_youroutfits] PRIMARY KEY CLUSTERED 
(
	[OutfitsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesPhoto], [AccessoryTypeID], [ColorID], [SeasonID], [OccasionID]) VALUES (1, N'Volcom', N'\Content\Images\Accessories\volcom.jpg', 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[AccessoryType] ON 

INSERT [dbo].[AccessoryType] ([AccessoryTypeID], [AccessoryType]) VALUES (1, N'Hat')
INSERT [dbo].[AccessoryType] ([AccessoryTypeID], [AccessoryType]) VALUES (3, N'Ear rings')
INSERT [dbo].[AccessoryType] ([AccessoryTypeID], [AccessoryType]) VALUES (4, N'Necklace')
INSERT [dbo].[AccessoryType] ([AccessoryTypeID], [AccessoryType]) VALUES (6, N'Watch')
SET IDENTITY_INSERT [dbo].[AccessoryType] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [BottomTypeID], [ColorID], [SeasonID], [OccasionID]) VALUES (1, N'Levis', N'\Content\Images\Bottoms\Levi.jpg', 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[BottomType] ON 

INSERT [dbo].[BottomType] ([BottomsTypeID], [BottomType]) VALUES (1, N'Jeans')
INSERT [dbo].[BottomType] ([BottomsTypeID], [BottomType]) VALUES (2, N'Shorts')
INSERT [dbo].[BottomType] ([BottomsTypeID], [BottomType]) VALUES (3, N'Dress Pants')
SET IDENTITY_INSERT [dbo].[BottomType] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorID], [Color]) VALUES (1, N'Blue')
INSERT [dbo].[Color] ([ColorID], [Color]) VALUES (2, N'Green')
INSERT [dbo].[Color] ([ColorID], [Color]) VALUES (3, N'Black')
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[Occasion] ON 

INSERT [dbo].[Occasion] ([OccasionID], [Occasion]) VALUES (1, N'Party')
INSERT [dbo].[Occasion] ([OccasionID], [Occasion]) VALUES (2, N'Beach')
INSERT [dbo].[Occasion] ([OccasionID], [Occasion]) VALUES (3, N'Christmas')
SET IDENTITY_INSERT [dbo].[Occasion] OFF
SET IDENTITY_INSERT [dbo].[Season] ON 

INSERT [dbo].[Season] ([SeasonID], [Season]) VALUES (1, N'Winter')
INSERT [dbo].[Season] ([SeasonID], [Season]) VALUES (2, N'Spring')
INSERT [dbo].[Season] ([SeasonID], [Season]) VALUES (3, N'Summer')
INSERT [dbo].[Season] ([SeasonID], [Season]) VALUES (4, N'Fall')
SET IDENTITY_INSERT [dbo].[Season] OFF
SET IDENTITY_INSERT [dbo].[Shoe] ON 

INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeTypeID], [ColorID], [SeasonID], [OccasionID]) VALUES (1, N'Converse', N'\Content\Images\shoes\converse.jpg', 1, 1, 3, 1)
SET IDENTITY_INSERT [dbo].[Shoe] OFF
SET IDENTITY_INSERT [dbo].[ShoeType] ON 

INSERT [dbo].[ShoeType] ([ShoeTypeID], [ShoeType]) VALUES (1, N'Tennis Shoe')
INSERT [dbo].[ShoeType] ([ShoeTypeID], [ShoeType]) VALUES (2, N'Sandals')
INSERT [dbo].[ShoeType] ([ShoeTypeID], [ShoeType]) VALUES (3, N'Boots')
SET IDENTITY_INSERT [dbo].[ShoeType] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsPhoto], [TopsTypeID], [ColorID], [SeasonID], [OccasionID]) VALUES (1, N'Flash ', N'\Content\Images\Tops\Flash.jpg', 1, 1, 3, 2)
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsPhoto], [TopsTypeID], [ColorID], [SeasonID], [OccasionID]) VALUES (2, N'TMNT', N'\Content\Images\Tops\TMNT.jpg', 1, 1, 3, 1)
SET IDENTITY_INSERT [dbo].[Tops] OFF
SET IDENTITY_INSERT [dbo].[TopsType] ON 

INSERT [dbo].[TopsType] ([TopsTypeID], [Type]) VALUES (1, N'T-Shirt')
INSERT [dbo].[TopsType] ([TopsTypeID], [Type]) VALUES (2, N'Tank Top')
INSERT [dbo].[TopsType] ([TopsTypeID], [Type]) VALUES (3, N'Hoodie')
SET IDENTITY_INSERT [dbo].[TopsType] OFF
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_AccessoryType] FOREIGN KEY([AccessoryTypeID])
REFERENCES [dbo].[AccessoryType] ([AccessoryTypeID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_AccessoryType]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Color]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Occasion]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Season]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_BottomType] FOREIGN KEY([BottomTypeID])
REFERENCES [dbo].[BottomType] ([BottomsTypeID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_BottomType]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Color]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Occasion]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Season]
GO
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FK_Shoe_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FK_Shoe_Color]
GO
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FK_Shoe_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FK_Shoe_Occasion]
GO
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FK_Shoe_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FK_Shoe_Season]
GO
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FK_Shoe_ShoeType] FOREIGN KEY([ShoeTypeID])
REFERENCES [dbo].[ShoeType] ([ShoeTypeID])
GO
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FK_Shoe_ShoeType]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Color]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Occasion]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Season]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Tops] FOREIGN KEY([TopsTypeID])
REFERENCES [dbo].[TopsType] ([TopsTypeID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Tops]
GO
ALTER TABLE [dbo].[youroutfits]  WITH CHECK ADD  CONSTRAINT [FK_youroutfits_Accessories] FOREIGN KEY([AccessoriesID])
REFERENCES [dbo].[Accessories] ([AccessoriesID])
GO
ALTER TABLE [dbo].[youroutfits] CHECK CONSTRAINT [FK_youroutfits_Accessories]
GO
ALTER TABLE [dbo].[youroutfits]  WITH CHECK ADD  CONSTRAINT [FK_youroutfits_Bottom] FOREIGN KEY([BottomsID])
REFERENCES [dbo].[Bottom] ([BottomID])
GO
ALTER TABLE [dbo].[youroutfits] CHECK CONSTRAINT [FK_youroutfits_Bottom]
GO
ALTER TABLE [dbo].[youroutfits]  WITH CHECK ADD  CONSTRAINT [FK_youroutfits_Shoe] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoe] ([ShoeID])
GO
ALTER TABLE [dbo].[youroutfits] CHECK CONSTRAINT [FK_youroutfits_Shoe]
GO
ALTER TABLE [dbo].[youroutfits]  WITH CHECK ADD  CONSTRAINT [FK_youroutfits_Tops] FOREIGN KEY([TopsID])
REFERENCES [dbo].[Tops] ([TopsID])
GO
ALTER TABLE [dbo].[youroutfits] CHECK CONSTRAINT [FK_youroutfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
