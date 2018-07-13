select * from tab;
create sequence account_seq START WITH 1000;
CREATE TABLE account(
	account_seq VARCHAR2(20) PRIMARY KEY,
	money DECIMAL,
	account_no VARCHAR2(20),
	account_type VARCHAR2(20),
	create_date DATE,
	limit DECIMAL
);

DROP TABLE account;
DROP sequence account_seq;
INSERT INTO account
(
account_seq, money, account_no, account_type, create_date, limit
)VALUES(
	account_seq.nextval, 0, '123-456-789','일반통장', SYSDATE,  0
);
INSERT INTO
account VALUES(
	account_seq.nextval, 1000, '233-444-555','일반통장', SYSDATE,  0
);
INSERT INTO
account VALUES(
	account_seq.nextval, 10000, '155-121-195','일반통장', SYSDATE,  10000
);
INSERT INTO
account VALUES(
	account_seq.nextval, 3000, '399-553-232','일반통장', SYSDATE,  0
);
INSERT INTO
account VALUES(
	account_seq.nextval, 5000, '193-964-559','일반통장', SYSDATE,  10000
);
INSERT INTO
account VALUES(
	account_seq.nextval, 0, '733-569-776','마이너스통장', SYSDATE,  0
);
INSERT INTO
account VALUES(
	account_seq.nextval, 0, '352-114-365','마이너스통장', SYSDATE,  0
);

INSERT INTO
account VALUES(
	account_seq.nextval, 10000, '133-444-555','일반통장', SYSDATE,  0
);
INSERT INTO
account VALUES(
	account_seq.nextval, 0, '663-444-555','일반통장', SYSDATE,  0
);

SELECT * FROM account;
SELECT * FROM member;