	#9是传进来的第一个参数
	CREATE TABLE t_user_soul_9(
		userid int unsigned not null,
		soulid int unsigned not null,
		skill_level int unsigned not null default 1,
		whether char(1) not null default '0', 
		attach_attr binary(32) not null default 0x00000000,
		primary key (userid,soulid)
	)ENGINE=innodb CHARSET=UTF8;
