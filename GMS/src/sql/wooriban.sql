
Create table teamz(
    TEAM_ID varchar2(20) primary key,
    TEAM_NAME varchar2(20)
    );
Create table teamw(
    MEM_ID varchar2(20) primary key,
    TEAM_ID varchar2(20),
    MEM_NAME varchar2(20),
    MEM_AGE decimal
    --roll varchar2(20) --롤:팀장,회원,아이템,게시판,관리자담당
);

CREATE SEQUENCE SUB_SEQ;
CREATE SEQUENCE RECORD_SEQ;
CREATE SEQUENCE EXAM_SEQ;

CREATE TABLE SUBJECT(
        SUB_SEQ DECIMAL PRIMARY KEY,
        SUBJECT_NAME VARCHAR2(20)
);

CREATE TABLE RECORD(
    RECORD_SEQ DECIMAL PRIMARY KEY,
    GRADE VARCHAR2(20),
    AVERAGE DECIMAL
    )
;

CREATE TABLE EXAM(
    EXAM_SEQ DECIMAL PRIMARY KEY,
    MEM_ID DECIMAL,
    SUB_SEQ DECIMAL,
    SCORE DECIMAL,
    MONTH DECIMAL,
    RECORD_SEQ DECIMAL
    );
    
INSERT INTO SUBJECT VALUES(SUB_SEQ.NEXTVAL, 'java');
INSERT INTO SUBJECT VALUES(SUB_SEQ.NEXTVAL,'SQL');
INSERT INTO SUBJECT VALUES(SUB_SEQ.NEXTVAL,'HTML5');
INSERT INTO SUBJECT VALUES(SUB_SEQ.NEXTVAL,'R');
INSERT INTO SUBJECT VALUES(SUB_SEQ.NEXTVAL,'PYTHON');


insert into teamz values('a','저스티스');
insert into teamz values('h','엘카로');
insert into teamz values('c','가오갤');
insert into teamz values('s','어벤저스');
insert into teamw values('01','a','형준',34);
insert into teamw values('02','a','세인',35);
insert into teamw values('03','a','희태',21);
insert into teamw values('04','a','상훈',29);
insert into teamw values('05','a','태형',25);
insert into teamw values('06','h','혜리',26);
insert into teamw values('07','h','지은',26);
insert into teamw values('08','h','준',27);
insert into teamw values('09','h','재경',30);
insert into teamw values('10','h','단아',26);
insert into teamw values('11','c','최정훈',32);
insert into teamw values('12','c','윤호',31);
insert into teamw values('13','c','승태',30);
insert into teamw values('14','c','가은',29);
insert into teamw values('15','c','정훈',23);
insert into teamw values('16','s','승호',27);
insert into teamw values('17','s','소진',26);
insert into teamw values('18','s','이슬',29);
insert into teamw values('19','s','누리',30);
insert into teamw values('20','s','진태',26);


ALTER TABLE TEAMZ
RENAME TO PROJECT_TEAM;

ALTER TABLE TEAMW
RENAME TO MEMBER;

ALTER TABLE MEMBER
RENAME COLUMN MEM_AGE TO AGE;

ALTER TABLE MEMBER
RENAME COLUMN MEM_NAME TO NAME;

SELECT * FROM TAB;

SELECT * FROM MEMBER;