-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 12 月 04 日 05:42
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `orchid-best`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `backmenu`
-- 

CREATE TABLE `backmenu` (
  `id_backmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `remark` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_backmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

-- 
-- 导出表中的数据 `backmenu`
-- 

INSERT INTO `backmenu` VALUES (1, 1, '产品系统', '', 'product', 0, 1, 2, 1);
INSERT INTO `backmenu` VALUES (3, 1, '信息系统', '', 'news', 0, 1, 3, 1);
INSERT INTO `backmenu` VALUES (4, 1, '人事系统', '', 'hr', 0, 1, 4, 1);
INSERT INTO `backmenu` VALUES (5, 1, '权限系统', '', 'perm', 0, 1, 5, 1);
INSERT INTO `backmenu` VALUES (6, 1, '数据库备份', '', 'dbase', 0, 1, 6, 1);
INSERT INTO `backmenu` VALUES (9, 1, '产品管理', '', '/admin/product/product_manage.php', 1, 2, 9, 1);
INSERT INTO `backmenu` VALUES (8, 1, '产品目录', '', '/admin/product/product_dir.php', 1, 2, 8, 1);
INSERT INTO `backmenu` VALUES (47, 1, '区块管理', '', '/admin/siteset/layout.php', 44, 2, 47, 1);
INSERT INTO `backmenu` VALUES (15, 1, '信息分类', '', '/admin/news/news_dir.php', 3, 2, 15, 1);
INSERT INTO `backmenu` VALUES (16, 1, '信息管理', '', '/admin/news/news_manage.php', 3, 2, 16, 1);
INSERT INTO `backmenu` VALUES (17, 1, '员工档案', '', '/admin/hr/hr_staff.php', 4, 2, 17, 1);
INSERT INTO `backmenu` VALUES (18, 1, '考核统计', '', '/admin/hr/hr_exam.php', 4, 2, 18, 1);
INSERT INTO `backmenu` VALUES (19, 1, '招聘管理', '', '/admin/hr/hr_job.php', 4, 2, 19, 1);
INSERT INTO `backmenu` VALUES (20, 1, '系统菜单', '', '/admin/perm/perm_menu.php', 5, 2, 20, 1);
INSERT INTO `backmenu` VALUES (21, 1, '权限管理', '', '/admin/perm/perm_manage.php', 5, 2, 21, 1);
INSERT INTO `backmenu` VALUES (22, 1, '数据库备份', '', '/phpMyAdmin/', 6, 2, 22, 1);
INSERT INTO `backmenu` VALUES (48, 1, '版面管理', '', '/admin/siteset/pageset.php', 44, 2, 48, 1);
INSERT INTO `backmenu` VALUES (39, 1, '信息回收站', '', '/admin/news/newsrecycle.php', 3, 2, 39, 1);
INSERT INTO `backmenu` VALUES (41, 1, '产品回收站', '', '/admin/product/productrecycle.php', 1, 2, 41, 1);
INSERT INTO `backmenu` VALUES (46, 1, '站点设定', '', '/admin/siteset/siteset.php', 44, 2, 46, 1);
INSERT INTO `backmenu` VALUES (44, 1, '站点管理', '', 'siteset', 0, 1, 1, 1);
INSERT INTO `backmenu` VALUES (49, 1, '前台菜单', '', '/admin/siteset/webmenu.php', 44, 2, 49, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `dept`
-- 

CREATE TABLE `dept` (
  `id_dept` int(11) NOT NULL auto_increment,
  `dept` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_dept`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- 导出表中的数据 `dept`
-- 

INSERT INTO `dept` VALUES (36, '111', 1);
INSERT INTO `dept` VALUES (35, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `exam`
-- 

CREATE TABLE `exam` (
  `id_exam` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `level` varchar(1) NOT NULL,
  `examdate` date NOT NULL,
  PRIMARY KEY  (`id_exam`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- 导出表中的数据 `exam`
-- 

INSERT INTO `exam` VALUES (15, 1, 'dd', 'D', '2010-10-01');
INSERT INTO `exam` VALUES (16, 1, 'ww', 'D', '2010-09-01');
INSERT INTO `exam` VALUES (17, 1, 'dr', 'D', '2010-12-01');
INSERT INTO `exam` VALUES (18, 1, 'rr', 'S', '2010-12-01');
INSERT INTO `exam` VALUES (19, 1, 'tt', 'T', '2010-10-01');
INSERT INTO `exam` VALUES (20, 1, '张荣', 'F', '2010-08-01');
INSERT INTO `exam` VALUES (21, 1, '收发', 'D', '2010-06-01');
INSERT INTO `exam` VALUES (22, 1, '张荣', 'F', '2010-12-01');
INSERT INTO `exam` VALUES (23, 1, '吕品', 'U', '2010-05-01');
INSERT INTO `exam` VALUES (24, 1, '囸打开', 'G', '2010-04-01');
INSERT INTO `exam` VALUES (25, 1, 'ss', 'S', '2010-12-01');

-- --------------------------------------------------------

-- 
-- 表的结构 `hr`
-- 

CREATE TABLE `hr` (
  `id_hr` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL default '1',
  `birthday` date NOT NULL,
  `hrcode` varchar(10) NOT NULL,
  `dept` int(11) NOT NULL,
  `iswork` int(1) NOT NULL default '1',
  `idcard` varchar(28) NOT NULL,
  `ismarry` int(1) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `native` varchar(30) NOT NULL,
  `register` varchar(60) NOT NULL,
  `inwork` date NOT NULL,
  `education` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `school` varchar(40) NOT NULL,
  `political` varchar(20) NOT NULL,
  `post` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `hometel` varchar(20) NOT NULL,
  `mobi` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `hjqk` text NOT NULL,
  `cfqk` text NOT NULL,
  `gwbd` text NOT NULL,
  `ldht` text NOT NULL,
  `sbjn` text NOT NULL,
  `remark` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `logindate` datetime NOT NULL,
  `loginip` varchar(16) NOT NULL,
  PRIMARY KEY  (`id_hr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

-- 
-- 导出表中的数据 `hr`
-- 

INSERT INTO `hr` VALUES (1, 1, 'administrator', 1, '0000-00-00', '', 36, 1, '', 0, '', '', '', '2011-01-29', '', '', '', '', 9, 15, '', '', '', '', '', '', '', '', '', '', 'admin', 'admin888', 1, 1, '2011-01-29 18:08:13', '2011-02-25 22:22:35', '0000-00-00 00:00:00', '2012-03-14 15:19:38', '122.228.246.14');

-- --------------------------------------------------------

-- 
-- 表的结构 `layout`
-- 

CREATE TABLE `layout` (
  `id_layout` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `intro` text NOT NULL,
  `content` text NOT NULL,
  `openstat` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_layout`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- 导出表中的数据 `layout`
-- 

INSERT INTO `layout` VALUES (5, 1, '全局－页脚', '', 'INDEX-Footer', 'Copyright &copy; 2012 Shanghai Sulaser Technology Co.,Ltd. &nbsp;All rights&nbsp;reserved&nbsp;&nbsp;Tel:+86(21) 5956 3865&nbsp;&nbsp;&nbsp;Fax:+86(21) 5956 3859&nbsp;&nbsp;&nbsp;Email:sulaser.joycebai@gmail.com<br />\r\nAddr:Room 1307 Jiazheng International, No.28 Moyu Road, Anting, Jiading District, Shanghai', 1);
INSERT INTO `layout` VALUES (12, 1, '首页－产品展示', '', 'index－product show', '', 1);
INSERT INTO `layout` VALUES (7, 1, '首页-最新产品', '', 'INDEX-new Products', '', 1);
INSERT INTO `layout` VALUES (8, 1, '首页-Banner', '', 'INDEX-Banner', '', 1);
INSERT INTO `layout` VALUES (10, 1, '全局－联系我们－左侧', '', 'Global－Contact Us－Left', 'Yiwu Landa weighing Apparatus Company<br />\r\nAddr:Room 1307 Jiazheng International, No.28 Moyu Road, Anting, Jiading District, Shanghai<br />\r\nTel：+86(21) 5956 3865<br />\r\nFax：+86(21) 5956 3859<br />\r\nWebsite：www.sulaser.com<br />\r\nsulaser.joycebai@gmail.com<br />\r\nZip：201805<br />', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `layoutpic`
-- 

CREATE TABLE `layoutpic` (
  `id_layoutpic` int(11) NOT NULL auto_increment,
  `id_layout` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_layoutpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

-- 
-- 导出表中的数据 `layoutpic`
-- 

INSERT INTO `layoutpic` VALUES (46, 8, 1, '', '', '', '1330004409.jpg', '', 1, 'JPG', '2012-02-23 21:40:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (47, 8, 1, '', '', '', '1330004504.jpg', '', 1, 'JPG', '2012-02-23 21:41:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (48, 8, 1, '', '', '', '1330004510.jpg', '', 1, 'JPG', '2012-02-23 21:41:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (49, 8, 1, '', '', '', '1330004515.jpg', '', 1, 'JPG', '2012-02-23 21:41:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (44, 12, 1, '', '', 'cpzs1', '1329131965.jpg', '', 1, 'JPG', '2012-02-13 19:19:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (45, 12, 1, '', '', '', '1329131972.jpg', '', 1, 'JPG', '2012-02-13 19:19:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (40, 12, 1, '', '', '', '1329131685.jpg', '', 1, 'JPG', '2012-02-13 19:14:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (41, 12, 1, '', '', '', '1329131689.jpg', '', 1, 'JPG', '2012-02-13 19:14:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (42, 12, 1, '', '', '', '1329131694.jpg', '', 1, 'JPG', '2012-02-13 19:14:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (43, 12, 1, '', '', '', '1329131698.jpg', '', 1, 'JPG', '2012-02-13 19:14:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (39, 12, 1, '', '', '', '1329131680.jpg', '', 1, 'JPG', '2012-02-13 19:14:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (38, 12, 1, '', '', '', '1329131675.jpg', '', 1, 'JPG', '2012-02-13 19:14:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (30, 7, 1, 'Islamabad Pakistan', 'The court''s move deepens the political turmoil in Pakistan amid tensions between the civilian and military authorities and fraught relations with the United States. It means Gilani, the first Pakistani prime minister to be charged while in office, will face a trial that could endanger his political future.', 'product/productsinfo.php?pid=4&pdir1=3&pdir2=10', '1329130089.jpg', '', 1, 'JPG', '2012-01-04 22:26:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (31, 7, 1, 'willfully flouted', 'Gilani and his lawyers have argued that the prime minister has not followed the court''s order because Zardari enjoys immunity in Pakistan and abroad as a president in office', '', '1329130132.jpg', '', 1, 'JPG', '2012-01-04 22:27:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (32, 7, 1, 'corruption charges', 'The court has demanded that Gilani ask the Swiss authorities to reopen corruption charges from the 1990s against President Asif Ali Zardari and others.', '', '1329130142.jpg', '', 1, 'JPG', '2012-01-04 22:27:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (33, 7, 1, 'standoff with', 'Gilani, whose government has resisted the request, has been locked in a standoff with the Supreme Court justices for about two years over the issue. He could be jailed for six months if the justices find him in contempt.', '', '1329130201.jpg', '', 1, 'JPG', '2012-01-04 22:28:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsdir`
-- 

CREATE TABLE `newsdir` (
  `id_newsdir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsdir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- 
-- 导出表中的数据 `newsdir`
-- 

INSERT INTO `newsdir` VALUES (19, 1, 'Company News', '', 1, 18, 2, 19);
INSERT INTO `newsdir` VALUES (18, 1, 'News', '', 1, 0, 1, 18);
INSERT INTO `newsdir` VALUES (20, 1, 'Product News', '', 1, 18, 2, 20);
INSERT INTO `newsdir` VALUES (21, 1, 'Industry News', '', 1, 18, 2, 21);
INSERT INTO `newsdir` VALUES (22, 1, 'Announcements', '', 1, 18, 2, 22);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsinfo`
-- 

CREATE TABLE `newsinfo` (
  `id_newsinfo` int(11) NOT NULL auto_increment,
  `id_newsdir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `url` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

-- 
-- 导出表中的数据 `newsinfo`
-- 

INSERT INTO `newsinfo` VALUES (73, 19, 0, 1, 'Are you there? Send us your images or video', 'Are you there? Send us your images or video', '<p>Arab League members Sunday called for a joint peacekeeping mission in Syria with the United Nations and urged members to support the Syrian opposition as it faces a bloody government crackdown.</p>\r\n<p>The moves are aimed at putting additional pressure on Syrian President Bashar al-Assad and his government, which has unleashed its army on a popular revolt. The proposed peacekeeping mission would oversee the aftermath of a cease-fire, the Cairo-based Arab League announced Sunday.</p>\r\n<p>But Syria quickly said it was not on board with the idea. The Arab League suspended Syria''s membership in January, and the Syrian government announced that any decision made without it &quot;is not binding.&quot;</p>\r\n<p>The league, which suspended Syria in January, said its members have decided to end the previous monitoring mission, which had been in Syria in December and January, to request a joint U.N.- Arab League peacekeeping mission. A communiqu&eacute; issued after Sunday''s meeting called on members to &quot;open channels of communication&quot; with Syrian opposition groups and provide &quot;political and financial support.&quot; It urged members to cut diplomatic and economic ties with Damascus &quot;except for those that directly affect Syrian citizens.&quot;</p>\r\n<p>And it warned, &quot;The use of violence against Syrian civilians with this extreme cruelty, including the targeting of women and children, lies under the jurisdiction of the international criminal law and requires the punishment of its perpetrators.&quot;</p>\r\n<p>The Local Coordination Committees of Syria, a network of opposition activists, praised the Arab League for &quot;making the decision to improve its performance in its national and humanitarian duty to the Syrian people.&quot;</p>\r\n<p>&quot;We therefore appeal to brotherly and friendly nations, international organizations and non-governmental organizations around the world to expedite development and relief programs to help Syrians in overcoming the daily oppression and injustice under which they live,&quot; the LCC said. &quot;We also call on all Syrian political and activist entities to coordinate their efforts under a consolidated framework to ensure that relief supplies and other assistance are delivered immediately to those who need them.&quot;</p>\r\n<p>U.N. officials say about 6,000 have been killed since last March, when al-Assad began cracking down on peaceful protests against his government. Syria has consistently blamed &quot;armed terrorist groups&quot; for the violence, and its allies, Russia and China, vetoed a U.N. resolution February 4 that was aimed at bringing an end to the strife.</p>\r\n<p>A Syrian statement said the Arab League proposal reflects &quot;the state of hysteria affecting some Arab governments, especially Qatar and Saudi Arabia, after Qatar''s failure to pass a U.N. resolution that allows foreign intervention in Syria.&quot;</p>\r\n<p>Nevertheless, the Arab League said it would ask the United Nations to consider its initiative &quot;as soon as possible,&quot; although the timetable for any action is unknown. And earlier, Arab League Secretary-General Nabil Elaraby signaled that he''d had recent communications with Russian Foreign Minister Sergey Lavrov indicating that Moscow may alter its positions.</p>\r\n<p>In a written statement, Elaraby quoted a letter he said was written by Lavrov, stating that an end to &quot;any violence must be the main pillar for any proposal.&quot;</p>\r\n<p>&quot;We are ready to support an expanded monitoring mission and folding it under the joint care of the Arab League and the United Nations on the basis of an agreement from all involved parties,&quot; Elaraby quoted Lavrov.</p>\r\n<p>There was no immediate comment from Russia''s government about the reported communication or any significant shift in that nation''s position.</p>\r\n<p>Michael O''Hanlon: 3 military options in Syria</p>\r\n<p>The latest maneuvering among Syria''s neighbors came as opposition activists reported another day of shelling by Syrian forces around the city of Homs.</p>\r\n<p>One opposition activist said government forces are using detained civilians as human shields, placing them on tanks to prevent the opposition Free Syrian Army from fighting back. Residents say shelling rained on the city''s Baba Amr neighborhood once again Sunday, for at least the eighth straight day.</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:25:31', '2012-02-13 15:42:04', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newspic`
-- 

CREATE TABLE `newspic` (
  `id_newspic` int(11) NOT NULL auto_increment,
  `id_newsinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newspic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `newspic`
-- 

INSERT INTO `newspic` VALUES (9, 77, 1, '', '', '', '1321930838.jpg', '', 1, 'JPG', '2011-11-22 11:00:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (8, 76, 1, '', '', '', '1321842554.JPG', '', 1, 'JPG', '2011-11-21 10:29:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pageset`
-- 

CREATE TABLE `pageset` (
  `id_pageset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `pagetitle` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id_pageset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `pageset`
-- 

INSERT INTO `pageset` VALUES (3, 1, 'Our History', '', '', '', '', '<p>Our History Our History</p>');
INSERT INTO `pageset` VALUES (4, 1, 'Our Culture', '', '', '', '', 'Yiwu Landa weighing Apparatus Company.is located in Shanghai Anting &ndash; International Automobile City. We are professional supplier for gas &amp; solid laser device, laser accurate processing equipment, &amp; laser machinery. Our main products are Fiber Laser Marking Machine, Diode End- Pump Laser Marking Machine, Diode Side-Pump Laser Marking Machine, Co2 Laser Marking Machine, Gas &amp; Solid Laser Device, Metal Laser Cutting Machine, Co2 Laser Engraving &amp; Cutting Machine etc., are widely used in electronic industry, automobile industry, medical products, hardware, metal processing, household electric appliance, commodity, aeronautical industry, certificate cards, jewelry processing, instrumentation, advertising plate etc.<br />\r\nSHANGHAI SULASER TECHNOLOGY CO.,LTD. adheres to the business principle of &ldquo; quality is the first and credit is the basis&rdquo;. With the enterprise spirit of &ldquo;pursuit of perfection and pragmatism&rdquo;, we constantly explore and determinedly innovate with great efforts to make competitive products. We always pursue the goal of providing customers with high quality products and first class service.');
INSERT INTO `pageset` VALUES (5, 1, 'About Us', '', '', '', '', '<img style="margin-bottom: 20px; float: left; margin-right: 20px" alt="" align="left" width="154" height="131" src="/upload/other/3257336284.jpg" />Yiwu Landa weighing Apparatus Company is located in Shanghai Anting &ndash; International Automobile City. We are professional supplier for gas &amp; solid laser device, laser accurate processing equipment, &amp; laser machinery. <br />\r\nOur main products are Fiber Laser Marking Machine, Diode End- Pump Laser Marking Machine, Diode Side-Pump Laser Marking Machine, Co2 Laser Marking Machine, Gas &amp; Solid Laser Device, Metal Laser Cutting Machine, Co2 Laser Engraving &amp; Cutting Machine etc., are widely used in electronic industry, automobile industry, medical products, hardware, metal processing, household electric appliance, commodity, aeronautical industry, certificate cards, jewelry processing, instrumentation, advertising plate etc.<br />\r\n<br />\r\nSHANGHAI SULASER TECHNOLOGY CO.,LTD. adheres to the business principle of &ldquo; quality is the first and credit is the basis&rdquo;. With the enterprise spirit of &ldquo;pursuit of perfection and pragmatism&rdquo;, we constantly explore and determinedly innovate with great efforts to make competitive products. We always pursue the goal of providing customers with high quality products and first class service.');
INSERT INTO `pageset` VALUES (6, 1, 'Contact Us', '', '', '', '', 'Yiwu Landa weighing Apparatus Company\r\n<p>Addr：Room 1307 Jiazheng International, No.28 Moyu Road, Anting, Jiading District, Shanghai<br />\r\nZip：201805<br />\r\nEmail：joycebai@gmail.com&nbsp; <br />\r\nTel：+86 (21) 5956 3865 <br />\r\nFax：+86 (21) 5956 3859</p>');

-- --------------------------------------------------------

-- 
-- 表的结构 `pagesetpic`
-- 

CREATE TABLE `pagesetpic` (
  `id_pagesetpic` int(11) NOT NULL auto_increment,
  `id_pageset` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_pagesetpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- 导出表中的数据 `pagesetpic`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `pavy1`
-- 

CREATE TABLE `pavy1` (
  `id_pavy1` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `product_visit` int(1) NOT NULL default '0',
  `store_visit` int(1) NOT NULL default '0',
  `news_visit` int(1) NOT NULL default '0',
  `hr_visit` int(1) NOT NULL default '0',
  `pavy_visit` int(1) NOT NULL default '0',
  `data_visit` int(1) NOT NULL default '0',
  `siteset_visit` int(1) NOT NULL default '0',
  `level` int(1) NOT NULL default '0',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pavy1`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- 导出表中的数据 `pavy1`
-- 

INSERT INTO `pavy1` VALUES (28, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy2`
-- 

CREATE TABLE `pavy2` (
  `id_pvay2` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `id_backmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `browseprem` int(1) NOT NULL default '0',
  `addprem` int(1) NOT NULL default '0',
  `editprem` int(1) NOT NULL default '0',
  `deleprem` int(1) NOT NULL default '0',
  `display` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '0',
  `state` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pvay2`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=264 ;

-- 
-- 导出表中的数据 `pavy2`
-- 

INSERT INTO `pavy2` VALUES (246, 1, 46, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (245, 1, 41, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (244, 1, 39, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (243, 1, 22, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (242, 1, 21, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (241, 1, 20, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (240, 1, 19, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (239, 1, 18, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (238, 1, 17, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (237, 1, 16, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (236, 1, 15, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (235, 1, 47, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (234, 1, 8, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (233, 1, 9, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (247, 1, 48, 1, 1, 1, 1, 1, 1, 0, 1, '2011-03-09 16:42:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (263, 1, 49, 1, 1, 1, 1, 1, 1, 0, 1, '2011-04-15 02:03:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `post`
-- 

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL auto_increment,
  `post` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `post`
-- 

INSERT INTO `post` VALUES (1, '普通员工', 1);
INSERT INTO `post` VALUES (2, '物料收发员', 1);
INSERT INTO `post` VALUES (3, 'IQC', 1);
INSERT INTO `post` VALUES (4, '仓库主管', 1);
INSERT INTO `post` VALUES (5, '采购主管', 1);
INSERT INTO `post` VALUES (6, '销售主管', 1);
INSERT INTO `post` VALUES (7, '副总经理', 1);
INSERT INTO `post` VALUES (8, '总经理', 1);
INSERT INTO `post` VALUES (9, '网站管理员', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `productdir`
-- 

CREATE TABLE `productdir` (
  `id_proddir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL,
  `name` varchar(50) NOT NULL default '1',
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `dirurl` varchar(50) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_proddir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- 导出表中的数据 `productdir`
-- 

INSERT INTO `productdir` VALUES (1, 0, 'Body Scales', '', 1, '', 0, 1, 1);
INSERT INTO `productdir` VALUES (2, 0, 'Kitchen Scales', '', 1, '', 0, 1, 2);
INSERT INTO `productdir` VALUES (3, 0, 'Luggage Scales', '', 1, '', 0, 1, 3);
INSERT INTO `productdir` VALUES (4, 0, 'Hanging Scales', '', 1, '', 0, 1, 4);
INSERT INTO `productdir` VALUES (5, 0, 'Gift Scales', '', 1, '', 0, 1, 5);
INSERT INTO `productdir` VALUES (6, 0, 'Machanical Body Scales', '', 1, '', 1, 2, 6);
INSERT INTO `productdir` VALUES (7, 0, 'Digital Body Scales', '', 1, '', 1, 2, 7);
INSERT INTO `productdir` VALUES (8, 0, 'Machanical Kitchen Scales', '', 1, '', 2, 2, 8);
INSERT INTO `productdir` VALUES (9, 0, 'Digital Kitchen Scales', '', 1, '', 2, 2, 9);
INSERT INTO `productdir` VALUES (10, 0, 'Mechanical Luggage Scales', '', 1, '', 3, 2, 10);
INSERT INTO `productdir` VALUES (11, 0, 'Digital Luggage Scales', '', 1, '', 3, 2, 11);
INSERT INTO `productdir` VALUES (12, 0, 'Spring Hanging Scales', '', 1, '', 4, 2, 12);
INSERT INTO `productdir` VALUES (13, 0, 'Digital Hanging Scales', '', 1, '', 4, 2, 13);
INSERT INTO `productdir` VALUES (14, 0, 'Gift Scales', '', 1, '', 5, 2, 14);

-- --------------------------------------------------------

-- 
-- 表的结构 `productinfo`
-- 

CREATE TABLE `productinfo` (
  `id_prodinfo` int(11) NOT NULL auto_increment,
  `id_proddir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `productinfo`
-- 

INSERT INTO `productinfo` VALUES (1, 6, 0, 1, 'cutting machine', '', '<p>rising temperatures inside a stricken nuclear reactor at the Fukushima-Daiichi plant, authorities said Monday, as Japan prepares to mark one year since a devastating earthquake and tsunami triggered a nuclear meltdown.</p>\r\n<p>The plant''s operators, Tokyo Electric Power Co. (TEPCO) said temperatures inside the Reactor Pressure Vessel of Unit 2 have been gradually increasing since February 2 and on Monday hit a high of 89.2 degrees Celsius.</p>\r\n<p>The reading is significant because an error margin of 20 degrees Celsius for the gauges takes the temperature well above 100 degrees Celsius, one of the pre-conditions for a &quot;cold shutdown.&quot;</p>\r\n<p>Japan declared the shattered plant was in &quot;cold shutdown&quot; last December, a welcome milestone in a fraught battle to contain one of the world''s worst nuclear disasters.<br />\r\n<br />\r\n<img alt="" width="400" height="330" src="/upload/other/3294692896.jpg" /></p>', '', 1, 1, '2012-02-13 18:34:30', '2012-02-17 17:07:16', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (2, 7, 0, 1, 'shattered plant was', '', '<p>The plant''s operators, Tokyo Electric Power Co. (TEPCO) said temperatures inside the Reactor Pressure Vessel of Unit 2 have been gradually increasing since February 2 and on Monday hit a high of 89.2 degrees Celsius.</p>\r\n<p>The reading is significant because an error margin of 20 degrees Celsius for the gauges takes the temperature well above 100 degrees Celsius, one of the pre-conditions for a &quot;cold shutdown.&quot;</p>\r\n<p>Japan declared the shattered plant was in &quot;cold shutdown&quot; last December, a welcome milestone in a fraught battle to contain one of the world''s worst nuclear disasters.</p>', '', 1, 1, '2012-02-13 18:36:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (3, 8, 0, 1, 'since February', '', '<p>authorities said Monday, as Japan prepares to mark one year since a devastating earthquake and tsunami triggered a nuclear meltdown.</p>\r\n<p>The plant''s operators, Tokyo Electric Power Co. (TEPCO) said temperatures inside the Reactor Pressure Vessel of Unit 2 have been gradually increasing since February 2 and on Monday hit a high of 89.2 degrees Celsius.</p>\r\n<p>The reading is significant because an error margin of 20 degrees Celsius for the gauges takes the temperature well above 100 degrees Celsius, one of the pre-conditions for a &quot;cold shutdown.&quot;</p>\r\n<p>Japan declared the shattered plant was in &quot;cold shutdown&quot; last December, a welcome milestone in a fraught battle to contain one of the world''s worst nuclear disasters.</p>', '', 1, 1, '2012-02-13 18:37:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (4, 10, 0, 1, 'fraught battle', '', '<p>The reading is significant because an error margin of 20 degrees Celsius for the gauges takes the temperature well above 100 degrees Celsius, one of the pre-conditions for a &quot;cold shutdown.&quot;</p>\r\n<p>Japan declared the shattered plant was in &quot;cold shutdown&quot; last December, a welcome milestone in a fraught battle to contain one of the world''s worst nuclear disasters.</p>', '', 1, 1, '2012-02-13 18:38:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (5, 12, 0, 1, 'devastating earthquake', '', '<p>Tokyo Electric Power Co. (TEPCO) said temperatures inside the Reactor Pressure Vessel of Unit 2 have been gradually increasing since February 2 and on Monday hit a high of 89.2 degrees Celsius.</p>\r\n<p>The reading is significant because an error margin of 20 degrees Celsius for the gauges takes the temperature well above 100 degrees Celsius, one of the pre-conditions for a &quot;cold shutdown.&quot;</p>\r\n<p>Japan declared the shattered plant was in &quot;cold shutdown&quot; last December, a welcome milestone in a fraught battle to contain one of the world''s worst nuclear</p>', '', 1, 1, '2012-02-13 18:38:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (6, 14, 0, 1, 'Monday hit a high', '', '<p>(TEPCO) said temperatures inside the Reactor Pressure Vessel of Unit 2 have been gradually increasing since February 2 and on Monday hit a high of 89.2 degrees Celsius.</p>\r\n<p>The reading is significant because an error margin of 20 degrees Celsius for the gauges takes the temperature well above 100 degrees Celsius, one of the pre-conditions for a &quot;cold shutdown.&quot;</p>\r\n<p>Japan declared the shattered plant was in &quot;cold shutdown&quot; last December, a welcome milestone in a fraught battle to contain one of the world''s worst nuclear disasters.<br />\r\n<br />\r\n<img width="283" height="323" alt="" src="/upload/other/3294691741.jpg" /></p>', '', 1, 1, '2012-02-13 18:39:05', '2012-02-17 16:59:38', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `productpic`
-- 

CREATE TABLE `productpic` (
  `id_prodpic` int(11) NOT NULL auto_increment,
  `id_prodinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `productpic`
-- 

INSERT INTO `productpic` VALUES (1, 1, 1, '', '', '', '1329129373.jpg', '', 1, 'JPG', '2012-02-13 18:36:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (2, 2, 1, '', '', '', '1329129423.jpg', '', 1, 'JPG', '2012-02-13 18:37:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (3, 3, 1, '', '', '', '1329129460.jpg', '', 1, 'JPG', '2012-02-13 18:37:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (4, 4, 1, '', '', '', '1329129492.jpg', '', 1, 'JPG', '2012-02-13 18:38:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (5, 5, 1, '', '', '', '1329129527.jpg', '', 1, 'JPG', '2012-02-13 18:38:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (6, 6, 1, '', '', '', '1329129571.jpg', '', 1, 'JPG', '2012-02-13 18:39:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `siteset`
-- 

CREATE TABLE `siteset` (
  `id_siteset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `otherheader` text NOT NULL,
  `iscopy` int(1) NOT NULL default '0',
  `rmailbox` varchar(50) NOT NULL,
  `smailbox` varchar(50) NOT NULL,
  `smailboxpass` varchar(50) NOT NULL,
  `icp` varchar(25) NOT NULL,
  `mapcode` text NOT NULL,
  `statistics` text NOT NULL,
  PRIMARY KEY  (`id_siteset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `siteset`
-- 

INSERT INTO `siteset` VALUES (1, 1, 'Yiwu Landa weighing Apparatus Company.', 'Yiwu Landa weighing Apparatus Company.', 'Yiwu Landa weighing Apparatus Company.', '', 0, '', '', '', '', '<iframe width="680" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com.hk/maps?f=q&source=s_q&hl=en&geocode=&q=%E4%B8%8A%E6%B5%B7%E5%B8%82%E5%98%89%E5%AE%9A%E5%8C%BA%E5%AE%89%E4%BA%AD%E9%95%87%E5%A2%A8%E7%8E%89%E8%B7%AF28%E5%8F%B7%E5%98%89%E6%AD%A3%E5%9B%BD%E9%99%851307%E5%AE%A4&sll=22.38131,114.168639&sspn=0.97649,1.234589&vpsrc=0&brcurrent=3,0x0:0x0,0&ie=UTF8&hq=%E4%B8%8A%E6%B5%B7%E5%B8%82%E5%98%89%E5%AE%9A%E5%8C%BA%E5%AE%89%E4%BA%AD%E9%95%87%E5%A2%A8%E7%8E%89%E8%B7%AF28%E5%8F%B7%E5%98%89%E6%AD%A3%E5%9B%BD%E9%99%851307%E5%AE%A4&t=m&ll=31.290247,121.163353&spn=0.01907,0.032015&output=embed"></iframe>', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `title`
-- 

CREATE TABLE `title` (
  `id_title` int(11) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `title`
-- 

INSERT INTO `title` VALUES (15, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `webmenu`
-- 

CREATE TABLE `webmenu` (
  `id_webmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `url` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_webmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `webmenu`
-- 

INSERT INTO `webmenu` VALUES (1, 1, '网站首页', '/', 1, 0, 1, 8);
INSERT INTO `webmenu` VALUES (2, 1, '公司简介', '/about/aboutus.php', 1, 0, 1, 7);
INSERT INTO `webmenu` VALUES (3, 1, '产品中心', '/product/index.php', 1, 0, 1, 6);
INSERT INTO `webmenu` VALUES (4, 1, '新闻动态', '/news/index.php', 1, 0, 1, 5);
INSERT INTO `webmenu` VALUES (5, 1, '人才招聘', '/hr/index.php', 1, 0, 1, 4);
INSERT INTO `webmenu` VALUES (8, 1, '联系我们', '/about/contactus.php', 1, 0, 1, 1);
