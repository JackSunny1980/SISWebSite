/*
Navicat SQL Server Data Transfer

Source Server         : 公司234
Source Server Version : 105000
Source Host           : 192.168.1.234:1433
Source Database       : SISWebSite
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2015-06-10 11:04:14
*/


-- ----------------------------
-- Table structure for Department
-- ----------------------------
DROP TABLE [dbo].[Department]
GO
CREATE TABLE [dbo].[Department] (
[DeptNo] varchar(20) NOT NULL ,
[DeptName] varchar(50) NULL ,
[DeptDescription] varchar(100) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Department', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Department'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Department'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Department', 
'COLUMN', N'DeptNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Department'
, @level2type = 'COLUMN', @level2name = N'DeptNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Department'
, @level2type = 'COLUMN', @level2name = N'DeptNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Department', 
'COLUMN', N'DeptName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Department'
, @level2type = 'COLUMN', @level2name = N'DeptName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Department'
, @level2type = 'COLUMN', @level2name = N'DeptName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Department', 
'COLUMN', N'DeptDescription')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Department'
, @level2type = 'COLUMN', @level2name = N'DeptDescription'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Department'
, @level2type = 'COLUMN', @level2name = N'DeptDescription'
GO

-- ----------------------------
-- Records of Department
-- ----------------------------
INSERT INTO [dbo].[Department] ([DeptNo], [DeptName], [DeptDescription]) VALUES (N'000001', N'公司领导', N'公司日常决策与管理')
GO
GO
INSERT INTO [dbo].[Department] ([DeptNo], [DeptName], [DeptDescription]) VALUES (N'000002', N'发电部', N'机组日常运行与发电管理')
GO
GO
INSERT INTO [dbo].[Department] ([DeptNo], [DeptName], [DeptDescription]) VALUES (N'000003', N'系统部', N'系统运行日常检查与维修')
GO
GO
INSERT INTO [dbo].[Department] ([DeptNo], [DeptName], [DeptDescription]) VALUES (N'000004', N'后勤保障部', N'后勤保障服务')
GO
GO

-- ----------------------------
-- Table structure for Module
-- ----------------------------
DROP TABLE [dbo].[Module]
GO
CREATE TABLE [dbo].[Module] (
[ModuleNo] varchar(20) NOT NULL ,
[ModuleName] varchar(100) NOT NULL ,
[ParentModuleNo] varchar(20) NOT NULL ,
[ModuleIcon] varchar(100) NOT NULL ,
[URL] varchar(120) NOT NULL ,
[ModuleDescription] varchar(200) NULL ,
[OrderNo] int NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Module', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统模块'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统模块'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Module', 
'COLUMN', N'ModuleNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'模块编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'ModuleNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'模块编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'ModuleNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Module', 
'COLUMN', N'ModuleName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'模块名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'ModuleName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'模块名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'ModuleName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Module', 
'COLUMN', N'ParentModuleNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'父模块编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'ParentModuleNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'父模块编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'ParentModuleNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Module', 
'COLUMN', N'ModuleIcon')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'模块图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'ModuleIcon'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'模块图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'ModuleIcon'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Module', 
'COLUMN', N'URL')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'访问地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'URL'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'访问地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'URL'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Module', 
'COLUMN', N'ModuleDescription')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'模块描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'ModuleDescription'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'模块描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'ModuleDescription'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Module', 
'COLUMN', N'OrderNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'OrderNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Module'
, @level2type = 'COLUMN', @level2name = N'OrderNo'
GO

-- ----------------------------
-- Records of Module
-- ----------------------------
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'Root', N'SIS系统', N'', N'', N'', null, N'0')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'1', N'#1DCS', N'Root', N'Module.png', N'sispitrend.htm', null, N'1')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'2', N'#2DCS', N'Root', N'Module.png', N'sispitrend.htm', null, N'96')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'3', N'辅网', N'Root', N'Module.png', N'sispitrend.htm', null, N'176')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'4', N'负荷分配', N'Root', N'Module.png', N'sispitrend.htm', null, N'202')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'5', N'性能分析', N'Root', N'Module.png', N'sisintro.htm', null, N'204')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'6', N'系统管理', N'Root', N'Module.png', N'sistrend.htm', null, N'210')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'7', N'#1锅炉系统', N'1', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/锅炉主菜单.svg', null, N'2')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'8', N'#1汽机系统', N'1', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/汽机主菜单.svg', null, N'33')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'9', N'#1电汽系统', N'1', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/电汽主菜单.svg', null, N'61')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'10', N'公用系统', N'1', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/公用主菜单.svg', null, N'83')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'11', N'#2锅炉系统', N'2', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/锅炉主菜单.svg', null, N'97')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'12', N'#2汽机系统', N'2', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/汽机主菜单.svg', null, N'127')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'13', N'#2电汽系统', N'2', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/dqzcd.svg', null, N'155')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'14', N'化水', N'3', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/hszcd.svg', null, N'177')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'15', N'输煤', N'3', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/sm/smzcd.svg', null, N'191')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'16', N'全厂负荷分配', N'4', N'Module.png', N'sispitrend.htm', null, N'203')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'17', N'性能分析', N'5', N'Module.png', N'sisintro.htm', null, N'205')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'18', N'数据预处理', N'5', N'Module.png', N'sisintro.htm', null, N'206')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'19', N'ad', N'5', N'Module.png', N'sisintro.htm', null, N'208')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'20', N'锅炉总貌1', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/1glzm.svg', N'', N'0')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'21', N'锅炉汽水系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/2glqsxt.svg', null, N'4')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'22', N'FSSS系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/3FSSSxt.svg', null, N'5')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'23', N'油泄漏试验', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/4yxlsy.svg', null, N'6')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'24', N'锅炉烟气系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/5glyqxt.svg', null, N'7')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'25', N'一次风系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/6ycfjxt.svg', null, N'8')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'26', N'二次风系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/7ecfjxt.svg', null, N'9')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'27', N'锅炉返料系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/8glflxt.svg', null, N'10')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'28', N'石灰石输送系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/9shsssxt.svg', null, N'11')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'29', N'给煤系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/10gmxt.svg', null, N'12')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'30', N'床前给料系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/11cqglxt.svg', null, N'13')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'31', N'锅炉点火油系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/12gldhyxt.svg', null, N'14')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'32', N'锅炉旋风分离器系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/13glxfflqxt.svg', null, N'15')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'33', N'锅炉除渣冷却水系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/14glczlqxt.svg', null, N'16')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'34', N'锅炉除渣系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/15glczxt.svg', null, N'17')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'35', N'引风机油系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/16yfjxt.svg', null, N'18')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'36', N'一次风机油系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/17ycfjyxt.svg', null, N'19')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'37', N'二次风机油系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/18ecfjyxt.svg', null, N'20')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'38', N'播煤风机油系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/19bmfjyxt.svg', null, N'21')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'39', N'锅炉吹灰系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/20glchxt.svg', null, N'22')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'40', N'过热器壁温监视', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/21grqbwjs.svg', null, N'23')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'41', N'旋风分离器壁温监视', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/22xfflqbwjs.svg', null, N'24')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'42', N'电机主要参数', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/23gldjzcs.svg', null, N'25')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'43', N'炉水取样', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/24lsqy.svg', null, N'26')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'44', N'锅炉排污疏水', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/26glpwss.svg', null, N'27')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'45', N'脉冲吹灰系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/27mcchxt.svg', null, N'28')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'46', N'屋顶通风系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/28wdtfxt.svg', null, N'29')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'47', N'电源监视1', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/29dyjs1.svg', null, N'30')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'48', N'电源监视2', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/30dyjs2.svg', null, N'31')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'49', N'炉区脱硝系统', N'7', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/ds1/1015lqtxxt.svg', null, N'32')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'50', N'主再蒸汽系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2002--zzzqxt.svg', null, N'34')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'51', N'除氧给水系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2004--cygsxyt.svg', null, N'35')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'52', N'凝结水系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2005--njsxt.svg', null, N'36')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'53', N'抽汽系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2006--cqssxt.svg', null, N'37')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'54', N'轴封供汽系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2007--qjzcxt.svg', null, N'38')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'55', N'辅助蒸汽系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2008--fzzqxt.svg', null, N'39')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'56', N'汽机润滑油系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2009--qjrhyxt.svg', null, N'40')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'57', N'EH油系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2010--EHyxt.svg', null, N'41')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'58', N'疏水系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2014--ssxt.svg', null, N'42')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'59', N'汽机总图', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2001--qjzm.svg', null, N'43')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'60', N'凝结水补水系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2016--njsbsxt.svg', null, N'44')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'61', N'开式循环水系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2017--ksxhsxt.svg', null, N'45')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'62', N'闭式循环水系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2018--bsxhsxt.svg', null, N'46')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'63', N'凝汽器真空系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2019--nqqzkxt.svg', null, N'47')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'64', N'生水加热系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2020-sjsxt.svg', null, N'48')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'65', N'热网系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2015--rwxt.svg', null, N'49')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'66', N'凝结水精处理', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2026--njsjcl.svg', null, N'50')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'67', N'汽机本体', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2003--qjbtxt.svg', null, N'51')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'68', N'#1电动给水泵', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2011--1ddgsbxt.svg', null, N'52')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'69', N'#2电动给水泵', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2012--2ddgsbxt.svg', null, N'53')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'70', N'#3电动给水泵', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2013--3ddgsbxt.svg', null, N'54')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'71', N'空冷抽真空系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2021--klczkxt.svg', null, N'55')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'72', N'空冷检测系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2022--kljcxt.svg', null, N'56')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'73', N'机主要电机参数', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2029--qjzydycs.svg', null, N'57')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'74', N'发电机本体温度监视', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/2025--fdjbtwdjs.svg', null, N'58')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'75', N'#1乏汽利用系统', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/6001--1jzfqlyxt.svg', null, N'59')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'76', N'机组负荷控制中心', N'8', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/qiji/1026--jzfhkzzx.svg', null, N'60')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'77', N'NCS主接线图', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/NCS.svg', null, N'62')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'78', N'主接线图', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3001-zjxt.svg', null, N'63')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'79', N'公用厂用电', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3003-gygyxt.svg', null, N'64')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'80', N'厂用低压（工作）', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3006-cyddyxtgz.svg', null, N'65')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'81', N'单控220V直流', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3010-dykzs220vzlxtjxt.svg', null, N'66')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'82', N'公用UPS', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3013-gyupsxt.svg', null, N'67')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'83', N'厂用低压（空冷）', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3020-cydyxtkl.svg', null, N'68')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'84', N'启备变', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3002-qbbxt.svg', null, N'69')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'85', N'输煤厂用电', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3005-smxtcydyl.svg', null, N'70')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'86', N'厂用低压（化学）', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3007-cyddyxthx.svg', null, N'71')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'87', N'#1机单控110V直流', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3011-dykzs110vzlxtjxt.svg', null, N'72')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'88', N'#1保安电源', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3015-badyxt.svg', null, N'73')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'89', N'#1机励磁系统', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3017-1jzlcxt.svg', null, N'74')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'90', N'#1机10kV段', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3018-1jz10KVd.svg', null, N'75')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'91', N'厂用低压（公用）', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3008-cyddyxtgy.svg', null, N'76')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'92', N'输煤110V直流', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3012-sm110vzlxt.svg', null, N'77')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'93', N'除尘除灰脱硫脱销厂用电', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3019-chchtlcydxt.svg', null, N'78')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'94', N'#1机厂用电', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3016-cydxt.svg', null, N'79')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'95', N'输煤10kV段', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3004-sm10kvd.svg', null, N'80')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'96', N'网控110V直流', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3009-wlkzs110vzlxtpdi.svg', null, N'81')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'97', N'#1机UPS', N'9', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/dqxt/3014-dyupsxt.svg', null, N'82')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'98', N'循环水系统', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4003-xhlqsxt.svg', null, N'84')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'99', N'循环水加药', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4004-xhsjy.svg', null, N'85')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'100', N'公用热网系统', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4001-gyrwxt.svg', null, N'86')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'101', N'热网循环水泵参数与油站', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4002-rwxhsbcsyyxt.svg', null, N'87')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'102', N'控制室空调系统', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4010--kzsktxt.svg', null, N'88')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'103', N'炉水加药', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4005-lsjaxt.svg', null, N'89')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'104', N'炉水加联氨系统', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4006--lsjlaxt.svg', null, N'90')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'105', N'炉水加碱系统', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4007--lsjjxt.svg', null, N'91')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'106', N'主厂房采暖加热系统', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4008--zcfcnrz.svg', null, N'92')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'107', N'电子间空调系统', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4009--dzsbktxt.svg', null, N'93')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'108', N'热泵机组系统', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4012-rbjzxt.svg', null, N'94')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'109', N'热网、热泵循环水系统', N'10', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/gongyong/4013-rwrbxhsxt.svg', null, N'95')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'110', N'锅炉总图', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_1glzm.svg', null, N'98')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'111', N'锅炉汽水系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_2glqsxt.svg', null, N'99')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'112', N'油泄漏试验', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_4yxlsy.svg', null, N'100')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'113', N'锅炉烟气系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_5glyqxt.svg', null, N'101')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'114', N'一次风系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_6ycfjxt.svg', null, N'102')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'115', N'二次风系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_7ecfjxt.svg', null, N'103')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'116', N'锅炉返料系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_8glflxt.svg', null, N'104')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'117', N'石灰石输送系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_9shsssxt.svg', null, N'105')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'118', N'炉区脱硝系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_1015lqtxxt.svg', null, N'106')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'119', N'给煤系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_10gmxt.svg', null, N'107')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'120', N'床前给料系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_11cqglxt.svg', null, N'108')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'121', N'锅炉点火油系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_12gldhyxt.svg', null, N'109')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'122', N'锅炉旋风分离器系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_13glxfflqxt.svg', null, N'110')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'123', N'锅炉除渣冷却水系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_14glczlqxt.svg', null, N'111')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'124', N'锅炉除渣系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_15glczxt.svg', null, N'112')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'125', N'引风机油系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_16yfjxt.svg', null, N'113')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'126', N'一次风机油系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_17ycfjyxt.svg', null, N'114')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'127', N'一次风机油系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_17ycfjyxt.svg', null, N'114')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'128', N'二次风机油系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_18ecfjyxt.svg', null, N'115')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'129', N'播煤风机油系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_19bmfjyxt.svg', null, N'116')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'130', N'播煤风机油系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_19bmfjyxt.svg', null, N'116')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'131', N'锅炉吹灰系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_20glchxt.svg', null, N'117')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'132', N'锅炉吹灰系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_20glchxt.svg', null, N'117')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'133', N'过热器壁温监视', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_21grqbwjs.svg', null, N'118')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'134', N'过热器壁温监视', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_21grqbwjs.svg', null, N'118')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'135', N'旋风分离器壁温监视', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_22xfflqbwjs.svg', null, N'119')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'136', N'旋风分离器壁温监视', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_22xfflqbwjs.svg', null, N'119')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'137', N'电机主要参数', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_23gldjzcs.svg', null, N'120')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'138', N'电机主要参数', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_23gldjzcs.svg', null, N'120')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'139', N'炉水取样', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_24lsqy.svg', null, N'121')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'140', N'锅炉排污疏水', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_26glpwss.svg', null, N'122')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'141', N'脉冲吹灰系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_27mcchxt.svg', null, N'123')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'142', N'屋顶通风系统', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_28wdtfxt.svg', null, N'124')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'143', N'电源监视1', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_29dyjs1.svg', null, N'125')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'144', N'电源监视2', N'11', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/gl/2_30dyjs2.svg', null, N'126')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'145', N'主再蒸汽系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2002--zzzqxt.svg', null, N'128')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'146', N'除氧给水系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2004--cygsxyt.svg', null, N'129')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'147', N'凝结水系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2005--njsxt.svg', null, N'130')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'148', N'抽汽系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2006--cqssxt.svg', null, N'131')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'149', N'轴封供汽系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2007--qjzcxt.svg', null, N'132')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'150', N'辅助蒸汽系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2008--fzzqxt.svg', null, N'133')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'151', N'汽机润滑油系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2009--qjrhyxt.svg', null, N'134')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'152', N'EH油系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2010--EHyxt.svg', null, N'135')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'153', N'疏水系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2014--ssxt.svg', null, N'136')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'154', N'汽机总图', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2001--qjzm.svg', null, N'137')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'155', N'凝结水补水系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2016--njsbsxt.svg', null, N'138')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'156', N'开式循环水系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2017--ksxhsxt.svg', null, N'139')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'157', N'闭式循环水系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2018--bsxhsxt.svg', null, N'140')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'158', N'凝汽器真空系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2019--nqqzkxt.svg', null, N'141')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'159', N'生水加热系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2020-sjsxt.svg', null, N'142')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'160', N'热网系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2015--rwxt.svg', null, N'143')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'161', N'凝结水精处理', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2026--njsjcl.svg', null, N'144')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'162', N'汽机本体', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2003--qjbtxt.svg', null, N'145')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'163', N'#1电动给水泵', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2011--1ddgsbxt.svg', null, N'146')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'164', N'#2电动给水泵', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2012--2ddgsbxt.svg', null, N'147')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'165', N'#3电动给水泵', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2013--3ddgsbxt.svg', null, N'148')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'166', N'空冷抽真空系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2021--klczkxt.svg', null, N'149')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'167', N'空冷检测系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2022--kljcxt.svg', null, N'150')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'168', N'机主要电机参数', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2029--qjzydycs.svg', null, N'151')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'169', N'发电机本体温度监视', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_2025--fdjbtwdjs.svg', null, N'152')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'170', N'#2乏汽利用系统', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_6001--1jzfqlyxt.svg', null, N'153')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'171', N'机组负荷控制中心', N'12', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/qiji/2_1026--jzfhkzzx.svg', null, N'154')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'172', N'主接线', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3001-zjxt.svg', null, N'156')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'173', N'公用厂用电', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3003-gygyxt.svg', null, N'157')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'174', N'厂用低压（工作）', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3006-cyddyxtgz.svg', null, N'158')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'175', N'单控220V直流', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3010-dykzs220vzlxtjxt.svg', null, N'159')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'176', N'公用UPS', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3013-gyupsxt.svg', null, N'160')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'177', N'厂用低压（空冷）', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3020-cydyxtkl.svg', null, N'161')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'178', N'启备变', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3002-qbbxt.svg', null, N'162')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'179', N'输煤厂用电', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3005-smxtcydyl.svg', null, N'163')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'180', N'厂用低压（化学）', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3007-cyddyxthx.svg', null, N'164')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'181', N'#2机单控110V直流', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3011-dykzs110vzlxtjxt.svg', null, N'165')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'182', N'#2保安电源', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3015-badyxt.svg', null, N'166')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'183', N'#2机励磁系统', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3017-1jzlcxt.svg', null, N'167')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'184', N'#2机10kV段', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3018-1jz10KVd.svg', null, N'168')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'185', N'厂用低压（公用）', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3008-cyddyxtgy.svg', null, N'169')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'186', N'输煤110V直流', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3012-sm110vzlxt.svg', null, N'170')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'187', N'除尘除灰脱硫脱销厂用电', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3019-chchtlcydxt.svg', null, N'171')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'188', N'#21机厂用电', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3016-cydxt.svg', null, N'172')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'189', N'输煤10kV段', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3004-sm10kvd.svg', null, N'173')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'190', N'网控110V直流', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3009-wlkzs110vzlxtpdi.svg', null, N'174')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'191', N'#2机UPS', N'13', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/2dcs/dqxt/2_3014-dyupsxt.svg', null, N'175')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'192', N'超滤系统', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/1CLXT.svg', null, N'178')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'193', N'超滤加药', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/2CLJY.svg', null, N'179')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'194', N'反渗透系统', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/3FSTXT.svg', null, N'180')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'195', N'反渗透加药', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/4FSTJY.svg', null, N'181')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'196', N'化学除盐', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/5HXCY.svg', null, N'182')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'197', N'废水、空压', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/6FSKY.svg', null, N'183')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'198', N'废水总图', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/7FSZT.svg', null, N'184')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'199', N'再生水系统', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/8ZSSXT.svg', null, N'185')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'200', N'酸碱加药', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/10FJJY.svg', null, N'186')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'201', N'凝聚加药', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/11NJJY.svg', null, N'187')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'202', N'混版', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/13HC.svg', null, N'188')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'203', N'阳床', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/14YC.svg', null, N'189')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'204', N'阴床', N'14', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/hs/15YC.svg', null, N'190')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'205', N'输煤总图', N'15', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/sm/MS601.svg', null, N'192')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'206', N'T2转运站0.4kV', N'15', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/sm/ms602.svg', null, N'193')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'207', N'细碎机室0.4kV', N'15', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/sm/ms603.svg', null, N'194')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'208', N'输煤10kV系统', N'15', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/sm/ms604.svg', null, N'195')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'209', N'旁路运行图', N'15', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/sm/ms605.svg', null, N'196')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'210', N'筒仓运行图', N'15', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/sm/MS606.svg', null, N'197')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'211', N'煤仓运行图', N'15', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/sm/ms607.svg', null, N'198')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'212', N'输煤参数', N'15', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/sm/ms610.svg', null, N'199')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'213', N'自动配煤', N'15', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/sm/MS613.svg', null, N'200')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'214', N'含煤废水', N'15', N'Module.png', N'http://192.168.20.2:8888/play.aspx?file=SvgFigure/fw/sm/MS614.svg', null, N'201')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'215', N'用户管理', N'6', N'user.png', N'Admin/SysUserPage.aspx', null, N'1')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'216', N'角色管理', N'6', N'Department1.png', N'Admin/RolePage.aspx', null, N'2')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'217', N'部门管理', N'6', N'Department.png', N'Admin/DepartmentPage.aspx', null, N'3')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'218', N'模块管理', N'6', N'Module.png', N'Admin/ModulePage.aspx', null, N'4')
GO
GO
INSERT INTO [dbo].[Module] ([ModuleNo], [ModuleName], [ParentModuleNo], [ModuleIcon], [URL], [ModuleDescription], [OrderNo]) VALUES (N'000017', N'测试模块', N'218', N'Module.png', N'#', N'', N'1')
GO
GO

-- ----------------------------
-- Table structure for NoRecordor
-- ----------------------------
DROP TABLE [dbo].[NoRecordor]
GO
CREATE TABLE [dbo].[NoRecordor] (
[Table_nam] varchar(50) NOT NULL ,
[LastBillDate] datetime NULL ,
[Bill_no] varchar(20) NULL ,
[LastIdDate] datetime NULL ,
[Line_id] int NULL 
)


GO

-- ----------------------------
-- Records of NoRecordor
-- ----------------------------
INSERT INTO [dbo].[NoRecordor] ([Table_nam], [LastBillDate], [Bill_no], [LastIdDate], [Line_id]) VALUES (N'Department', N'2014-01-06 00:00:00.000', N'1', N'2014-01-06 00:00:00.000', N'4')
GO
GO
INSERT INTO [dbo].[NoRecordor] ([Table_nam], [LastBillDate], [Bill_no], [LastIdDate], [Line_id]) VALUES (N'Module', N'2014-01-10 00:00:00.000', N'1', N'2015-01-14 00:00:00.000', N'17')
GO
GO
INSERT INTO [dbo].[NoRecordor] ([Table_nam], [LastBillDate], [Bill_no], [LastIdDate], [Line_id]) VALUES (N'Role', N'2014-01-08 00:00:00.000', N'1', N'2014-02-13 00:00:00.000', N'4')
GO
GO
INSERT INTO [dbo].[NoRecordor] ([Table_nam], [LastBillDate], [Bill_no], [LastIdDate], [Line_id]) VALUES (N'SysUser', N'2014-01-08 00:00:00.000', N'1', N'2014-02-13 00:00:00.000', N'2')
GO
GO

-- ----------------------------
-- Table structure for PreFixTable
-- ----------------------------
DROP TABLE [dbo].[PreFixTable]
GO
CREATE TABLE [dbo].[PreFixTable] (
[TableName] varchar(100) NOT NULL ,
[PreFix] varchar(3) NULL ,
[Comment] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of PreFixTable
-- ----------------------------

-- ----------------------------
-- Table structure for Role
-- ----------------------------
DROP TABLE [dbo].[Role]
GO
CREATE TABLE [dbo].[Role] (
[RoleNo] varchar(20) NOT NULL ,
[RoleName] varchar(30) NULL ,
[Description] varchar(200) NULL ,
[OrderNo] int NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Role', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统角色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Role'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统角色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Role'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Role', 
'COLUMN', N'RoleNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Role'
, @level2type = 'COLUMN', @level2name = N'RoleNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Role'
, @level2type = 'COLUMN', @level2name = N'RoleNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Role', 
'COLUMN', N'RoleName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Role'
, @level2type = 'COLUMN', @level2name = N'RoleName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Role'
, @level2type = 'COLUMN', @level2name = N'RoleName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Role', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Role'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Role'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'Role', 
'COLUMN', N'OrderNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Role'
, @level2type = 'COLUMN', @level2name = N'OrderNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'Role'
, @level2type = 'COLUMN', @level2name = N'OrderNo'
GO

-- ----------------------------
-- Records of Role
-- ----------------------------
INSERT INTO [dbo].[Role] ([RoleNo], [RoleName], [Description], [OrderNo]) VALUES (N'000001', N'管理员', N'系统管理员', N'1')
GO
GO
INSERT INTO [dbo].[Role] ([RoleNo], [RoleName], [Description], [OrderNo]) VALUES (N'000002', N'发电组', N'', N'2')
GO
GO
INSERT INTO [dbo].[Role] ([RoleNo], [RoleName], [Description], [OrderNo]) VALUES (N'000003', N'运维组', N'', N'3')
GO
GO
INSERT INTO [dbo].[Role] ([RoleNo], [RoleName], [Description], [OrderNo]) VALUES (N'000004', N'匿名用户组', N'', N'100')
GO
GO

-- ----------------------------
-- Table structure for RoleMember
-- ----------------------------
DROP TABLE [dbo].[RoleMember]
GO
CREATE TABLE [dbo].[RoleMember] (
[RoleNo] varchar(20) NOT NULL ,
[UserNo] varchar(20) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'RoleMember', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色成员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RoleMember'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色成员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RoleMember'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'RoleMember', 
'COLUMN', N'RoleNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RoleMember'
, @level2type = 'COLUMN', @level2name = N'RoleNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RoleMember'
, @level2type = 'COLUMN', @level2name = N'RoleNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'RoleMember', 
'COLUMN', N'UserNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RoleMember'
, @level2type = 'COLUMN', @level2name = N'UserNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RoleMember'
, @level2type = 'COLUMN', @level2name = N'UserNo'
GO

-- ----------------------------
-- Records of RoleMember
-- ----------------------------
INSERT INTO [dbo].[RoleMember] ([RoleNo], [UserNo]) VALUES (N'000001', N'20130821000004')
GO
GO
INSERT INTO [dbo].[RoleMember] ([RoleNo], [UserNo]) VALUES (N'000001', N'20131106000001')
GO
GO
INSERT INTO [dbo].[RoleMember] ([RoleNo], [UserNo]) VALUES (N'000003', N'20130821000003')
GO
GO
INSERT INTO [dbo].[RoleMember] ([RoleNo], [UserNo]) VALUES (N'000003', N'20130821000004')
GO
GO
INSERT INTO [dbo].[RoleMember] ([RoleNo], [UserNo]) VALUES (N'000003', N'20131106000001')
GO
GO
INSERT INTO [dbo].[RoleMember] ([RoleNo], [UserNo]) VALUES (N'000004', N'000002')
GO
GO

-- ----------------------------
-- Table structure for RolePermission
-- ----------------------------
DROP TABLE [dbo].[RolePermission]
GO
CREATE TABLE [dbo].[RolePermission] (
[RoleNo] varchar(20) NOT NULL ,
[ModuleNo] varchar(20) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'RolePermission', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色权限'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色权限'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'RolePermission', 
'COLUMN', N'RoleNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'RoleNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'RoleNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'RolePermission', 
'COLUMN', N'ModuleNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'模块编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'ModuleNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'模块编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'RolePermission'
, @level2type = 'COLUMN', @level2name = N'ModuleNo'
GO

-- ----------------------------
-- Records of RolePermission
-- ----------------------------
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'1')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'21')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'22')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'23')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'24')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'25')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'26')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'27')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'28')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'29')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'30')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'31')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'32')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'33')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'34')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'35')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'36')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'37')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'38')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'39')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'40')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'41')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'42')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'43')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'44')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'45')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'46')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'47')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'48')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'49')
GO
GO
INSERT INTO [dbo].[RolePermission] ([RoleNo], [ModuleNo]) VALUES (N'000004', N'7')
GO
GO

-- ----------------------------
-- Table structure for SysUser
-- ----------------------------
DROP TABLE [dbo].[SysUser]
GO
CREATE TABLE [dbo].[SysUser] (
[UserNo] varchar(20) NOT NULL ,
[UserAccount] varchar(100) NOT NULL ,
[DeptNo] varchar(20) NULL ,
[UserName] varchar(30) NULL ,
[Position] varchar(50) NULL ,
[LinkTel] varchar(20) NULL ,
[Mobile] varchar(20) NULL ,
[UserCategory] varchar(1) NULL ,
[LoginIP] varchar(40) NULL ,
[IsBindLogin] bit NULL ,
[PassWord] varchar(150) NULL ,
[OrderNo] int NULL ,
[EMail] varchar(200) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'UserNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'UserNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'UserNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'UserAccount')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'UserAccount'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'UserAccount'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'DeptNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'所在部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'DeptNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'所在部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'DeptNo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'UserName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'UserName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'UserName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'Position')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'职务'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'Position'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'职务'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'Position'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'LinkTel')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'联系电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'LinkTel'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'联系电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'LinkTel'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'Mobile')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手机'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'Mobile'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手机'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'Mobile'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'UserCategory')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户类别'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'UserCategory'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户类别'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'UserCategory'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'LoginIP')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登陆IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'LoginIP'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登陆IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'LoginIP'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'IsBindLogin')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否绑定IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'IsBindLogin'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否绑定IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'IsBindLogin'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'PassWord')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'PassWord'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'PassWord'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SysUser', 
'COLUMN', N'OrderNo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'OrderNo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SysUser'
, @level2type = 'COLUMN', @level2name = N'OrderNo'
GO

-- ----------------------------
-- Records of SysUser
-- ----------------------------
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000009', N'SISMR', N'000002', N'SIS管理员', N'', N'', N'', N'1', null, N'0', N'C5E172E2507E0A58FAC8E343CDFD947D', N'1', null)
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000005', N'MZCSLR', N'000002', N'煤质录入', N'', N'', N'', N'1', null, N'0', N'46F94C8DE14FB36680850768FF1B7F2A', N'1', null)
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000004', N'mzlr', N'000002', N'录入人员', N'', N'', N'', N'1', null, N'0', N'733D7BE2196FF70EFAF6913FC8BDCABF', N'1', null)
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000001', N'zhangsan', N'000001', N'张三', N'经理', N'1111', N'15909203290', N'1', null, N'0', N'D41D8CD98F00B204E9800998ECF8427E', N'1', null)
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000002', N'Anonymous', N'000004', N'匿名用户', N'', N'', N'', N'1', null, N'0', N'CD7E2CD4F20F9DDDF238A06B80A56E4E', N'1', null)
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'Admin', N'admin', N'000001', N'管理员', null, null, null, N'0', null, N'0', N'7348F80AB46B66451985955A5EF7CEF2', N'0', null)
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000032', N'qjzy', N'000005', N'汽机专业', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', null)
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000033', N'dqzy', N'000005', N'电气专业', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', null)
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000043', N'xwx', N'000007', N'徐文秀', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'xwx@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000042', N'test2', N'000001', N'测试2', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'sis@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000044', N'sis', N'000001', N'sis', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'sis@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000045', N'lzy', N'000001', N'刘赵宇', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'lzy@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000046', N'ydb', N'000005', N'仪电班', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'ydb@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000008', N'test', N'000002', N'测试1', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', null)
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000010', N'zyj', N'000001', N'张玉军', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'zyj@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000011', N'dp', N'000001', N'杜培', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'dp@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000012', N'wwj', N'000001', N'王文军', N'', N'', N'', N'1', null, N'0', N'442077DE5EE8EEF51E021C98A86DF4BB', N'1', N'wwj@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000013', N'hf', N'000001', N'韩飞', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'hf@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000014', N'zsq', N'000001', N'张胜奇', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'zsq@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000015', N'fyl', N'000001', N'封有录', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'fyl@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000016', N'yyk', N'000001', N'杨云凯', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'yyk@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000017', N'jdx', N'000001', N'焦东新', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'jdx@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000018', N'lj', N'000001', N'刘军', N'', N'', N'', N'1', null, N'0', N'2A6395D8F41FB84D43C4F178E16C73A7', N'1', N'lj@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000019', N'zzq', N'000001', N'张之青', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'zzq@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000020', N'lzc', N'000001', N'李志成', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'lzc@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000021', N'ljd', N'000001', N'刘继东', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'ljd@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000022', N'gcm', N'000001', N'郭翠梅', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'gcm@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000023', N'wyb', N'000001', N'王艳斌', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'wyb@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000024', N'lsh', N'000001', N'刘少华', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'lsh@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000025', N'dg', N'000001', N'窦刚', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'dg@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000026', N'gzq', N'000001', N'高志强', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'gzq@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000027', N'lcx', N'000001', N'刘长喜', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'lcx@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000028', N'ljg', N'000001', N'李建国', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'ljg@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000029', N'zyj1', N'000001', N'张永军', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'zyj1@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000030', N'yyb', N'000001', N'杨运标', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'yyb@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000031', N'glzy', N'000005', N'锅炉专业', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', null)
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000034', N'jyb', N'000006', N'经营部', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'jyb@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000035', N'gcb', N'000007', N'工程部', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'gcb@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000036', N'fdb', N'000002', N'发电部', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'fdb@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000037', N'wgb', N'000009', N'物供部', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'wgb@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000038', N'ajb', N'000010', N'安监部', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'ajb@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000039', N'ftjx', N'000011', N'菲特检修', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'ftjx@tmrd.com.cn')
GO
GO
INSERT INTO [dbo].[SysUser] ([UserNo], [UserAccount], [DeptNo], [UserName], [Position], [LinkTel], [Mobile], [UserCategory], [LoginIP], [IsBindLogin], [PassWord], [OrderNo], [EMail]) VALUES (N'000040', N'nzg', N'000012', N'娘子关', N'', N'', N'', N'1', null, N'0', N'E10ADC3949BA59ABBE56E057F20F883E', N'1', N'nzg@tmrd.com.cn')
GO
GO

-- ----------------------------
-- View structure for SysUserView
-- ----------------------------
DROP VIEW [dbo].[SysUserView]
GO
CREATE VIEW [dbo].[SysUserView] AS 
SELECT
	A.*, B.DeptName
FROM
	SysUser A
JOIN Department B ON A.DeptNo = B.DeptNo
GO

-- ----------------------------
-- Procedure structure for Proc_GetBillNo
-- ----------------------------
DROP PROCEDURE [dbo].[Proc_GetBillNo]
GO

CREATE Procedure [dbo].[Proc_GetBillNo]
   @aTable_nam varchar(20)  
AS
declare @lBill_no int;
declare @lBill_nostr varchar(10);
declare @lOldDate datetime ;
declare @Bill_NoCount int;
declare @lNewDate datetime ;
declare @aNewBill_no varchar(20);
declare @lPreFix varchar(3);
declare @lline_id int

declare @lstr varchar(6);
select @lstr=null

select @lPreFix=PreFix from PreFixTable where TableName=@aTable_nam

select @lNewDate= Convert(datetime ,convert(char(10),getdate(),101 ))

select @Bill_NoCount= count(*) 
  from NoRecordor 
 where Table_Nam=@aTable_nam 

select @lBill_no=Bill_no,
       @lOldDate=Convert(datetime ,convert(char(10),LastbillDate,101)),
       @lline_id = line_id
  from NoRecordor where Table_Nam=@aTable_nam

if @Bill_NoCount =0 
begin
  insert into NoRecordor(Table_nam,LastBillDate,Bill_no,LastIdDate,Line_id)
    values(@aTable_nam, @lNewDate, 1,@lNewDate , 1)
  select @lBill_no = 1
end
else --if @Bill_NoCount=1
begin
  if @lNewDate>@lOldDate
  begin
    Update NoRecordor set Bill_no=1 ,LastbillDate=@lNewDate
    where Table_Nam=@aTable_nam
    select @lBill_no = 1
  end
  else if @lNewDate = @lOldDate
  begin
    Update NoRecordor set Bill_no=Bill_no+1 ,LastbillDate=@lNewDate
    where Table_Nam=@aTable_nam
    select @lBill_no = @lBill_no + 1
  end
  else
  begin
    Update NoRecordor set Bill_no=@lLine_id + 1,LastbillDate=@lNewDate
    where Table_Nam=@aTable_nam 
    select @lBill_no = @lLine_id + 1
  end 
end  
Update NoRecordor set Line_id = case when @lLine_id > @lBill_no then  @lLine_id else @lBill_no end
where Table_Nam=@aTable_nam

  if (@lBill_no>0) and (@lBill_no<10)  
    select @lBill_nostr='00000'+ convert(char(1),@lBill_no)
  else 
  if (@lBill_no>9) and (@lBill_no<100)  
    select @lBill_nostr='0000'+ convert(char(2),@lBill_no)
  else 
  if (@lBill_no>99) and (@lBill_no<1000)  
    select @lBill_nostr='000'+ convert(char(3),@lBill_no)
  else 
  if (@lBill_no>999) and (@lBill_no<10000)  
    select @lBill_nostr= '00'+convert(char(4),@lBill_no)
  if (@lBill_no > 9999) and (@lBill_no < 100000)  
    select @lstr = '0' + convert(char(5), @lBill_no)
  if (@lBill_no > 99999) and (@lBill_no < 1000000)  
    select @lstr = convert(char(6), @lBill_no)
  --select @aNewBill_no = @lPreFix +  CONVERT(VARCHAR(4),@lNewDate,120) + RIGHT(CONVERT(VARCHAR(7),@lNewDate,120),2) + RIGHT(CONVERT(VARCHAR(10),@lNewDate,120),2) + @lBill_nostr 
  select @aNewBill_no = CONVERT(VARCHAR(4),@lNewDate,120) + RIGHT(CONVERT(VARCHAR(7),@lNewDate,120),2) + RIGHT(CONVERT(VARCHAR(10),@lNewDate,120),2) + @lBill_nostr 
  Select @aNewBill_no

GO

-- ----------------------------
-- Procedure structure for Proc_GetLineID
-- ----------------------------
DROP PROCEDURE [dbo].[Proc_GetLineID]
GO

CREATE Procedure [dbo].[Proc_GetLineID]
	 @aTable_nam varchar(20)
AS
declare @lLine_id int;
declare @lLine_idCount int;
declare @lNewdate datetime;
declare @aNewLine_id varchar(10)
select @lNewDate=(select  Convert(datetime ,convert(char(10),getdate(),101 )))
select  @lLine_idCount =(select count(Line_id) from NoRecordor 
  where Table_Nam=@aTable_nam)

select  @lLine_id=( select Line_id from NoRecordor 
  where Table_Nam=@aTable_nam )
if @lLine_idCount=1
begin
  Update NoRecordor set Line_id=Line_id+1 ,LastIdDate=@lNewDate
   where Table_Nam=@aTable_nam
  
   select @lLine_id = @lLine_id + 1
end 
else
if @lLine_idCount=0
begin
  insert into NoRecordor(Table_nam,LastBillDate,Bill_no,LastIdDate,Line_id) 
    values(@aTable_nam, @lNewDate, 1,@lNewDate , 1)
  select @lLine_id = 1
end  
if (@lLine_id>0) and (@lLine_id<10)  
    select @aNewLine_id='00000'+ convert(char(1),@lLine_id)
  else 
  if (@lLine_id>9) and (@lLine_id<100)  
    select @aNewLine_id='0000'+ convert(char(2),@lLine_id)
  else 
  if (@lLine_id>99) and (@lLine_id<1000)  
    select @aNewLine_id='000'+ convert(char(3),@lLine_id)
  else 
  if (@lLine_id>999) and (@lLine_id<10000)  
    select @aNewLine_id= '00'+convert(char(4),@lLine_id)
  if (@lLine_id > 9999) and (@lLine_id < 100000)  
    select @aNewLine_id = '0' + convert(char(5), @lLine_id)
  if (@lLine_id > 99999) and (@lLine_id < 1000000)  
    select @aNewLine_id = convert(char(6), @lLine_id)
select @aNewLine_id
RETURN



GO

-- ----------------------------
-- Indexes structure for table Department
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Department
-- ----------------------------
ALTER TABLE [dbo].[Department] ADD PRIMARY KEY NONCLUSTERED ([DeptNo])
GO

-- ----------------------------
-- Indexes structure for table Module
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Module
-- ----------------------------
ALTER TABLE [dbo].[Module] ADD PRIMARY KEY NONCLUSTERED ([ModuleNo])
GO

-- ----------------------------
-- Indexes structure for table NoRecordor
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table NoRecordor
-- ----------------------------
ALTER TABLE [dbo].[NoRecordor] ADD PRIMARY KEY ([Table_nam])
GO

-- ----------------------------
-- Indexes structure for table PreFixTable
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PreFixTable
-- ----------------------------
ALTER TABLE [dbo].[PreFixTable] ADD PRIMARY KEY ([TableName])
GO

-- ----------------------------
-- Indexes structure for table Role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE [dbo].[Role] ADD PRIMARY KEY NONCLUSTERED ([RoleNo])
GO

-- ----------------------------
-- Indexes structure for table RoleMember
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table RoleMember
-- ----------------------------
ALTER TABLE [dbo].[RoleMember] ADD PRIMARY KEY NONCLUSTERED ([RoleNo], [UserNo])
GO

-- ----------------------------
-- Indexes structure for table RolePermission
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table RolePermission
-- ----------------------------
ALTER TABLE [dbo].[RolePermission] ADD PRIMARY KEY NONCLUSTERED ([RoleNo], [ModuleNo])
GO

-- ----------------------------
-- Indexes structure for table SysUser
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SysUser
-- ----------------------------
ALTER TABLE [dbo].[SysUser] ADD PRIMARY KEY NONCLUSTERED ([UserNo])
GO
