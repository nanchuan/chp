-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- ����: 127.0.0.1
-- ��������: 2012 �� 11 �� 03 �� 04:14
-- �������汾: 5.5.27
-- PHP �汾: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES gb2312 */;

--
-- ���ݿ�: `cmssystem`
--

-- --------------------------------------------------------

--
-- ��Ľṹ `cms_article`
--

CREATE TABLE IF NOT EXISTS `cms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `cid` int(11) NOT NULL COMMENT '������ĿID',
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '����',
  `subtitle` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `att` set('a','b','c','d','e','f','g') COLLATE utf8_unicode_ci DEFAULT '' COMMENT '����',
  `pic` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '����ͼ',
  `source` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '��Դ',
  `author` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '����',
  `resume` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ժҪ',
  `pubdate` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '��������',
  `content` text COLLATE utf8_unicode_ci COMMENT '��������',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '�������',
  `created_by` int(11) NOT NULL COMMENT '������',
  `created_date` datetime NOT NULL COMMENT '����ʱ��',
  `delete_session_id` int(11) DEFAULT NULL COMMENT 'ɾ����ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- ת����е����� `cms_article`
--

INSERT INTO `cms_article` (`id`, `cid`, `title`, `subtitle`, `att`, `pic`, `source`, `author`, `resume`, `pubdate`, `content`, `hits`, `created_by`, `created_date`, `delete_session_id`) VALUES
(1, 1, '�������µ�������Ѷ', '', '', NULL, 'www.21cn.com', 'phpaa', 'phpaaCMS', '2012-11-02 15:55:21', '<p>CMS��һ���ǳ������õ����ݹ���ϵͳ���ʺ���һЩ���ܼ򵥵�վ�㣡</p>\r\n<p>���ڷ������ǵ�һ���汾��������Щ�ܶ�ط����Ǻ��ȶ�����ӭ�������޸������</p>', 0, 1, '2012-11-02 15:55:21', NULL),
(2, 1, '���¹���ϵͳ', '', '', 'data/attachment/image/thumbnails/200906/2009060209121790.gif', 'http://www.phpaa.cn', 'phpaa', 'ϵͳ����', '2012-11-02 15:55:04', '<p>ϵͳ����</p>\r\n<p>��ϵͳ�еĶ̱��ȫ���ĳ�php5��Ĭ�ϵ�php��׼���</p>\r\n<p>��������û����������޸ĵ�bug</p>\r\n<p>ϵͳ����һ���򵥵�˵���ļ�,��Ŀ¼ ��˵��.txt��</p>\r\n<p>��������ҳ��</p>\r\n<p>&nbsp;</p>', 0, 1, '2012-11-02 15:55:04', NULL),
(12, 16, '��������2', '', '', NULL, '', '', ' ', '2009-04-09 01:01:25', '<p>afsafa</p>', 0, 1, '2009-04-09 01:01:25', NULL),
(9, 16, '��������1', '', '', NULL, '', '', ' ', '2009-04-04 00:45:00', '', 0, 1, '2009-04-04 00:45:00', NULL),
(13, 16, '��������3', '', '', NULL, '', '', ' ', '2009-04-09 01:12:43', '<p>afdsfdsa</p>', 0, 1, '2009-04-09 01:12:43', NULL),
(14, 16, '��������4', '', '', 'data/attachment/image/thumbnails/200904/2009040911140798.jpg', '', '', ' ', '2009-04-09 11:14:12', '<p><img height="421" alt="" width="337" src="/liuenyi/AACMS/data/attachment/image/0904090232343125039jnid20ffnmi.jpg" /></p>', 0, 1, '2009-04-09 11:14:12', NULL),
(15, 16, '��������5', '', '', NULL, '', '', ' ', '2009-04-09 11:15:09', '', 0, 1, '2009-04-09 11:15:09', NULL),
(16, 16, '��������6', '', 'a,b,d', 'data/attachment/image/thumbnails/200904/2009040911202864.jpg', '', '', ' ', '2009-04-15 09:37:26', '<p>sss</p>', 0, 1, '2009-04-15 09:37:26', NULL),
(17, 16, '��������7', '', 'b,d,f', NULL, '', '', ' ', '2009-04-15 09:38:02', '<p>fsd</p>', 0, 1, '2009-04-15 09:38:02', NULL),
(18, 16, '��������8', 'sddsafds', 'b', 'data/attachment/image/thumbnails/200904/2009041509383862.jpg', 'dss', 'ffff', 'sfddsaffsad', '2009-04-15 10:06:27', '<p>sadfdsadsaf<img height="421" alt="" width="337" src="/liuenyi/phpaaCMS/data/attachment/image/0904090232343125039jnid20ffnmi.jpg" /></p>', 0, 1, '2009-04-15 10:06:27', NULL),
(19, 16, '��������9', '�����ⷢ���ĵ�', 'a,d', 'data/attachment/image/thumbnails/200904/2009042022273733.gif', '����', '����', 'ժҪ', '2009-04-20 22:27:54', '<p>��������ʢ��˾</p>', 0, 1, '2009-04-20 22:27:54', NULL),
(20, 16, '��������10', '', '', NULL, '', '', '', '2009-04-20 22:28:19', '<p>��������</p>', 0, 1, '2009-04-20 22:28:19', NULL),
(21, 16, '��������11', '', '', NULL, '', '', '', '2009-04-20 22:28:32', '', 0, 1, '2009-04-20 22:28:32', NULL),
(22, 16, '��������12', '', '', NULL, '', '', '', '2009-04-20 22:28:39', '', 0, 1, '2009-04-20 22:28:39', NULL),
(23, 16, '��������13', '', '', NULL, '', '', '', '2009-04-20 22:28:49', '', 0, 1, '2009-04-20 22:28:49', NULL),
(24, 16, '��������14', '', '', NULL, '', '', '', '2009-04-20 22:29:34', '', 0, 1, '2009-04-20 22:29:34', NULL),
(25, 16, '��������15', '', '', NULL, '', '', '', '2009-04-20 22:29:51', '', 0, 1, '2009-04-20 22:29:51', NULL),
(26, 16, '��������16', '', '', NULL, '', '', '', '2009-04-20 22:29:54', '', 0, 1, '2009-04-20 22:29:54', NULL),
(27, 16, '��������17', '', '', NULL, '', '', '', '2009-04-20 22:29:58', '', 0, 1, '2009-04-20 22:29:58', NULL),
(28, 16, '��������18', '', '', NULL, '', '', '', '2009-04-20 22:30:03', '', 0, 1, '2009-04-20 22:30:03', NULL),
(29, 16, '��������19', '', '', 'data/attachment/200906/20090604120007_69.jpg', '', '', '', '2009-06-04 12:00:07', '', 0, 1, '2009-06-04 12:00:07', NULL),
(30, 16, '��������20', '', '', 'data/attachment/200906/20090604131438_69.gif', '', '', '', '2009-06-04 13:14:38', '', 0, 1, '2009-06-04 13:14:38', NULL),
(31, 1, '���¹���ϵͳV0.3 UTF-8 ����', '', '', NULL, '', '', '', '2012-11-02 15:54:54', '<p><span style="font-size: x-large"><span><span><strong>�����ӹ���</strong></span></span></span></p>\r\n<p>ҳ�����</p>\r\n<p>�ļ�����</p>', 0, 1, '2012-11-02 15:54:54', NULL);

-- --------------------------------------------------------

--
-- ��Ľṹ `cms_category`
--

CREATE TABLE IF NOT EXISTS `cms_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��ĿID',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '����ĿID',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '��Ŀ����',
  `description` text COLLATE utf8_unicode_ci,
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '��Ŀ����',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- ת����е����� `cms_category`
--

INSERT INTO `cms_category` (`id`, `pid`, `name`, `description`, `seq`) VALUES
(1, 0, '���¶�̬', NULL, 0),
(16, 0, '�Ƽ�����', NULL, 0);

-- --------------------------------------------------------

--
-- ��Ľṹ `cms_file`
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
-- ת����е����� `cms_file`
--

INSERT INTO `cms_file` (`id`, `filename`, `ffilename`, `path`, `ext`, `size`, `upload_date`) VALUES
(8, '20090604135517_94.jpg', 'Blue hills.jpg', 'data/attachment/200906/20090604135517_94.jpg', 'jpg', 28521, '2009-06-04 13:55:17');

-- --------------------------------------------------------

--
-- ��Ľṹ `cms_friendlink`
--

CREATE TABLE IF NOT EXISTS `cms_friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(200) NOT NULL COMMENT '��վ����',
  `url` varchar(200) NOT NULL COMMENT '��ַ',
  `description` varchar(400) NOT NULL COMMENT 'վ����',
  `logo` varchar(200) NOT NULL COMMENT '��վLOGO',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '����˳��',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- ת����е����� `cms_friendlink`
--

INSERT INTO `cms_friendlink` (`id`, `name`, `url`, `description`, `logo`, `seq`) VALUES
(3, 'phpChina', 'http://www.phpchina.com', '', '', 0);

-- --------------------------------------------------------

--
-- ��Ľṹ `cms_message`
--

CREATE TABLE IF NOT EXISTS `cms_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '����',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '�ƺ�',
  `qq` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'QQ',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email or MSN',
  `content` text COLLATE utf8_unicode_ci COMMENT '����',
  `reply` text COLLATE utf8_unicode_ci COMMENT '�ظ�',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '������IP',
  `validate` int(11) DEFAULT '0' COMMENT '0Ϊ��֤ 1����֤',
  `created_date` datetime DEFAULT NULL COMMENT '��������',
  `reply_date` datetime DEFAULT NULL COMMENT '�ظ�����',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- ת����е����� `cms_message`
--

INSERT INTO `cms_message` (`id`, `title`, `name`, `qq`, `email`, `content`, `reply`, `ip`, `validate`, `created_date`, `reply_date`) VALUES
(15, '�������µ�������Ѷ', '����', '', '', 'asfdasdfasfd', NULL, '127.0.0.1', 0, '2012-11-02 16:05:58', NULL);

-- --------------------------------------------------------

--
-- ��Ľṹ `cms_notice`
--

CREATE TABLE IF NOT EXISTS `cms_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(200) NOT NULL COMMENT '�������',
  `content` text NOT NULL COMMENT '��������',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '״̬��0 ���� 1 ���ã�',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- ת����е����� `cms_notice`
--

INSERT INTO `cms_notice` (`id`, `title`, `content`, `state`) VALUES
(6, '���µ����ݹ���', '�ǳ����׵����¹���ϵͳ���ʺϽ���һЩ����Ҫ�󲻸ߵĹ�˾����ҵ��������վ', 0),
(9, '���ݹ���ϵͳ���°淢��', '������ҳ�����', 0);

-- --------------------------------------------------------

--
-- ��Ľṹ `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(20) DEFAULT NULL COMMENT '����',
  `title` varchar(100) DEFAULT NULL COMMENT '����',
  `content` text COMMENT '����',
  `created_date` datetime DEFAULT NULL COMMENT '��������',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- ת����е����� `cms_page`
--

INSERT INTO `cms_page` (`id`, `code`, `title`, `content`, `created_date`) VALUES
(2, 'contact', '��ϵ��ʽ', '<p>���䣺webmaster@domain.com<br />\r\n��ַ��http://www.domain.com</p>', '2009-05-15 11:47:21'),
(3, 'introduce', '��վ����', '<p>һ�����׵Ŀ�Դ�����¹���ϵͳ</p>', '2009-05-15 23:50:13');

-- --------------------------------------------------------

--
-- ��Ľṹ `cms_users`
--

CREATE TABLE IF NOT EXISTS `cms_users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '�û���',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- ת����е����� `cms_users`
--

INSERT INTO `cms_users` (`userid`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
