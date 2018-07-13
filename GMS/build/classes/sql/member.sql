select * from tab;

create table member(
	account_seq VARCHAR2(20),
	userId VARCHAR2(20) constraint member_pk_userid PRIMARY KEY,
	pass VARCHAR2(20),
	name VARCHAR2(20),
	ssn VARCHAR2(8),
	addr VARCHAR2(20),
	phone VARCHAR2(20),
	email VARCHAR2(20),
	profile VARCHAR2(20),
	access_num DECIMAL,
	credit_rating DECIMAL,
	regidate VARCHAR2(20)
);
DROP TABLE member;

INSERT INTO member(
 account_seq,userId, pass, name, ssn, addr, phone, email, profile, access_num, credit_rating, regidate
) VALUES(
	1000,'kan', '1', '가은', '900818', '용산', '010-3121-8161', 'amlya@','프로필', 12, 5, SYSDATE
);

INSERT INTO member(
account_seq,userId, pass, name, ssn, addr, phone, email, profile, access_num, credit_rating, regidate
) VALUES(
	1001,'lee', '1', '이순신', '890103', '부산', '010-5432-8551', 'a@','as.jpg', 2, 2, SYSDATE
);

INSERT INTO member(
account_seq,userId, pass, name, ssn, addr, phone, email, profile, access_num, credit_rating, regidate
) values(
	1002,'oh','223','김유신','590302','울산','010-1234-5678','yoo@y.com','af.jpg',234,3,sysdate
);

INSERT INTO member(
account_seq,userId, pass, name, ssn, addr, phone, email, profile, access_num, credit_rating, regidate
) values(
	1003,'fewe2','2abc','양말','930302','부산','010-5555-5232','yoong@y.com','ff.jpg',234,4,sysdate
);
INSERT INTO member(
account_seq,userId, pass, name, ssn, addr, phone, email, profile, access_num, credit_rating, regidate
) values(
	1004,'bvc33','cvwedf','도깨비','210101','강원도','010-1234-2222','d@y.com','gg.jpg',234,1,sysdate
);
INSERT INTO member(
account_seq,userId, pass, name, ssn, addr, phone, email, profile, access_num, credit_rating, regidate
) values(
	1005,'abc','dfw2','공유','790808','서울','010-2524-5988','day@y.com','qq.jpg',234,5,sysdate
);
INSERT INTO member(
account_seq,userId, pass, name, ssn, addr, phone, email, profile, access_num, credit_rating, regidate
) values(
	1006,'han','tw2','인삼','394050','강원도','010-6234-9978','doom@y.com','ww.jpg',1,5,sysdate
);
INSERT INTO member(
account_seq,userId, pass, name, ssn, addr, phone, email, profile, access_num, credit_rating, regidate
) values(
	1007,'in','efw2','이동욱','780701','수원','010-9436-1438','eo@y.com','ee.jpg',232,6,sysdate
);
INSERT INTO member(
account_seq,userId, pass, name, ssn, addr, phone, email, profile, access_num, credit_rating, regidate
) values(
	1008,'8583','2125d','유인나','820303','인천','010-7337-5118','do@n.com','rr.jpg',1,4,sysdate
);
INSERT INTO member(
account_seq,userId, pass, name, ssn, addr, phone, email, profile, access_num, credit_rating, regidate
) values(
	1009,'yang','2121','알버트','970201','파리','010-7654-9876','ssso@n.com','tt.jpg',323,6,sysdate
);
INSERT INTO member(
account_seq,userId, pass, name, ssn, addr, phone, email, profile, access_num, credit_rating, regidate
) values(
	1010,'yoon','5532','곰돌이','931030','서울','010-1234-5678','h@y.com','ss.jpg',321,7,sysdate
);

select * from member;
SELECT userid, name, account_no 
FROM member m, account a
where m.account_seq = a.account_seq
and m.userid= 'kan'
;

DESC TABLE member;

ALTER TABLE member ADD CONSTRAINT address_fk_address_seq
	FOREIGN KEY (addr_seq) REFERENCE address(addr_seq);
