--Adress 
--addr_seq (DECIMAL, pk)
--zipcode
--province
--city
--gugun
--doro

create TABLE Adress(
 addr_sql DECIMAL PRIMARY KEY,
 zipcode VARCHAR2(20),
 province VARCHAR2(20),
 city VARCHAR2(20),
 gugun VARCHAR2(20),
 doro VARCHAR2(20)
);

DROP TABLE Adress;

insert into adress values(
 1000,'123','a','서울','용산구','원효'
);