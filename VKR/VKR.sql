USE [WKR]
GO
/****** Object:  Table [dbo].[comands]    Script Date: 01.06.2021 20:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comands](
	[comand] [varchar](max) NOT NULL,
	[vopros] [varchar](max) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[veb]    Script Date: 01.06.2021 20:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[veb](
	[comands] [varchar](max) NULL,
	[slka] [varchar](max) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vopot]    Script Date: 01.06.2021 20:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vopot](
	[vopros] [varchar](max) NOT NULL,
	[otvet] [varchar](max) NOT NULL,
	[adres] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_vopot] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[comands] ON 

INSERT [dbo].[comands] ([comand], [vopros], [ID]) VALUES (N'некотян запусти стим', N'Steam.exe', 1)
INSERT [dbo].[comands] ([comand], [vopros], [ID]) VALUES (N'некотян запусти винрар', N'WinRAR.exe', 2)
INSERT [dbo].[comands] ([comand], [vopros], [ID]) VALUES (N'некотян запусти блакнот', N'Notepad.exe', 3)
INSERT [dbo].[comands] ([comand], [vopros], [ID]) VALUES (N'некотян запусти дискорд', N'Discord.exe', 4)
INSERT [dbo].[comands] ([comand], [vopros], [ID]) VALUES (N'некотян запусти скайп', N'Skype.exe', 5)
INSERT [dbo].[comands] ([comand], [vopros], [ID]) VALUES (N'некотян запусти яндекс', N'browser.exe', 6)
INSERT [dbo].[comands] ([comand], [vopros], [ID]) VALUES (N'некотян запусти нотпад', N'notepad++.exe', 7)
INSERT [dbo].[comands] ([comand], [vopros], [ID]) VALUES (N'некотян запусти вижелку', N'devenv.exe', 8)
SET IDENTITY_INSERT [dbo].[comands] OFF
GO
SET IDENTITY_INSERT [dbo].[veb] ON 

INSERT [dbo].[veb] ([comands], [slka], [ID]) VALUES (N'некотян открой переводчик', N'https://translate.google.ru/', 1)
INSERT [dbo].[veb] ([comands], [slka], [ID]) VALUES (N'открой вконтакте', N'https://vk.com/feed', 2)
INSERT [dbo].[veb] ([comands], [slka], [ID]) VALUES (N'открой ютуб', N'https://www.youtube.com', 3)
INSERT [dbo].[veb] ([comands], [slka], [ID]) VALUES (N'где можно купить аниме товары', N'https://yandex.ru/maps/213/moscow/search/магазины%20аниме%20карта%20/?ll=37.536287%2C55.857320&sctx=ZAAAAAgBEAAaKAoSCatcqPxrwUJAEWn9LQH470tAEhIJt%2FdXdfARtT8RWW%2F%2BZQqkpz8iBQABAgQFKAo4AECEnwFIAVXNzMw%2BWP%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwFiJG1pZGRsZV9hc2tfZGlyZWN0X3F1ZXJ5X3R5cGVzPXJ1YnJpY2IobWlkZGxlX2luZmxhdGVfZGlyZWN0X2ZpbHRlcl93aW5kb3c9NTAwMGIScmVsZXZfZHJ1Z19ib29zdD0xYkRtaWRkbGVfZGlyZWN0X3NuaXBwZXRzPXBob3Rvcy8yLngsYnVzaW5lc3NyYXRpbmcvMi54LG1hc3N0cmFuc2l0LzEueGI1bWlkZGxlX3dpemV4dHJhPXRyYXZlbF9jbGFzc2lmaWVyX3ZhbHVlPTAuMDIzNTAwNjY5NzViJ21pZGRsZV93aXpleHRyYT1hcHBseV9mZWF0dXJlX2ZpbHRlcnM9MWIobWlkZGxlX3dpemV4dHJhPW9yZ21uX3dhbmRfdGhyZXNob2xkPTAuOWI%2BbWlkZGxlX3dpemV4dHJhPXRyYXZlbF9jbGFzc2lmaWVyX29yZ21hbnlfdmFsdWU9MC4wMDA1ODk5MzM3MTJiI21pZGRsZV93aXpleHRyYT10cmFuc2l0X2FsbG93X2dlbz0xYiltaWRkbGVfd2l6ZXh0cmE9cmVxdWVzdF9zb2Z0X3RpbWVvdXQ9MC4wNWIebWlkZGxlX2Fza19kaXJlY3RfcGVybWFsaW5rcz0xYiptaWRkbGVfaW5mbGF0ZV9kaXJlY3RfcmVxdWVzdF93aW5kb3c9MTAwMDBiHXJlbGV2X2ZpbHRlcl9nd2tpbmRzPTAuMywwLjQ1YilyZWFycj1zY2hlbWVfTG9jYWwvR2VvL1JlcXVlc3RVZ2NEaWdlc3Q9MWIpcmVhcnI9c2NoZW1lX0xvY2FsL0dlby9Vc2VHZW9UcmF2ZWxSdWxlPTFiKXJlYXJyPXNjaGVtZV9Mb2NhbC9HZW8vQ3V0QWZpc2hhU25pcHBldD0xYilyZWFycj1zY2hlbWVfTG9jYWwvR2VvL0FsbG93VHJhdmVsQm9vc3Q9MWIvcmVhcnI9c2NoZW1lX0xvY2FsL0dlby9Qb3N0ZmlsdGVyL0Fic1RocmVzaD0wLjJiN3JlYXJyPXNjaGVtZV9Mb2NhbC9HZW8vUmVxdWVzdFVnY0ZvclBvc3NpYmxlT3duZXJzPXRydWViMXJlYXJyPXNjaGVtZV9Mb2NhbC9HZW91cHBlci9mZWF0dXJlc0Zyb21PYmplY3RzPTFiRXJlYXJyPXNjaGVtZV9Mb2NhbC9HZW8vQWR2ZXJ0cy9Ob3RTaG93T25IYXJkUnVicmljRmVhdHVyZS9FbmFibGU9dHJ1ZWI2cmVhcnI9c2NoZW1lX0xvY2FsL0dlby9Ib3RlbEJvb3N0PWJvb2tpbmdfYm9va2luZ3NfMTJ3YlhyZWFycj1zY2hlbWVfTG9jYWwvR2VvL0FkdmVydHMvTm90U2hvd09uSGFyZFJ1YnJpY0ZlYXR1cmUvTUxQQ1RocmVzaG9sZFZlcnlDb25maWRlbnQ9MC45YllyZWFycj1zY2hlbWVfTG9jYWwvR2VvL0FkdmVydHMvTm90U2hvd09uSGFyZFJ1YnJpY0ZlYXR1cmUvTUxQQ1RocmVzaG9sZFZlcnlDb25maWRlbnQ9MC44NWoCcnVwAZUBAAAAAJ0BzcxMPqABAagBAL0BL3GrbsIBGIbAl7GBAtq8y9%2FjA%2F2brqqGBqfC65L2AdIBJ9C80LDQs9Cw0LfQuNC90Ysg0LDQvdC40LzQtSDQutCw0YDRgtCwINgBAeoBAPIBAPgBAIICJ9C80LDQs9Cw0LfQuNC90Ysg0LDQvdC40LzQtSDQutCw0YDRgtCwIIoCDDE1NDM2Mjk5MTM0OA%3D%3D&sll=37.536287%2C55.857320&source=wizbiz_new_text_multi&sspn=0.361176%2C0.121654&z=12', 4)
INSERT [dbo].[veb] ([comands], [slka], [ID]) VALUES (N'вампиры', N'https://yummyanime.club/filter?selected_category%5B%5D=46&status=-1&season=0&from_year=&to_year=&from_num_episodes=&to_num_episodes=&selected_age=0&sort=1&sort_order=0', 5)
INSERT [dbo].[veb] ([comands], [slka], [ID]) VALUES (N'приключения', N'https://yummyanime.club/filter?selected_category%5B%5D=32&status=-1&season=0&from_year=&to_year=&from_num_episodes=&to_num_episodes=&selected_age=0&sort=1&sort_order=0', 6)
INSERT [dbo].[veb] ([comands], [slka], [ID]) VALUES (N'фантастика', N'https://yummyanime.club/filter?selected_category%5B%5D=37&status=-1&season=0&from_year=&to_year=&from_num_episodes=&to_num_episodes=&selected_age=0&sort=1&sort_order=0', 7)
INSERT [dbo].[veb] ([comands], [slka], [ID]) VALUES (N'мехи', N'https://yummyanime.club/filter?selected_category%5B%5D=25&status=-1&season=0&from_year=&to_year=&from_num_episodes=&to_num_episodes=&selected_age=0&sort=1&sort_order=0', 8)
INSERT [dbo].[veb] ([comands], [slka], [ID]) VALUES (N'фэнтези', N'https://yummyanime.club/filter?selected_category%5B%5D=42&status=-1&season=0&from_year=&to_year=&from_num_episodes=&to_num_episodes=&selected_age=0&sort=1&sort_order=0', 9)
INSERT [dbo].[veb] ([comands], [slka], [ID]) VALUES (N'не знаю посоветуй', N'https://yummyanime.club/top', 10)
SET IDENTITY_INSERT [dbo].[veb] OFF
GO
SET IDENTITY_INSERT [dbo].[vopot] ON 

INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'привет некотян', N'привет братик', NULL, 1)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'как дела', N'все отлично братик', NULL, 2)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'расскажи о себе', N'меня зовут Некотян, меня создал программист Давид 08.10.2020', NULL, 3)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'кого надо благодарить', N'огромное спасибо Алексею если бы не он меня бы не было тут', NULL, 4)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян запусти стим', N'уже открываю братик', NULL, 1003)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян открой винрар', N'сейчас братик', NULL, 1004)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'сколько тебе лет', N'неприлично спрашивать у девушки её возраст', NULL, 1007)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'какой актер нравится', N'мой кумир Пол Вокер', NULL, 1008)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'что любишь', N'мне нравится смотреть аниме и когда меня чешут за ушками', NULL, 1009)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'у тебя есть парень', N'братик ну не надо я стесняюсь отвечать на такие вопросы', NULL, 1010)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'ты знаешь кто такая алиса', N'ой да не спрашивай старуха одна, там еще одна есть из америки ненавижу их', NULL, 1011)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'хочешь погулять', N'да хочу давай пойдем но только обязательно маску надень', NULL, 1012)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'какая твоя любимая еда', N'я очень люблю сладости', NULL, 1013)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян запусти скайп', N'уже запускаю', NULL, 1015)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян запусти блакнот', N'уже запускаю', NULL, 1016)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян запусти дискорд', N'уже запускаю', NULL, 1017)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян запусти яндекс', N'уже запускаю', NULL, 1018)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян запусти нотпад', N'уже запускаю', NULL, 1019)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян запусти вижелку', N'уже запускаю', NULL, 1020)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян выключись', N'хорошо братик', NULL, 1021)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'меня завут давид', N'меня зовут Неко тян, приятно с тобой познакомится братик', NULL, 1022)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян открой переводчик', N'сейчас открою', NULL, 1023)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'открой вконтакте', N'уже открываю', NULL, 1025)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'открой ютуб', N'уже открываю', NULL, 1027)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'где можно купить аниме товары', N'вот карта магазинов на аниме тиматику', NULL, 1028)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян хочу посмотреть аниме', N'выбери жанр братик', NULL, 1030)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'вампиры', N'вот приятного просмотра братик, но мне этот жанр не очень нравится', NULL, 2024)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'приключения', N'хороший выбор', NULL, 2025)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'фантастика', N'приятного просмотра', NULL, 2026)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'мехи', N'необычный выбор', NULL, 2027)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'фэнтези', N'хорошего время препроваждения', NULL, 2029)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'не знаю посоветуй', N'вот топ сто популярных тайтлов, выбирай братик', NULL, 2030)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'некотян запуск протокола чистый лист', N'пока братик', NULL, 3030)
INSERT [dbo].[vopot] ([vopros], [otvet], [adres], [ID]) VALUES (N'который час', N'секунду', NULL, 3031)
SET IDENTITY_INSERT [dbo].[vopot] OFF
GO
