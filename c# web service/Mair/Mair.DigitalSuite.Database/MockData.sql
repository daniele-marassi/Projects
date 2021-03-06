/*
USE [Mair.DigitalSuite.Database]
GO
SET IDENTITY_INSERT [auth].[UserRoleTypes] ON 

INSERT [auth].[UserRoleTypes] ([Id], [Type], [LastUpdated], [Created]) VALUES (1, N'Admin', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-10T13:42:42.1495148' AS DateTime2))
INSERT [auth].[UserRoleTypes] ([Id], [Type], [LastUpdated], [Created]) VALUES (2, N'User', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-10T13:42:42.1521555' AS DateTime2))
INSERT [auth].[UserRoleTypes] ([Id], [Type], [LastUpdated], [Created]) VALUES (3, N'SuperUser', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-27T14:18:48.3545552' AS DateTime2))
INSERT [auth].[UserRoleTypes] ([Id], [Type], [LastUpdated], [Created]) VALUES (4, N'Guest', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-27T14:18:57.5681836' AS DateTime2))
SET IDENTITY_INSERT [auth].[UserRoleTypes] OFF
SET IDENTITY_INSERT [auth].[Users] ON 

INSERT [auth].[Users] ([Id], [UserName], [Name], [Surname], [LastUpdated], [Created]) VALUES (1, N'Admin', N'Admin', N'Admin', CAST(N'2020-03-04T13:47:04.0076813' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [auth].[Users] ([Id], [UserName], [Name], [Surname], [LastUpdated], [Created]) VALUES (2, N'Rossi', N'Mario', N'Rossi', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-10T13:42:42.1529315' AS DateTime2))
INSERT [auth].[Users] ([Id], [UserName], [Name], [Surname], [LastUpdated], [Created]) VALUES (3, N'Verdi', N'Giuseppe', N'Verdi', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-10T13:42:42.1529315' AS DateTime2))
INSERT [auth].[Users] ([Id], [UserName], [Name], [Surname], [LastUpdated], [Created]) VALUES (5, N'SuperUser', N'SuperUser', N'SuperUser', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-27T14:20:42.9708775' AS DateTime2))
INSERT [auth].[Users] ([Id], [UserName], [Name], [Surname], [LastUpdated], [Created]) VALUES (6, N'Guest', N'Guest', N'Guest', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-27T14:20:55.1929317' AS DateTime2))
SET IDENTITY_INSERT [auth].[Users] OFF
SET IDENTITY_INSERT [auth].[UserRoles] ON 

INSERT [auth].[UserRoles] ([Id], [UserId], [UserRoleTypeId], [LastUpdated], [Created]) VALUES (1, 1, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-21T16:06:19.2975520' AS DateTime2))
INSERT [auth].[UserRoles] ([Id], [UserId], [UserRoleTypeId], [LastUpdated], [Created]) VALUES (2, 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-21T16:06:26.6833392' AS DateTime2))
INSERT [auth].[UserRoles] ([Id], [UserId], [UserRoleTypeId], [LastUpdated], [Created]) VALUES (3, 1, 3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-21T16:06:46.5407475' AS DateTime2))
INSERT [auth].[UserRoles] ([Id], [UserId], [UserRoleTypeId], [LastUpdated], [Created]) VALUES (5, 2, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-24T16:39:54.2475132' AS DateTime2))
INSERT [auth].[UserRoles] ([Id], [UserId], [UserRoleTypeId], [LastUpdated], [Created]) VALUES (9, 5, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-27T14:27:41.3704437' AS DateTime2))
INSERT [auth].[UserRoles] ([Id], [UserId], [UserRoleTypeId], [LastUpdated], [Created]) VALUES (10, 5, 3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-27T14:27:44.5740408' AS DateTime2))
SET IDENTITY_INSERT [auth].[UserRoles] OFF
SET IDENTITY_INSERT [auth].[Authentications] ON 

INSERT [auth].[Authentications] ([Id], [UserId], [Password], [PasswordExpiration], [PasswordExpirationDays], [Enable], [LastUpdated], [Created]) VALUES (1, 1, N'a90071436830469ec57745b621ae32ad', 0, 90, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-10T13:42:42.1534263' AS DateTime2))
INSERT [auth].[Authentications] ([Id], [UserId], [Password], [PasswordExpiration], [PasswordExpirationDays], [Enable], [LastUpdated], [Created]) VALUES (2, 2, N'a90071436830469ec57745b621ae32ad', 1, 90, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-10T13:42:42.1539244' AS DateTime2))
INSERT [auth].[Authentications] ([Id], [UserId], [Password], [PasswordExpiration], [PasswordExpirationDays], [Enable], [LastUpdated], [Created]) VALUES (3, 3, N'a90071436830469ec57745b621ae32ad', 1, 90, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-10T13:42:42.1541149' AS DateTime2))
INSERT [auth].[Authentications] ([Id], [UserId], [Password], [PasswordExpiration], [PasswordExpirationDays], [Enable], [LastUpdated], [Created]) VALUES (7, 5, N'a90071436830469ec57745b621ae32ad', 1, 90, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-27T14:23:37.4443790' AS DateTime2))
INSERT [auth].[Authentications] ([Id], [UserId], [Password], [PasswordExpiration], [PasswordExpirationDays], [Enable], [LastUpdated], [Created]) VALUES (8, 6, N'a90071436830469ec57745b621ae32ad', 0, 90, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-27T14:24:20.7317254' AS DateTime2))
SET IDENTITY_INSERT [auth].[Authentications] OFF
SET IDENTITY_INSERT [tag].[Nodes] ON 

INSERT [tag].[Nodes] ([Id], [Name], [Description], [Driver], [ConnectionString], [LastUpdated], [Created]) VALUES (1, N'Node1', N'Node Uno', N'Driver1', N'Connection1', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-22T10:57:34.9249930' AS DateTime2))
INSERT [tag].[Nodes] ([Id], [Name], [Description], [Driver], [ConnectionString], [LastUpdated], [Created]) VALUES (2, N'Node2', N'Node Due', N'Driver2', N'Connection2', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-22T10:59:06.9669133' AS DateTime2))
INSERT [tag].[Nodes] ([Id], [Name], [Description], [Driver], [ConnectionString], [LastUpdated], [Created]) VALUES (3, N'Node3', N'Node Tre', N'Driver3', N'Conncetion3', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-04T14:45:18.1734266' AS DateTime2))
SET IDENTITY_INSERT [tag].[Nodes] OFF
SET IDENTITY_INSERT [tag].[Tags] ON 

INSERT [tag].[Tags] ([Id], [Name], [Description], [NodeId], [Address], [Enable], [LastUpdated], [Created]) VALUES (1, N'TagStart1', N'Tag Start 1', 1, N'Address1', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-03T14:09:00.5081985' AS DateTime2))
INSERT [tag].[Tags] ([Id], [Name], [Description], [NodeId], [Address], [Enable], [LastUpdated], [Created]) VALUES (2, N'TagAck1', N'Tag Ack 1', 1, N'Address2', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-04T14:44:23.2106028' AS DateTime2))
INSERT [tag].[Tags] ([Id], [Name], [Description], [NodeId], [Address], [Enable], [LastUpdated], [Created]) VALUES (3, N'TagEnd1', N'Tag End 1', 1, N'Address3', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-04T15:04:38.4253233' AS DateTime2))
INSERT [tag].[Tags] ([Id], [Name], [Description], [NodeId], [Address], [Enable], [LastUpdated], [Created]) VALUES (4, N'TagStart2', N'Tag Start 2', 2, N'Address1', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-03T14:09:00.5081985' AS DateTime2))
INSERT [tag].[Tags] ([Id], [Name], [Description], [NodeId], [Address], [Enable], [LastUpdated], [Created]) VALUES (5, N'TagAck2', N'Tag Ack 2', 2, N'Address2', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-04T14:44:23.2106028' AS DateTime2))
INSERT [tag].[Tags] ([Id], [Name], [Description], [NodeId], [Address], [Enable], [LastUpdated], [Created]) VALUES (6, N'TagEnd2', N'Tag End 2', 2, N'Address3', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-04T15:04:38.4253233' AS DateTime2))
SET IDENTITY_INSERT [tag].[Tags] OFF
SET IDENTITY_INSERT [tag].[Timers] ON 

INSERT [tag].[Timers] ([Id], [Name], [Description], [Inteval], [LastUpdated], [Created]) VALUES (1, N'Timer1', N'Timer Uno', N'1000', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-03T14:17:11.4055084' AS DateTime2))
INSERT [tag].[Timers] ([Id], [Name], [Description], [Inteval], [LastUpdated], [Created]) VALUES (2, N'Timer2', N'Timer Due', N'2000', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-04T15:05:09.7096852' AS DateTime2))
SET IDENTITY_INSERT [tag].[Timers] OFF
SET IDENTITY_INSERT [tag].[Events] ON 

INSERT [tag].[Events] ([Id], [Name], [Description], [Type], [LastUpdated], [Created], [TimerId], [PlcStartId], [PlcEndId], [PlcAckId]) VALUES (3, N'Event1', N'Event Uno', 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-03T14:24:15.3861864' AS DateTime2), 1, 1, 2, 3)
INSERT [tag].[Events] ([Id], [Name], [Description], [Type], [LastUpdated], [Created], [TimerId], [PlcStartId], [PlcEndId], [PlcAckId]) VALUES (4, N'Event2', N'Event Due', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-08T11:30:06.0123535' AS DateTime2), 2, 4, 5, 6)
SET IDENTITY_INSERT [tag].[Events] OFF
SET IDENTITY_INSERT [tag].[PlcData] ON 

INSERT [tag].[PlcData] ([Id], [Driver], [ConnectionString], [TagAddress], [TagValue], [LastUpdated], [Created]) VALUES (5, N'Driver1', N'Connection1', N'Address1', N'0', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-17T17:51:12.4075451' AS DateTime2))
INSERT [tag].[PlcData] ([Id], [Driver], [ConnectionString], [TagAddress], [TagValue], [LastUpdated], [Created]) VALUES (6, N'Driver1', N'Connection1', N'Address2', N'4', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-17T17:51:26.5185716' AS DateTime2))
INSERT [tag].[PlcData] ([Id], [Driver], [ConnectionString], [TagAddress], [TagValue], [LastUpdated], [Created]) VALUES (7, N'Driver1', N'Connection1', N'Address3', N'10', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-17T17:51:39.6404797' AS DateTime2))
INSERT [tag].[PlcData] ([Id], [Driver], [ConnectionString], [TagAddress], [TagValue], [LastUpdated], [Created]) VALUES (8, N'Driver2', N'Connection2', N'Address1', N'0', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-17T17:51:52.8169145' AS DateTime2))
INSERT [tag].[PlcData] ([Id], [Driver], [ConnectionString], [TagAddress], [TagValue], [LastUpdated], [Created]) VALUES (9, N'Driver2', N'Connection2', N'Address2', N'3', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-17T17:52:03.9976184' AS DateTime2))
INSERT [tag].[PlcData] ([Id], [Driver], [ConnectionString], [TagAddress], [TagValue], [LastUpdated], [Created]) VALUES (10, N'Driver2', N'Connection2', N'Address3', N'20', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-17T17:52:16.7946388' AS DateTime2))
SET IDENTITY_INSERT [tag].[PlcData] OFF

*/