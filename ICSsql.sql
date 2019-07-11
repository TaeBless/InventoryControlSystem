CREATE TABLE warehouse(
	id int not null auto_increment,
    i_num varchar(45),
    i_count int,
    l_date varchar(45),
    ea varchar(45),
    primary key(id),
    foreign key(i_num) references item(i_num)
);
    
create table buyhistory(
	id int not null auto_increment,
    b_num varchar(45),
    i_num varchar(45),
    price int,
    buy_count int,
    buy_date datetime,
    who varchar(45),
    primary key(id),
    foreign key(b_num) references business(b_num),
    foreign key(i_num) references item(i_num)
);

create table sellhistory(
	id int not null auto_increment,
    b_num varchar(45),
    i_num varchar(45),
    price int,
    sell_count int,
    sell_date datetime,
    who varchar(45),
    primary key(id),
    foreign key(b_num) references business(b_num),
    foreign key(i_num) references item(i_num)
);

create table payment(
	id int not null auto_increment,
    b_num varchar(45),
    i_num varchar(45),
    d_date datetime,
    p_allmoney int,
    p_money int,
    primary key(id),
    foreign key(b_num) references business(b_num),
    foreign key(i_num) references item(i_num)
);

create table collect(
	id int not null auto_increment,
    b_num varchar(45),
    i_num varchar(45),
    d_date datetime,
    c_allmoney int,
    c_money int,
    primary key(id),
    foreign key(b_num) references business(b_num),
    foreign key(i_num) references item(i_num)
);

create table payhistory(
	id int not null auto_increment,
	b_num varchar(45),
    i_num varchar(45),
	money int,
	p_date datetime,
	who varchar(45),
    primary key(id),
    foreign key(b_num) references business(b_num),
    foreign key(i_num) references item(i_num)
);

create table colhistory(
	id int not null auto_increment,
	b_num varchar(45),
    i_num varchar(45),
	money int,
	c_date datetime,
	who varchar(45),
    primary key(id),
    foreign key(b_num) references business(b_num),
    foreign key(i_num) references item(i_num)
);

create table countfinish(
	id int not null auto_increment,
    fyear varchar(10),
    fmonth varchar(10),
    i_num varchar(45),
    pre_count int,
    u_count int,
	s_count int,
    n_count int,
    flag varchar(20),
    primary key(id),
    foreign key(i_num) references item(i_num)
);

create table moneyfinish(
	id int not null auto_increment,
    fyear varchar(10),
    fmonth varchar(10),
    b_num varchar(45),
    pre_money int,
    u_money int,
	s_money int,
    n_money int,
    flag varchar(20),
    primary key(id),
    foreign key(b_num) references business(b_num)
);

create table moneyfinish(
	id int not null auto_increment,
    fyear varchar(10),
    fmonth varchar(10),
    b_num varchar(45),
    pre_money int,
    u_money int,
	s_money int,
    n_money int,
    flag varchar(20),
    primary key(id),
    foreign key(b_num) references business(b_num)
);

CREATE TABLE item (
  i_num varchar(45) NOT NULL,
  b_num varchar(45) DEFAULT NULL,
  i_name varchar(45) DEFAULT NULL,
  price int(11) DEFAULT NULL,
  ea varchar(45) DEFAULT NULL,
  PRIMARY KEY (i_num),
  KEY b_num_idx (b_num),
  CONSTRAINT b_num FOREIGN KEY (b_num) REFERENCES business (b_num) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE business (
  b_num varchar(45) NOT NULL,
  b_name varchar(45) DEFAULT NULL,
  b_loc varchar(45) DEFAULT NULL,
  PRIMARY KEY (b_num)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

truncate buyhistory;
truncate colhistory;
truncate collect;
truncate countfinish;
truncate moneyfinish;
truncate payhistory;
truncate payment;
truncate sellhistory;
truncate warehouse;
alter table buyhistory auto_increment = 1;
alter table colhistory auto_increment = 1;
alter table collect auto_increment = 1;
alter table countfinish auto_increment = 1;
alter table moneyfinish auto_increment = 1;
alter table payhistory auto_increment = 1;
alter table payment auto_increment = 1;
alter table sellhistory auto_increment = 1;
alter table warehouse auto_increment = 1;

