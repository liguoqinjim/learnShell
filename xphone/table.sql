	CREATE TABLE t_global_user_pvp(
		userid int unsigned not null,
		pvp_value int unsigned not null,
		pvp_point int unsigned not null,
		pvp_value_last int unsigned not null,
		pvp_value_max int unsigned not null,
		pvp_value_temp int unsigned not null,
		primary key (userid)
	)ENGINE=innodb CHARSET=UTF8;
