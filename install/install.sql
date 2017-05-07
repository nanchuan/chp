-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2012 年 11 月 03 日 04:14
-- 服务器版本: 5.5.27
-- PHP 版本: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES gb2312 */;

--
-- 数据库: `cmssystem`
--

-- --------------------------------------------------------

--
-- 表的结构 `cms_article`
--

CREATE TABLE IF NOT EXISTS `cms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `cid` int(11) NOT NULL COMMENT '所属栏目ID',
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `subtitle` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `att` set('a','b','c','d','e','f','g') COLLATE utf8_unicode_ci DEFAULT '' COMMENT '属性',
  `pic` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `source` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源',
  `author` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '作者',
  `resume` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '摘要',
  `pubdate` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '发表日期',
  `content` text COLLATE utf8_unicode_ci COMMENT '文章内容',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `created_by` int(11) NOT NULL COMMENT '创建者',
  `created_date` datetime NOT NULL COMMENT '创建时间',
  `delete_session_id` int(11) DEFAULT NULL COMMENT '删除人ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `cms_article`
--

INSERT INTO `cms_article` (`id`, `cid`, `title`, `subtitle`, `att`, `pic`, `source`, `author`, `resume`, `pubdate`, `content`, `hits`, `created_by`, `created_date`, `delete_session_id`) VALUES
(1, 1, '关于最新的文章资讯', '', '', NULL, 'www.21cn.com', 'phpaa', 'phpaaCMS', '2012-11-02 15:55:21', '<p>CMS是一个非常简单易用的内容管理系统，适合做一些功能简单的站点！</p>\r\n<p>现在发布的是第一个版本，可能有些很多地方不是很稳定，欢迎大家提出修改意见。</p>', 0, 1, '2012-11-02 15:55:21', NULL),
(2, 1, '文章管理系统', '', '', 'data/attachment/image/thumbnails/200906/2009060209121790.gif', 'http://www.phpaa.cn', 'phpaa', '系统更新', '2012-11-02 15:55:04', '<p>系统更新</p>\r\n<p>将系统中的短标记全部改成php5中默认的php标准标记</p>\r\n<p>修正点击用户名，不能修改的bug</p>\r\n<p>系统增加一个简单的说明文件,根目录 《说明.txt》</p>\r\n<p>调整部分页面</p>\r\n<p>&nbsp;</p>', 0, 1, '2012-11-02 15:55:04', NULL),
(12, 16, '测试数据2', '', '', NULL, '', '', ' ', '2009-04-09 01:01:25', '<p>afsafa</p>', 0, 1, '2009-04-09 01:01:25', NULL),
(9, 16, '测试数据1', '', '', NULL, '', '', ' ', '2009-04-04 00:45:00', '', 0, 1, '2009-04-04 00:45:00', NULL),
(13, 16, '测试数据3', '', '', NULL, '', '', ' ', '2009-04-09 01:12:43', '<p>afdsfdsa</p>', 0, 1, '2009-04-09 01:12:43', NULL),
(14, 16, '测试数据4', '', '', 'data/attachment/image/thumbnails/200904/2009040911140798.jpg', '', '', ' ', '2009-04-09 11:14:12', '<p><img height="421" alt="" width="337" src="/liuenyi/AACMS/data/attachment/image/0904090232343125039jnid20ffnmi.jpg" /></p>', 0, 1, '2009-04-09 11:14:12', NULL),
(15, 16, '测试数据5', '', '', NULL, '', '', ' ', '2009-04-09 11:15:09', '', 0, 1, '2009-04-09 11:15:09', NULL),
(16, 16, '测试数据6', '', 'a,b,d', 'data/attachment/image/thumbnails/200904/2009040911202864.jpg', '', '', ' ', '2009-04-15 09:37:26', '<p>sss</p>', 0, 1, '2009-04-15 09:37:26', NULL),
(17, 16, '测试数据7', '', 'b,d,f', NULL, '', '', ' ', '2009-04-15 09:38:02', '<p>fsd</p>', 0, 1, '2009-04-15 09:38:02', NULL),
(18, 16, '测试数据8', 'sddsafds', 'b', 'data/attachment/image/thumbnails/200904/2009041509383862.jpg', 'dss', 'ffff', 'sfddsaffsad', '2009-04-15 10:06:27', '<p>sadfdsadsaf<img height="421" alt="" width="337" src="/liuenyi/phpaaCMS/data/attachment/image/0904090232343125039jnid20ffnmi.jpg" /></p>', 0, 1, '2009-04-15 10:06:27', NULL),
(19, 16, '测试数据9', '副标题发生的的', 'a,d', 'data/attachment/image/thumbnails/200904/2009042022273733.gif', '出处', '作者', '摘要', '2009-04-20 22:27:54', '<p>阿方索高盛公司</p>', 0, 1, '2009-04-20 22:27:54', NULL),
(20, 16, '测试数据10', '', '', NULL, '', '', '', '2009-04-20 22:28:19', '<p>我热惹我</p>', 0, 1, '2009-04-20 22:28:19', NULL),
(21, 16, '测试数据11', '', '', NULL, '', '', '', '2009-04-20 22:28:32', '', 0, 1, '2009-04-20 22:28:32', NULL),
(22, 16, '测试数据12', '', '', NULL, '', '', '', '2009-04-20 22:28:39', '', 0, 1, '2009-04-20 22:28:39', NULL),
(23, 16, '测试数据13', '', '', NULL, '', '', '', '2009-04-20 22:28:49', '', 0, 1, '2009-04-20 22:28:49', NULL),
(24, 16, '测试数据14', '', '', NULL, '', '', '', '2009-04-20 22:29:34', '', 0, 1, '2009-04-20 22:29:34', NULL),
(25, 16, '测试数据15', '', '', NULL, '', '', '', '2009-04-20 22:29:51', '', 0, 1, '2009-04-20 22:29:51', NULL),
(26, 16, '测试数据16', '', '', NULL, '', '', '', '2009-04-20 22:29:54', '', 0, 1, '2009-04-20 22:29:54', NULL),
(27, 16, '测试数据17', '', '', NULL, '', '', '', '2009-04-20 22:29:58', '', 0, 1, '2009-04-20 22:29:58', NULL),
(28, 16, '测试数据18', '', '', NULL, '', '', '', '2009-04-20 22:30:03', '', 0, 1, '2009-04-20 22:30:03', NULL),
(29, 16, '测试数据19', '', '', 'data/attachment/200906/20090604120007_69.jpg', '', '', '', '2009-06-04 12:00:07', '', 0, 1, '2009-06-04 12:00:07', NULL),
(30, 16, '测试数据20', '', '', 'data/attachment/200906/20090604131438_69.gif', '', '', '', '2009-06-04 13:14:38', '', 0, 1, '2009-06-04 13:14:38', NULL),
(31, 1, '文章管理系统V0.3 UTF-8 发布', '', '', NULL, '', '', '', '2012-11-02 15:54:54', '<p><span style="font-size: x-large"><span><span><strong>新增加功能</strong></span></span></span></p>\r\n<p>页面管理</p>\r\n<p>文件管理</p>', 0, 1, '2012-11-02 15:54:54', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cms_category`
--

CREATE TABLE IF NOT EXISTS `cms_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '栏目名称',
  `description` text COLLATE utf8_unicode_ci,
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '栏目排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `cms_category`
--

INSERT INTO `cms_category` (`id`, `pid`, `name`, `description`, `seq`) VALUES
(1, 0, '最新动态', NULL, 0),
(16, 0, '科技新闻', NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `cms_file`
--

CREATE TABLE IF NOT EXISTS `cms_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) DEFAULT NULL,
  `ffilename` varchar(200) DEFAULT NULL,
  `path` varchar(250) DEFAULT NULL,
  `ext` varchar(10) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `cms_file`
--

INSERT INTO `cms_file` (`id`, `filename`, `ffilename`, `path`, `ext`, `size`, `upload_date`) VALUES
(8, '20090604135517_94.jpg', 'Blue hills.jpg', 'data/attachment/200906/20090604135517_94.jpg', 'jpg', 28521, '2009-06-04 13:55:17');

-- --------------------------------------------------------

--
-- 表的结构 `cms_friendlink`
--

CREATE TABLE IF NOT EXISTS `cms_friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(200) NOT NULL COMMENT '网站名称',
  `url` varchar(200) NOT NULL COMMENT '网址',
  `description` varchar(400) NOT NULL COMMENT '站点简介',
  `logo` varchar(200) NOT NULL COMMENT '网站LOGO',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '排列顺序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `cms_friendlink`
--

INSERT INTO `cms_friendlink` (`id`, `name`, `url`, `description`, `logo`, `seq`) VALUES
(3, 'phpChina', 'http://www.phpchina.com', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `cms_message`
--

CREATE TABLE IF NOT EXISTS `cms_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '称呼',
  `qq` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'QQ',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email or MSN',
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  `reply` text COLLATE utf8_unicode_ci COMMENT '回复',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '留言人IP',
  `validate` int(11) DEFAULT '0' COMMENT '0为验证 1已验证',
  `created_date` datetime DEFAULT NULL COMMENT '留言日期',
  `reply_date` datetime DEFAULT NULL COMMENT '回复日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `cms_message`
--

INSERT INTO `cms_message` (`id`, `title`, `name`, `qq`, `email`, `content`, `reply`, `ip`, `validate`, `created_date`, `reply_date`) VALUES
(15, '关于最新的文章资讯', '刘歌', '', '', 'asfdasdfasfd', NULL, '127.0.0.1', 0, '2012-11-02 16:05:58', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cms_notice`
--

CREATE TABLE IF NOT EXISTS `cms_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(200) NOT NULL COMMENT '公告标题',
  `content` text NOT NULL COMMENT '公告内容',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '状态（0 发布 1 禁用）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `cms_notice`
--

INSERT INTO `cms_notice` (`id`, `title`, `content`, `state`) VALUES
(6, '最新的内容管理', '非常简易的文章管理系统，适合建立一些功能要求不高的公司、企业、政府网站', 0),
(9, '内容管理系统最新版发布', '更改了页面外观', 0);

-- --------------------------------------------------------

--
-- 表的结构 `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(20) DEFAULT NULL COMMENT '别名',
  `title` varchar(100) DEFAULT NULL COMMENT '名称',
  `content` text COMMENT '内容',
  `created_date` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `cms_page`
--

INSERT INTO `cms_page` (`id`, `code`, `title`, `content`, `created_date`) VALUES
(2, 'contact', '联系方式', '<p>邮箱：webmaster@domain.com<br />\r\n网址：http://www.domain.com</p>', '2009-05-15 11:47:21'),
(3, 'introduce', '网站介绍', '<p>一个简易的开源的文章管理系统</p>', '2009-05-15 23:50:13');

-- --------------------------------------------------------

--
-- 表的结构 `cms_users`
--

CREATE TABLE IF NOT EXISTS `cms_users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `cms_users`
--

INSERT INTO `cms_users` (`userid`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
