
/* Drop Triggers */

DROP TRIGGER TRI_time_line_time_num;
DROP TRIGGER TRI_wiki_wiki_num;
DROP TRIGGER TRI_team_team_num;
DROP TRIGGER TRI_project_pro_num;
DROP TRIGGER TRI_calender_date_num;
DROP TRIGGER TRI_chklist_chk_num;
DROP TRIGGER TRI_member_mem_num;
DROP TRIGGER TRI_chk_res_res_num;
DROP TRIGGER TRI_card_comment_comment_num;
DROP TRIGGER TRI_card_file_file_num;
DROP TRIGGER TRI_card_mem_card_mem_num;
DROP TRIGGER TRI_final_mem_mem_num;
DROP TRIGGER TRI_subscribe_sub_num;
DROP TRIGGER TRI_NEW_TABLE_sum_mem_num;
DROP TRIGGER TRI_sub_mem_sum_mem_num;



/* Drop Tables */

DROP TABLE chk_res CASCADE CONSTRAINTS;
DROP TABLE chklist CASCADE CONSTRAINTS;
DROP TABLE card_mem CASCADE CONSTRAINTS;
DROP TABLE card_comment CASCADE CONSTRAINTS;
DROP TABLE card_file CASCADE CONSTRAINTS;
DROP TABLE subscribe CASCADE CONSTRAINTS;

DROP TABLE card CASCADE CONSTRAINTS;

DROP TABLE kanban CASCADE CONSTRAINTS;

DROP TABLE wiki CASCADE CONSTRAINTS;

DROP TABLE time_line CASCADE CONSTRAINTS;

DROP TABLE middle CASCADE CONSTRAINTS;
DROP TABLE team CASCADE CONSTRAINTS;
DROP TABLE final_mem CASCADE CONSTRAINTS;
DROP TABLE calender CASCADE CONSTRAINTS;
DROP TABLE project CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_final_mem_mem_num;
DROP SEQUENCE SEQ_team_team_num;
DROP SEQUENCE SEQ_project_pro_num;
DROP SEQUENCE SEQ_calender_date_num;
DROP SEQUENCE SEQ_chk_res_res_num;
DROP SEQUENCE SEQ_wiki_wiki_num;
DROP SEQUENCE SEQ_time_line_time_num;
DROP SEQUENCE SEQ_chklist_chk_num;
DROP SEQUENCE SEQ_card_mem_card_mem_num;
DROP SEQUENCE SEQ_card_file_file_num;
DROP SEQUENCE SEQ_card_comment_comment_num;
DROP SEQUENCE SEQ_subscribe_sub_num;
DROP SEQUENCE SEQ_sub_mem_sum_mem_num;




/* Create Sequences */

CREATE SEQUENCE SEQ_final_mem_mem_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_team_team_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_project_pro_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_calender_date_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_chk_res_res_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_wiki_wiki_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_time_line_time_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_chklist_chk_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_card_mem_card_mem_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_card_file_file_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_card_comment_comment_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_subscribe_sub_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_sub_mem_sum_mem_num INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE kanban
(
	kanban_num number NOT NULL,
	kanban_order number NOT NULL,
	kanban_name varchar2(30),
	pro_num number NOT NULL,
	PRIMARY KEY (kanban_num)
);


CREATE TABLE chk_res
(
	res_num number NOT NULL,
	chk_num number NOT NULL,
	result varchar2(1) DEFAULT 'x',
	PRIMARY KEY (res_num)
);


CREATE TABLE wiki
(
	wiki_num number NOT NULL,
	pro_num number NOT NULL,
	wiki_title varchar2(30) NOT NULL,
	wiki_writer varchar2(30),
	wiki_before varchar2(200),
	wiki_after varchar2(300),
	wikie_date date,
	PRIMARY KEY (wiki_num)
);


CREATE TABLE time_line
(
	time_num number NOT NULL,
	pro_num number NOT NULL,
	time_who varchar2(30),
	time_where varchar2(50),
	time_what varchar2(50),
	time_how varchar2(50),
	time_when date NOT NULL,
	PRIMARY KEY (time_num)
);


CREATE TABLE chklist
(
	chk_num number NOT NULL,
	chk_name varchar2(50),
	card_num number NOT NULL,
	PRIMARY KEY (chk_num)
);


CREATE TABLE card_mem
(
	card_mem_num number NOT NULL,
	card_num number NOT NULL,
	card_mem varchar2(20),
	PRIMARY KEY (card_mem_num)
);


CREATE TABLE card_file
(
	file_num number NOT NULL,
	card_num number NOT NULL,
	upload_file varchar2(100),
	file_when date,
	file_link number DEFAULT 0,
	PRIMARY KEY (file_num)
);


CREATE TABLE card_comment
(
	comment_num number NOT NULL,
	card_num number NOT NULL,
	comment_writer varchar2(30),
	comment_content varchar2(100),
	comment_when date,
	PRIMARY KEY (comment_num)
);


CREATE TABLE final_mem
(
	mem_num number NOT NULL,
	email varchar2(50) NOT NULL UNIQUE,
	pass varchar2(50) NOT NULL,
	introduce varchar2(350),
	picture varchar2(40),
	PRIMARY KEY (mem_num)
);
select * from final_mem

CREATE TABLE team
(
	team_num number NOT NULL,
	mem_num number NOT NULL,
	team_admin number DEFAULT 0,
	req number DEFAULT 0,
	PRIMARY KEY (team_num)
);


CREATE TABLE middle
(
	team_num number NOT NULL,
	pro_num number NOT NULL
);


CREATE TABLE project
(
	pro_num number NOT NULL,
	pro_title varchar2(50) NOT NULL,
	pro_des varchar2(350) NOT NULL,
	pro_pic varchar2(40),
	PRIMARY KEY (pro_num)
);


CREATE TABLE calender
(
	date_num number NOT NULL,
	date_name varchar2(30),
	date_desc varchar2(350),
	start_date date,
	end_date date,
	pro_num number NOT NULL,
	PRIMARY KEY (date_num)
);


CREATE TABLE card
(
	card_num number NOT NULL,
	kanban_num number NOT NULL,
	chef_mem varchar2(20),
	card_name varchar2(20) NOT NULL,
	tag varchar2(30),
	descript varchar2(100),
	card_order number,
	card_when date,
	due_date date,
	PRIMARY KEY (card_num)
);


CREATE TABLE subscribe
(
	sub_num number NOT NULL,
	card_num number NOT NULL,
	mem_num number,
	sub_when date,
	PRIMARY KEY (sub_num)
);



/* Create Foreign Keys */

ALTER TABLE card
	ADD FOREIGN KEY (kanban_num)
	REFERENCES kanban (kanban_num)
;


ALTER TABLE chk_res
	ADD FOREIGN KEY (chk_num)
	REFERENCES chklist (chk_num)
;


ALTER TABLE team
	ADD FOREIGN KEY (mem_num)
	REFERENCES final_mem (mem_num)
;


ALTER TABLE middle
	ADD FOREIGN KEY (team_num)
	REFERENCES team (team_num)
;


ALTER TABLE time_line
	ADD FOREIGN KEY (pro_num)
	REFERENCES project (pro_num)
;


ALTER TABLE calender
	ADD FOREIGN KEY (pro_num)
	REFERENCES project (pro_num)
;


ALTER TABLE kanban
	ADD FOREIGN KEY (pro_num)
	REFERENCES project (pro_num)
;


ALTER TABLE middle
	ADD FOREIGN KEY (pro_num)
	REFERENCES project (pro_num)
;


ALTER TABLE wiki
	ADD FOREIGN KEY (pro_num)
	REFERENCES project (pro_num)
;


ALTER TABLE chklist
	ADD FOREIGN KEY (card_num)
	REFERENCES card (card_num)
;


ALTER TABLE card_mem
	ADD FOREIGN KEY (card_num)
	REFERENCES card (card_num)
;


ALTER TABLE card_comment
	ADD FOREIGN KEY (card_num)
	REFERENCES card (card_num)
;


ALTER TABLE card_file
	ADD FOREIGN KEY (card_num)
	REFERENCES card (card_num)
;


ALTER TABLE subscribe
	ADD FOREIGN KEY (card_num)
	REFERENCES card (card_num)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_time_line_time_num BEFORE INSERT ON time_line
FOR EACH ROW
BEGIN
	SELECT SEQ_time_line_time_num.nextval
	INTO :new.time_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_wiki_wiki_num BEFORE INSERT ON wiki
FOR EACH ROW
BEGIN
	SELECT SEQ_wiki_wiki_num.nextval
	INTO :new.wiki_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_team_team_num BEFORE INSERT ON team
FOR EACH ROW
BEGIN
	SELECT SEQ_team_team_num.nextval
	INTO :new.team_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_project_pro_num BEFORE INSERT ON project
FOR EACH ROW
BEGIN
	SELECT SEQ_project_pro_num.nextval
	INTO :new.pro_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_calender_date_num BEFORE INSERT ON calender
FOR EACH ROW
BEGIN
	SELECT SEQ_calender_date_num.nextval
	INTO :new.date_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_chklist_chk_num BEFORE INSERT ON chklist
FOR EACH ROW
BEGIN
	SELECT SEQ_chklist_chk_num.nextval
	INTO :new.chk_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_member_mem_num BEFORE INSERT ON member
FOR EACH ROW
BEGIN
	SELECT SEQ_member_mem_num.nextval
	INTO :new.mem_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_chk_res_res_num BEFORE INSERT ON chk_res
FOR EACH ROW
BEGIN
	SELECT SEQ_chk_res_res_num.nextval
	INTO :new.res_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_card_comment_comment_num BEFORE INSERT ON card_comment
FOR EACH ROW
BEGIN
	SELECT SEQ_card_comment_comment_num.nextval
	INTO :new.comment_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_card_file_file_num BEFORE INSERT ON card_file
FOR EACH ROW
BEGIN
	SELECT SEQ_card_file_file_num.nextval
	INTO :new.file_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_card_mem_card_mem_num BEFORE INSERT ON card_mem
FOR EACH ROW
BEGIN
	SELECT SEQ_card_mem_card_mem_num.nextval
	INTO :new.card_mem_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_final_mem_mem_num BEFORE INSERT ON final_mem
FOR EACH ROW
BEGIN
	SELECT SEQ_final_mem_mem_num.nextval
	INTO :new.mem_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_subscribe_sub_num BEFORE INSERT ON subscribe
FOR EACH ROW
BEGIN
	SELECT SEQ_subscribe_sub_num.nextval
	INTO :new.sub_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_NEW_TABLE_sum_mem_num BEFORE INSERT ON NEW_TABLE
FOR EACH ROW
BEGIN
	SELECT SEQ_NEW_TABLE_sum_mem_num.nextval
	INTO :new.sum_mem_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_sub_mem_sum_mem_num BEFORE INSERT ON sub_mem
FOR EACH ROW
BEGIN
	SELECT SEQ_sub_mem_sum_mem_num.nextval
	INTO :new.sum_mem_num
	FROM dual;
END;

/




