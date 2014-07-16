-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 07 月 16 日 13:39
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `cgse`
--
CREATE DATABASE IF NOT EXISTS `cgse` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cgse`;

-- --------------------------------------------------------

--
-- 表的结构 `hc_admin`
--

CREATE TABLE IF NOT EXISTS `hc_admin` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(24) NOT NULL,
  `password` char(32) NOT NULL,
  `gid` tinyint(3) unsigned NOT NULL,
  `email` varchar(30) NOT NULL,
  `lastDatetime` datetime NOT NULL,
  `lastIp` varchar(40) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `hc_admin`
--

INSERT INTO `hc_admin` (`uid`, `username`, `password`, `gid`, `email`, `lastDatetime`, `lastIp`) VALUES
(1, 'admin', 'a80b19689cc3a42ec9fe6cb91dbe181f', 1, 'admin@admin.com', '2014-07-16 21:38:47', '127.0.0.1'),
(3, '123', 'a80b19689cc3a42ec9fe6cb91dbe181f', 1, '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- 表的结构 `hc_advertise`
--

CREATE TABLE IF NOT EXISTS `hc_advertise` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `hc_advertise`
--

INSERT INTO `hc_advertise` (`aid`, `title`, `type`, `datetime`) VALUES
(1, '地质特色', 1, '2014-06-02 11:15:04'),
(2, '信息平台', 1, '2013-12-15 13:13:35'),
(3, '快速链接', 1, '2014-06-08 20:50:56');

-- --------------------------------------------------------

--
-- 表的结构 `hc_advertise_code`
--

CREATE TABLE IF NOT EXISTS `hc_advertise_code` (
  `aid` smallint(5) unsigned NOT NULL,
  `code` text NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hc_advertise_code`
--

INSERT INTO `hc_advertise_code` (`aid`, `code`) VALUES
(1, '&lt;div class=&quot;links_link&quot;&gt;&lt;a href=&quot;http://localhost/web2010/cp.php?ac=singlepage&amp;id=284&quot;&gt;PetriNet简介&lt;/a&gt;&lt;/div&gt;\r\n&lt;div class=&quot;links_link&quot;&gt;&lt;a href=&quot;http://cise.sdkd.net.cn/trait/sike/index.htm&quot;&gt;思科网络实验室&lt;/a&gt;&lt;/div&gt;\r\n&lt;div class=&quot;links_link&quot;&gt;&lt;a href=&quot;http://www.lionkingsoft.com/&quot;&gt;山东蓝光软件有限公司&lt;/a&gt;&lt;/div&gt;\r\n&lt;div class=&quot;links_link&quot;&gt;&lt;a href=&quot;http://www.uroica.com/index.asp&quot;&gt;尤洛卡自动化装备有限公司&lt;/a&gt;&lt;/div&gt;\r\n&lt;div class=&quot;links_link&quot;&gt;&lt;a href=&quot;http://jmmia.sdust.edu.cn/&quot;&gt;数学建模及其应用&lt;/a&gt;&lt;/div&gt;'),
(2, '&lt;table width=&quot;100%&quot; border=&quot;0&quot;&gt;\r\n&lt;tr height=&quot;25px&quot;&gt;\r\n	&lt;td&gt;&lt;a href=&quot;mailto:deancise@sdust.edu.cn&quot;&gt;院长信箱&lt;/a&gt;&lt;/td&gt;\r\n	&lt;td&gt;&lt;a href=&quot;mailto:jnlikezhou@sina.com.cn&quot;&gt;书记信箱&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr height=&quot;25px&quot;&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;admincp.php?ac=message&amp;amp;op=leave_message&quot;&gt;留言中心&lt;/a&gt;&lt;/td&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://t.qq.com/sdkdxinxi&quot;&gt;信息先锋&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;					  \r\n&lt;tr height=&quot;4px&quot;&gt;\r\n	&lt;td colspan=&quot;2&quot;&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr height=&quot;25px&quot;&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.119.204/kysys/index.php&quot;&gt;科研管理系统&lt;/a&gt;&lt;/td&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.139.241/workload/login.aspx&quot;&gt;工作量计算&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;                      \r\n&lt;tr height=&quot;25px&quot;&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;&quot;&gt;校友园地&lt;/a&gt;&lt;/td&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;&quot;&gt;学生信息管理&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr height=&quot;4px&quot;&gt;\r\n	&lt;td colspan=&quot;2&quot;&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr height=&quot;25px&quot;&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;kejiprize/index.html&quot;&gt;我爱科技&lt;/a&gt;&lt;/td&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://os.sdust.edu.cn/&quot;&gt;操作系统&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr height=&quot;25px&quot;&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://cise.sdust.edu.cn/maths/&quot;&gt;数学纵横&lt;/a&gt;&lt;/td&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://cise.sdust.edu.cn/lssx/&quot;&gt;离散数学&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr height=&quot;4px&quot;&gt;\r\n	&lt;td colspan=&quot;2&quot;&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr height=&quot;25px&quot;&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://cise.sdust.edu.cn/ncre/&quot;&gt;等级考试成绩&lt;/a&gt;&lt;/td&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://cise.sdust.edu.cn/NIT/&quot;&gt;NIT成绩查询&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr height=&quot;25px&quot;&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.139.241/&quot;&gt;软件下载&lt;/a&gt;&lt;/td&gt;\r\n	&lt;td&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://cise.sdust.edu.cn/mcm/&quot;&gt;&lt;font color=&quot;#ee0000&quot;&gt;数学建模竞赛&lt;/font&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;/table&gt;'),
(3, '&lt;select class=&quot;select_links&quot; name=&quot;Select0&quot; onchange=&quot;if(this.options[this.selectedIndex].value!=''''){window.open(this.options[this.selectedIndex].value,''_blank'');}&quot; id=&quot;Select0&quot;&gt;\r\n	&lt;option selected=&quot;&quot; value=&quot;&quot;&gt;-- 查询系统 --&lt;/option&gt;\r\n	&lt;option value=&quot;http://192.168.109.15/&quot;&gt;教务管理系统&lt;/option&gt;\r\n	&lt;option value=&quot;http://192.168.100.88/page/index.htm&quot;&gt;研究生管理系统&lt;/option&gt; \r\n	&lt;option value=&quot;http://kysys.sdust.edu.cn/&quot;&gt;科研信息管理&lt;/option&gt; \r\n	&lt;option value=&quot;http://lib.sdust.edu.cn/&quot;&gt;网上图书馆&lt;/option&gt; \r\n	&lt;option value=&quot;http://192.168.100.126/homeLogin.action&quot;&gt;一卡通查询&lt;/option&gt; \r\n	&lt;option value=&quot;http://web.sdust.edu.cn/cw/gongjijin/gjjcx.asp&quot;&gt;公积金查询&lt;/option&gt; \r\n	&lt;option value=&quot;http://www.meeting.edu.cn/&quot;&gt;中国学术会议在线&lt;/option&gt;\r\n&lt;/select&gt;\r\n&lt;br&gt;\r\n&lt;select class=&quot;select_links&quot; name=&quot;Select2&quot; onchange=&quot;if(this.options[this.selectedIndex].value!=''''){window.open(this.options[this.selectedIndex].value,''_blank'');}&quot; id=&quot;Select2&quot;&gt;\r\n	&lt;option selected=&quot;&quot; value=&quot;&quot;&gt;-- 学院链接 --&lt;/option&gt;\r\n	&lt;option value=&quot;http://cms.sdust.edu.cn/&quot; &gt;矿业与安全工程学院&lt;/option&gt;\r\n 	&lt;option value=&quot;http://gc.sdust.edu.cn/&quot; &gt;测绘科学与工程学院 &lt;/option&gt;\r\n 	&lt;option value=&quot;http://fceoption.sdust.edu.cn/&quot; &gt;土木工程与建筑学院 &lt;/option&gt;\r\n 	&lt;option value=&quot;http://cmee.sdust.edu.cn/&quot; &gt;机械电子工程学院 &lt;/option&gt;\r\n 	&lt;option value=&quot;http://cise.sdust.edu.cn/&quot; &gt;信息科学与工程学院 &lt;/option&gt;\r\n 	&lt;option value=&quot;http://sxy.sdust.edu.cn/&quot; &gt;数学与系统科学学院 &lt;/option&gt;\r\n	&lt;option value=&quot;http://cem.sdust.edu.cn/&quot; &gt;经济管理学院 &lt;/option&gt;\r\n	&lt;option value=&quot;http://xindioptionn.sdust.edu.cn/&quot; &gt;电气与自动化工程学院&lt;/option&gt; \r\n	&lt;option value=&quot;http://dzxy.sdust.edu.cn/&quot; &gt;电子通信与物理学院 &lt;/option&gt;\r\n	&lt;option value=&quot;http://huoptiongong.sdust.edu.cn/&quot; &gt;化学与环境工程学院  &lt;/option&gt;\r\n	&lt;option value=&quot;http://cmse.sdust.edu.cn/&quot; &gt;材料科学与工程学院 &lt;/option&gt;\r\n	&lt;option value=&quot;http://jt.sdust.edu.cn/&quot; &gt;交通学院 &lt;/option&gt;\r\n	&lt;option value=&quot;http://wenfoption.sdust.edu.cn/&quot; &gt;文法学院  &lt;/option&gt;\r\n 	&lt;option value=&quot;http://woptioniyu.sdust.edu.cn/&quot; &gt;外国语学院  &lt;/option&gt;\r\n 	&lt;option value=&quot;http://optionrt.sdust.edu.cn/&quot; &gt;艺术与设计学院 &lt;/option&gt;\r\n 	&lt;option value=&quot;http://moptionrx.sdust.edu.cn/&quot; &gt;马克思主义学院  &lt;/option&gt;\r\n 	&lt;option value=&quot;http://tiyu.sdust.edu.cn/&quot; &gt;体育学院  &lt;/option&gt;\r\n 	&lt;option value=&quot;http://cj.sdust.edu.cn/&quot; &gt;继续教育学院  &lt;/option&gt;\r\n&lt;/select&gt;\r\n&lt;select class=&quot;select_links&quot; name=&quot;Select1&quot; onchange=&quot;if(this.options[this.selectedIndex].value!=''''){window.open(this.options[this.selectedIndex].value,''_blank'');}&quot; id=&quot;Select1&quot;&gt;\r\n	&lt;option selected=&quot;&quot; value=&quot;&quot;&gt;-- 校内链接 --&lt;/option&gt;\r\n	&lt;option value=&quot;http://www.sdust.edu.cn&quot;&gt;山东科技大学&lt;/option&gt;\r\n	&lt;option value=&quot;http://news.sdust.edu.cn&quot;&gt;新闻网&lt;/option&gt;\r\n	&lt;option value=&quot;http://bjx.sdkd.net.cn&quot;&gt;北极星&lt;/option&gt;\r\n	&lt;option value=&quot;http://cw.sdust.edu.cn/&quot;&gt;财务网&lt;/option&gt;\r\n	&lt;option value=&quot;http://xsgzb.sdust.edu.cn/&quot;&gt;学生工作部&lt;/option&gt;\r\n	&lt;option value=&quot;http://bbs.sdust.edu.cn/&quot;&gt;海天一色&lt;/option&gt;\r\n&lt;/select&gt;\r\n&lt;br&gt;\r\n&lt;select class=&quot;select_links&quot; name=&quot;Select1&quot; onchange=&quot;if(this.options[this.selectedIndex].value!=''''){window.open(this.options[this.selectedIndex].value,''_blank'');}&quot; id=&quot;Select1&quot;&gt;\r\n	&lt;option selected=&quot;&quot; value=&quot;&quot;&gt;-- 校外链接 --&lt;/option&gt;\r\n	&lt;option value=&quot;http://www.pku.edu.cn/&quot;&gt;北京大学&lt;/option&gt;\r\n	&lt;option value=&quot;http://www.tsinghua.edu.cn/publish/newthu/index.html&quot;&gt;清华大学&lt;/option&gt;\r\n	&lt;option value=&quot;http://www.cug.edu.cn/new/&quot;&gt;中国地质大学&lt;/option&gt;\r\n	&lt;option value=&quot;http://www.cumt.edu.cn/&quot;&gt;中国矿业大学&lt;/option&gt;\r\n	&lt;option value=&quot;http://www.cup.edu.cn/&quot;&gt;中国石油大学北京&lt;/option&gt;\r\n	&lt;option value=&quot;http://www.upc.edu.cn/&quot;&gt;中国石油大学华东&lt;/option&gt;\r\n	&lt;option value=&quot;http://www.sdu.edu.cn/&quot;&gt;山东大学&lt;/option&gt;\r\n&lt;/select&gt;\r\n&lt;br&gt;\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `hc_advertise_focus`
--

CREATE TABLE IF NOT EXISTS `hc_advertise_focus` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `hc_advertise_focus`
--

INSERT INTO `hc_advertise_focus` (`id`, `title`, `url`, `image`) VALUES
(1, '', '', 'data/image/20140321/13953803803233.jpg'),
(2, '', '', ''),
(3, '', '', ''),
(4, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `hc_advertise_image`
--

CREATE TABLE IF NOT EXISTS `hc_advertise_image` (
  `aid` smallint(5) unsigned NOT NULL,
  `image` varchar(100) NOT NULL,
  `width` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hc_channel`
--

CREATE TABLE IF NOT EXISTS `hc_channel` (
  `cid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `name` varchar(30) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `hc_channel`
--

INSERT INTO `hc_channel` (`cid`, `type`, `name`, `url`, `target`, `hidden`, `order`) VALUES
(1, 1, '学院概况', '', 1, 0, 1),
(2, 1, '师资队伍', '', 1, 0, 2),
(3, 1, '人才培养', '', 1, 0, 3),
(4, 1, '科学研究', '', 1, 0, 4),
(5, 1, '党建工作', '', 1, 0, 5),
(6, 2, '学团工作', 'xuetuan/index.php', 2, 0, 6),
(7, 1, '交流合作', '', 1, 0, 7),
(8, 1, '校友工作', '', 1, 0, 8),
(9, 1, '下载中心', '', 1, 0, 9),
(10, 1, '新闻中心', '', 1, 1, 10),
(11, 1, '图说地科', '', 1, 1, 11);

-- --------------------------------------------------------

--
-- 表的结构 `hc_column`
--

CREATE TABLE IF NOT EXISTS `hc_column` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `coltype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `name` varchar(30) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` varchar(15) NOT NULL,
  `channel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deep` smallint(5) unsigned NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `hc_column`
--

INSERT INTO `hc_column` (`cid`, `coltype`, `name`, `url`, `target`, `type`, `channel`, `parentid`, `deep`, `hidden`, `order`) VALUES
(18, 1, '学院简介', '', 1, 'page', 1, 0, 1, 0, 1),
(19, 1, '机构设置', '', 1, 'page', 1, 0, 1, 0, 2),
(20, 1, '现任领导', '', 1, 'product', 1, 0, 1, 0, 3),
(21, 1, '院士', '', 1, 'product', 2, 0, 1, 0, 1),
(22, 1, '博士生导师', '', 1, 'product', 2, 0, 1, 0, 2),
(23, 1, '硕士生导师', '', 1, 'product', 2, 0, 1, 0, 3),
(24, 1, '本科生培养', '', 1, 'article', 3, 0, 1, 0, 1),
(25, 1, '研究生培养', '', 1, 'article', 3, 0, 1, 0, 2),
(26, 2, '精品课程', 'http://jpkc.sdkd.net.cn/', 2, 'null', 3, 0, 1, 0, 3),
(27, 1, '研究方向', '', 1, 'article', 4, 0, 1, 0, 1),
(28, 1, '科研项目', '', 1, 'article', 4, 0, 1, 0, 2),
(29, 1, '获奖成果', '', 1, 'article', 4, 0, 1, 0, 3),
(30, 1, '学术著作', '', 1, 'article', 4, 0, 1, 0, 4),
(31, 1, '荣誉称号', '', 1, 'article', 4, 0, 1, 0, 5),
(32, 1, '业余党校', '', 1, 'article', 5, 0, 1, 0, 1),
(33, 1, '理论学习', '', 1, 'article', 5, 0, 1, 0, 2),
(34, 1, '支部组成', '', 1, 'article', 5, 0, 1, 0, 3),
(35, 1, '实习基地', '', 1, 'article', 7, 0, 1, 0, 1),
(36, 1, '合作单位', '', 1, 'page', 7, 0, 1, 0, 2),
(37, 1, '毕业合照', '', 1, 'article', 8, 0, 1, 0, 1),
(38, 1, '校友风采', '', 1, 'article', 8, 0, 1, 0, 2),
(39, 1, '下载中心', '', 1, 'page', 9, 0, 1, 0, 1),
(40, 1, '本站公告', '', 1, 'article', 10, 0, 1, 0, 1),
(41, 1, '最新动态', '', 1, 'article', 10, 0, 1, 0, 2),
(42, 1, '教学科研', '', 1, 'article', 10, 0, 1, 0, 3),
(43, 1, '党建之窗', '', 1, 'article', 10, 0, 1, 0, 4),
(44, 1, '学术交流', '', 1, 'article', 10, 0, 1, 0, 5),
(45, 1, '师资风采', '', 1, 'article', 10, 0, 1, 0, 6),
(46, 1, '图说地科', '', 1, 'picture', 11, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hc_comment`
--

CREATE TABLE IF NOT EXISTS `hc_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` tinyint(3) unsigned NOT NULL,
  `fid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `hc_group`
--

CREATE TABLE IF NOT EXISTS `hc_group` (
  `gid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `allowhomepagecontent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowset` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowchannel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowuser` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowadvertise` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowcheckarticle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `hc_group`
--

INSERT INTO `hc_group` (`gid`, `name`, `allowhomepagecontent`, `allowset`, `allowchannel`, `allowuser`, `allowadvertise`, `allowcheckarticle`) VALUES
(1, '站长', 1, 1, 1, 1, 1, 1),
(2, '管理员', 1, 1, 1, 0, 1, 1),
(3, '频道管理员', 1, 0, 0, 0, 0, 0),
(4, '文章审核员', 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `hc_group_column`
--

CREATE TABLE IF NOT EXISTS `hc_group_column` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `hc_group_column`
--

INSERT INTO `hc_group_column` (`id`, `cid`, `uid`) VALUES
(4, 18, 1),
(5, 19, 1),
(6, 20, 1),
(7, 21, 1),
(8, 22, 1),
(9, 23, 1),
(10, 24, 1),
(11, 25, 1),
(12, 26, 1),
(13, 27, 1),
(14, 28, 1),
(15, 29, 1),
(16, 30, 1),
(17, 31, 1),
(18, 32, 1),
(19, 33, 1),
(20, 34, 1),
(21, 35, 1),
(22, 36, 1),
(23, 37, 1),
(24, 38, 1),
(25, 39, 1),
(26, 40, 1),
(27, 41, 1),
(28, 42, 1),
(29, 43, 1),
(30, 44, 1),
(31, 45, 1),
(32, 46, 1);

-- --------------------------------------------------------

--
-- 表的结构 `hc_module`
--

CREATE TABLE IF NOT EXISTS `hc_module` (
  `mid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `hc_module`
--

INSERT INTO `hc_module` (`mid`, `type`, `name`) VALUES
(1, 'page', '单页模块'),
(2, 'article', '文章模块'),
(3, 'product', '教师模块'),
(4, 'leaveword', '留言模块'),
(5, 'picture', '图片模块');

-- --------------------------------------------------------

--
-- 表的结构 `hc_module_article`
--

CREATE TABLE IF NOT EXISTS `hc_module_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `column` mediumint(8) unsigned NOT NULL,
  `contributeuid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL,
  `author` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `sourceurl` varchar(200) NOT NULL DEFAULT '#',
  `content` longtext NOT NULL,
  `clicknum` int(10) unsigned NOT NULL DEFAULT '0',
  `pubDatetime` datetime NOT NULL,
  `upDatetime` datetime NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '100',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `isfocus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `focusimage` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `hc_module_article`
--

INSERT INTO `hc_module_article` (`id`, `column`, `contributeuid`, `title`, `author`, `source`, `sourceurl`, `content`, `clicknum`, `pubDatetime`, `upDatetime`, `order`, `checked`, `isfocus`, `focusimage`) VALUES
(1, 40, 0, '测试测试测试', '', '', '', '', 0, '2014-06-02 17:02:30', '0000-00-00 00:00:00', 100, 1, 0, ''),
(2, 41, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:04:03', '0000-00-00 00:00:00', 100, 1, 0, ''),
(3, 41, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:06:00', '0000-00-00 00:00:00', 100, 1, 0, ''),
(4, 41, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:06:05', '0000-00-00 00:00:00', 100, 1, 0, ''),
(5, 41, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:06:09', '0000-00-00 00:00:00', 100, 1, 0, ''),
(6, 41, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:06:13', '0000-00-00 00:00:00', 100, 1, 0, ''),
(7, 41, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:06:17', '0000-00-00 00:00:00', 100, 1, 0, ''),
(8, 41, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:06:22', '0000-00-00 00:00:00', 100, 1, 0, ''),
(9, 41, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:06:26', '0000-00-00 00:00:00', 100, 1, 0, ''),
(10, 41, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:06:30', '0000-00-00 00:00:00', 100, 1, 0, ''),
(11, 41, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:06:44', '0000-00-00 00:00:00', 100, 1, 0, ''),
(12, 40, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:07:10', '0000-00-00 00:00:00', 100, 1, 0, ''),
(13, 40, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:07:15', '0000-00-00 00:00:00', 100, 1, 0, ''),
(14, 40, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:07:19', '0000-00-00 00:00:00', 100, 1, 0, ''),
(15, 40, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:07:23', '0000-00-00 00:00:00', 100, 1, 0, ''),
(16, 40, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:07:27', '0000-00-00 00:00:00', 100, 1, 0, ''),
(18, 40, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:07:36', '0000-00-00 00:00:00', 100, 1, 0, ''),
(19, 40, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 17:07:40', '0000-00-00 00:00:00', 100, 1, 0, ''),
(20, 42, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 19:16:05', '0000-00-00 00:00:00', 100, 1, 0, ''),
(21, 42, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 19:16:08', '0000-00-00 00:00:00', 100, 1, 0, ''),
(22, 42, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 19:16:11', '0000-00-00 00:00:00', 100, 1, 0, ''),
(23, 42, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 19:16:17', '0000-00-00 00:00:00', 100, 1, 0, ''),
(24, 42, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 19:16:19', '0000-00-00 00:00:00', 100, 1, 0, ''),
(25, 42, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 19:16:23', '0000-00-00 00:00:00', 100, 1, 0, ''),
(26, 42, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 19:16:28', '0000-00-00 00:00:00', 100, 1, 0, ''),
(27, 42, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 19:16:31', '0000-00-00 00:00:00', 100, 1, 0, ''),
(28, 42, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 19:16:34', '0000-00-00 00:00:00', 100, 1, 0, ''),
(29, 42, 0, '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-02 19:16:52', '0000-00-00 00:00:00', 100, 1, 0, ''),
(30, 40, 0, '测试', '', '', '', '', 0, '2014-06-08 21:08:43', '0000-00-00 00:00:00', 100, 1, 1, 'data/image/20140608/14022329193987.jpg'),
(31, 40, 0, '测试测试测试测试测试测试', '', '', '', '', 0, '2014-06-08 21:09:06', '0000-00-00 00:00:00', 100, 1, 1, 'data/image/20140608/14022329445950.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `hc_module_leaveword`
--

CREATE TABLE IF NOT EXISTS `hc_module_leaveword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `column` mediumint(8) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `hc_module_page`
--

CREATE TABLE IF NOT EXISTS `hc_module_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `column` mediumint(8) unsigned NOT NULL,
  `content` longtext NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `hc_module_page`
--

INSERT INTO `hc_module_page` (`id`, `column`, `content`, `datetime`) VALUES
(13, 18, '', '2014-05-31 15:48:31'),
(14, 19, '', '2014-05-31 15:48:52'),
(15, 36, '', '2014-05-31 15:54:04'),
(16, 37, '', '2014-05-31 15:54:15'),
(17, 39, '', '2014-05-31 15:55:07'),
(18, 38, '', '2014-05-31 16:04:45'),
(19, 43, '', '2014-06-02 19:00:42'),
(20, 20, '', '2014-06-05 15:36:20'),
(21, 24, '', '2014-06-05 15:37:33'),
(22, 25, '', '2014-06-05 15:37:38'),
(23, 34, '', '2014-06-05 15:37:50'),
(24, 44, '', '2014-06-09 14:52:46'),
(25, 45, '', '2014-06-09 14:52:49');

-- --------------------------------------------------------

--
-- 表的结构 `hc_module_picture`
--

CREATE TABLE IF NOT EXISTS `hc_module_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `column` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `hc_module_picture`
--

INSERT INTO `hc_module_picture` (`id`, `column`, `title`, `image`, `description`, `datetime`) VALUES
(1, 46, '测试测试测试测试测试测试', 'data/image/20140608/14022328372553.jpg', '', '2014-06-08 21:07:20');

-- --------------------------------------------------------

--
-- 表的结构 `hc_module_product`
--

CREATE TABLE IF NOT EXISTS `hc_module_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `column` mediumint(8) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `sex` char(1) NOT NULL,
  `xueli` varchar(50) NOT NULL,
  `zhicheng` varchar(50) NOT NULL,
  `model` varchar(100) NOT NULL,
  `spec` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `jianjie` varchar(255) NOT NULL,
  `introduce` text NOT NULL,
  `picture1` varchar(255) NOT NULL,
  `picture2` varchar(255) NOT NULL,
  `picture3` varchar(255) NOT NULL,
  `clicknum` int(10) unsigned NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `hc_user`
--

CREATE TABLE IF NOT EXISTS `hc_user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(40) NOT NULL COMMENT '登陆录账号',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `password` varchar(33) NOT NULL COMMENT '密码',
  `gid` int(6) NOT NULL DEFAULT '1' COMMENT '用户组id（对应usergroup）',
  `title` int(4) NOT NULL DEFAULT '12' COMMENT '职称',
  `sex` varchar(2) NOT NULL DEFAULT '',
  `education` varchar(50) NOT NULL DEFAULT '',
  `office` varchar(30) NOT NULL DEFAULT '',
  `birthday` varchar(10) NOT NULL DEFAULT '',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `avatar_big` varchar(60) NOT NULL DEFAULT '',
  `avatar_small` varchar(60) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `email` varchar(30) NOT NULL DEFAULT '',
  `introduce` varchar(141) NOT NULL DEFAULT '',
  `regDatetime` datetime NOT NULL,
  `regIp` varchar(40) NOT NULL,
  `lastDatetime` datetime NOT NULL,
  `lastIp` varchar(40) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户信息' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `hc_user`
--

INSERT INTO `hc_user` (`uid`, `username`, `name`, `password`, `gid`, `title`, `sex`, `education`, `office`, `birthday`, `phone`, `avatar_big`, `avatar_small`, `description`, `email`, `introduce`, `regDatetime`, `regIp`, `lastDatetime`, `lastIp`) VALUES
(1, 'admin', '系统管理员', 'b605e86d02eef8bfd0646f6a704c17c9', 3, 12, '男', '1234', '1234', '1234,1234', '1234', 'avatar/1_admin_big.jpg', 'avatar/nophoto.gif', '&lt;p&gt;123&lt;/p&gt;&lt;p&gt;123&lt;/p&gt;&lt;p&gt;123&lt;br /&gt;&lt;/p&gt;', '1234', '123', '0000-00-00 00:00:00', '', '2014-03-05 15:17:35', '192.168.130.207');

-- --------------------------------------------------------

--
-- 表的结构 `hc_user_group`
--

CREATE TABLE IF NOT EXISTS `hc_user_group` (
  `gid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `allowcontribute` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowautocheck` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `hc_user_group`
--

INSERT INTO `hc_user_group` (`gid`, `name`, `allowcontribute`, `allowautocheck`) VALUES
(1, '普通用户', 0, 0),
(2, '中级用户', 1, 0),
(3, '高级用户', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `hc_user_group_column`
--

CREATE TABLE IF NOT EXISTS `hc_user_group_column` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `hc_user_group_column`
--

INSERT INTO `hc_user_group_column` (`id`, `cid`, `uid`) VALUES
(7, 65, 1),
(8, 66, 1),
(9, 68, 1),
(10, 69, 1),
(11, 72, 1);

-- --------------------------------------------------------

--
-- 表的结构 `hc_user_title`
--

CREATE TABLE IF NOT EXISTS `hc_user_title` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET gbk NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `hc_user_title`
--

INSERT INTO `hc_user_title` (`id`, `name`) VALUES
(1, '教授'),
(2, '副教授'),
(12, '无'),
(7, '讲师'),
(8, '助教'),
(9, '高级实验师'),
(10, '实验师'),
(11, '助理实验师'),
(13, '特聘教授'),
(14, '兼职教授');

-- --------------------------------------------------------

--
-- 表的结构 `hc_website`
--

CREATE TABLE IF NOT EXISTS `hc_website` (
  `wid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `switch` tinyint(1) unsigned NOT NULL,
  `closereason` varchar(255) NOT NULL,
  `beian` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `is_comment` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `hc_website`
--

INSERT INTO `hc_website` (`wid`, `sitename`, `url`, `title`, `keywords`, `description`, `switch`, `closereason`, `beian`, `phone`, `email`, `zipcode`, `address`, `is_comment`) VALUES
(1, '山东科技大学 - 地球科学与工程学院', 'http://cgse.sdust.edu.cn', '地球科学与工程学院 - 山东科技大学', '', '', 1, '很抱歉，网站暂时关闭，请稍后访问。', '123456', '0532-80698179', 'shuxuetw@163.com', '266590', '山东省青岛经济技术开发区前湾港路579号山东科技大学地科学院', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
