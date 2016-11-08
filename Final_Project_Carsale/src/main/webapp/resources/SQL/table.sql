DROP TABLE CAR_MDETAIL CASCADE CONSTRAINTS;
DROP TABLE CAR_MODEL CASCADE CONSTRAINTS;
DROP TABLE CAR_CORP CASCADE CONSTRAINTS;
DROP TABLE CARSALE CASCADE CONSTRAINTS;
DROP TABLE MEMBER CASCADE CONSTRAINTS;
DROP TABLE car_board CASCADE CONSTRAINTS;

CREATE TABLE CAR_BOARD
(
        BOARD_NUM number ,
        MEMBER_ID varchar2(20) NOT NULL,
        BOARD_SUBJECT varchar2(50),
        BOARD_CONTENT varchar2(4000),
        BOARD_GOOD number,
        BOARD_COUNT number,
        BOARD_REPLY_NUM number,
        BOARD_FILE01 varchar2(150),
        BOARD_FILE02 varchar2(150),
        BOARD_FILE03 varchar2(150),
        BOARD_FILE04 varchar2(150),
        BOARD_DATE date,
        PRIMARY KEY (BOARD_NUM)
);

delete from CAR_BOARD;

CREATE TABLE CAR_BOARD_REPLY
(
        REPLY_NUM number ,
        BOARD_NUM number NOT NULL,
        MEMBER_ID varchar2(20) NOT NULL,
        REPLY_CONTENT varchar2(500),
        REPLY_GOOD_NUM number,
        REPLY_DATE date,
        PRIMARY KEY (REPLY_NUM)
);
-- 자동차 제조사 DB
CREATE TABLE CAR_CORP
(
        -- 자동차 제조사
        CARCORP_NUM varchar2(2) ,
        -- 자동차 제조사
        CARCORP varchar2(50) NOT NULL,
        PRIMARY KEY (CARCORP_NUM)
);
CREATE TABLE CAR_MODEL
(
        -- 자동차 모델명
        CARMODEL_NUM varchar2(4) ,
        -- 자동차 제조사
        CARCORP_NUM varchar2(2) NOT NULL,
        -- 자동세 모델명
        CARMODEL varchar2(50) NOT NULL,
        PRIMARY KEY (CARMODEL_NUM)
);
CREATE TABLE MEMBER
(
        MEMBER_ID varchar2(20) ,
        MEMBER_PW varchar2(15) NOT NULL,
        MEMBER_NAME varchar2(20),
        MEMBER_JUMIN1 number,
        MEMBER_JUMIN2 number,
        MEMBER_EMAIL varchar2(25),
        MEMBER_EMAIL_GET varchar2(7),
        MEMBER_MOBILE varchar2(13),
        MEMBER_PHONE varchar2(13),
        MEMBER_ZIPCODE varchar2(7),
        MEMBER_ADDR1 varchar2(100),
        MEMBER_ADDR2 varchar2(100),
        MEMBER_ADMIN number,
        MEMBER_JOIN_DATE date,
        MEMBER_IMAGE varchar2(150),
        PRIMARY KEY (MEMBER_ID)
);

delete from member;
select * from member;

insert into car_corp (CARCORP_NUM,CARCORP) values('01','현대');
insert into car_corp (CARCORP_NUM,CARCORP) values('02','제네시스');
insert into car_corp (CARCORP_NUM,CARCORP) values('03','기아');
insert into car_corp (CARCORP_NUM,CARCORP) values('04','쉐보레(GM대우)');
insert into car_corp (CARCORP_NUM,CARCORP) values('05','르노삼성');
insert into car_corp (CARCORP_NUM,CARCORP) values('06','쌍용');
insert into car_corp (CARCORP_NUM,CARCORP) values('20','BMW');
insert into car_corp (CARCORP_NUM,CARCORP) values('21','아우디');
insert into car_corp (CARCORP_NUM,CARCORP) values('22','벤츠');
insert into car_corp (CARCORP_NUM,CARCORP) values('23','닛산');
insert into car_corp (CARCORP_NUM,CARCORP) values('24','볼보');
insert into car_corp (CARCORP_NUM,CARCORP) values('25','렉서스');
insert into car_corp (CARCORP_NUM,CARCORP) values('26','포드');
insert into car_corp (CARCORP_NUM,CARCORP) values('27','캐딜락');
insert into car_corp (CARCORP_NUM,CARCORP) values('28','페라리');
insert into car_corp (CARCORP_NUM,CARCORP) values('29','포르쉐');
insert into car_corp (CARCORP_NUM,CARCORP) values('30','폭스바겐');
insert into car_corp (CARCORP_NUM,CARCORP) values('31','랜드로버');
insert into car_corp (CARCORP_NUM,CARCORP) values('32','푸조');
insert into car_corp (CARCORP_NUM,CARCORP) values('33','혼다');
insert into car_corp (CARCORP_NUM,CARCORP) values('34','롤스로이스');
insert into car_corp (CARCORP_NUM,CARCORP) values('35','피아트');


delete from car_corp; 

select * from car_corp;

insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0101','그랜저');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0102','쏘나타');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0103','아반떼');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0104','산타페');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0105','스타렉스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0106','제네시스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0107','에쿠스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0108','투싼');

insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('02','0201','EQ900');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('02','0202','G80');

insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0301','모닝');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0302','카니발');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0303','스포티지');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0304','쏘렌토');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0305','k5');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0306','k7');

insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0401','스파크');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0402','마티즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0403','라세티');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0404','크루즈');

insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0101','그랜저');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0102','쏘나타');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0103','아반떼');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0104','산타페');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0105','스타렉스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0106','제네시스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0107','에쿠스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0108','투싼');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0109','엑센트');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('01','0110','아이오닉');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('02','0201','EQ900');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('02','0202','G80');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0301','모닝');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0302','카니발');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0303','스포티지');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0304','쏘렌토');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0305','k5');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0306','k7');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0307','모하비');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0308','K9');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0309','레이');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('03','0310','포르테');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0401','스파크');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0402','마티즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0403','라세티');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0404','크루즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0405','알페온');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0406','트랙스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0420','토스카');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0408','카마로');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0409','레조');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('04','0410','올란도');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('05','0501','SM3');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('05','0502','SM5');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('05','0503','SM6');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('05','0504','QM3');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('05','0505','QM5');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('05','0506','QM6');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('05','0507','SM7');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('06','0601','코란도');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('06','0602','체어맨');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('06','0603','렉스턴');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('06','0604','액티언');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('06','0605','무쏘');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('06','0606','카이런');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('06','0607','로디우스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('06','0608','티볼리');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('06','0609','이스타나');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values('06','0610','칼리스타');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(20,2001,'1시리즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(20,2002,'2시리즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(20,2003,'3시리즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(20,2004,'4시리즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(20,2005,'5시리즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(20,2006,'6시리즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(20,2007,'7시리즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(20,2008,'8시리즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(20,2009,'M시리즈');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(21,2101,'A1');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(21,2102,'A2');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(21,2103,'A3');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(21,2104,'A4');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(21,2105,'A5');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(21,2106,'A6');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(21,2107,'A7');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(21,2108,'A8');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(21,2109,'TT');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(21,2110,'Q7');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(22,2201,'A-클래스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(22,2202,'B-클래스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(22,2203,'C-클래스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(22,2204,'E-클래스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(22,2205,'S-클래스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(22,2206,'CL-클래스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(22,2207,'CLA-클래스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(22,2208,'CLS-클래스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(22,2209,'GL-클래스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(22,2210,'GLA-클래스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(23,2301,'로그');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(23,2302,'마치');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(23,2303,'맥시마');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(23,2304,'무코');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(23,2305,'스카이라인');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(23,2306,'알티마');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(23,2307,'큐브');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(23,2308,'타이탄');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(23,2309,'쥬크');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(23,2310,'캐시카이');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(24,2401,'C30');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(24,2402,'C70');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(24,2403,'S40');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(24,2404,'S60');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(24,2405,'S70');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(24,2406,'S80');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(24,2407,'S90');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(24,2408,'V50');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(24,2409,'V60');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(24,2410,'V70');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(25,2501,'IS');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(25,2502,'ES');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(25,2503,'GS');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(25,2504,'LS');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(25,2505,'RC');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(25,2506,'LX');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(25,2507,'RX');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(25,2508,'SC');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(25,2509,'GX');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(25,2510,'NX');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(26,2601,'F150');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(26,2602,'F250');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(26,2603,'F350');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(26,2604,'GT');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(26,2605,'레인저');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(26,2606,'머스탱');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(26,2607,'윈드스타');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(26,2608,'쿠가');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(26,2609,'익스플로러');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(26,2610,'포커스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(27,2701,'ATS');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(27,2702,'BLS');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(27,2703,'CTS');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(27,2704,'DTS');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(27,2705,'SRX');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(27,2706,'STS');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(27,2707,'XLR');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(27,2708,'드빌');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(27,2709,'스빌');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(27,2710,'컨코어');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(28,2801,'FF');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(28,2802,'F40');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(28,2803,'F50');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(28,2804,'F355');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(28,2805,'F430');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(28,2806,'348');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(28,2807,'360');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(28,2808,'456');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(28,2809,'550');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(28,2810,'엔초페라리');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(29,2901,'718');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(29,2902,'911');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(29,2903,'928');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(29,2904,'944');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(29,2905,'마칸');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(29,2906,'박스터');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(29,2907,'카이맨');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(29,2908,'카이엔');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(29,2909,'카레라GT');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(29,2910,'파나메라');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(30,3001,'CC');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(30,3002,'EOS');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(30,3003,'골프');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(30,3004,'비틀');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(30,3005,'사란');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(30,3006,'시로코');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(30,3007,'제터');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(30,3008,'파사트');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(30,3009,'투아렉');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(30,3010,'티구안');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(31,3101,'디스커버리');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(31,3102,'디스커버리-스포츠');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(31,3103,'디펜터');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(31,3104,'레인지로버');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(31,3105,'레인지로버-이보크');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(31,3106,'레인지로버-스포츠');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(31,3107,'프리랜더');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(32,3201,'107');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(32,3202,'1007');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(32,3203,'205');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(32,3204,'206');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(32,3205,'207');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(32,3206,'208');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(32,3207,'2008');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(32,3208,'306');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(32,3209,'307');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(32,3210,'308');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(33,3301,'CR-V');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(33,3302,'S660');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(33,3303,'비트');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(33,3304,'시빅');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(33,3305,'어코드');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(33,3306,'엘리멘트');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(33,3307,'크로스로드');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(33,3308,'인사이트');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(33,3309,'레전드');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(33,3310,'인스파이어');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(34,3401,'고스트');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(34,3402,'던');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(34,3403,'레이스');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(34,3404,'실버스퍼');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(34,3405,'코니쉬');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(34,3406,'팬텀');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(35,3501,'500');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(35,3502,'500X');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(35,3503,'란치아');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(35,3504,'바르게타');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(35,3505,'쿠페');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(35,3506,'크로마');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(35,3507,'푼토');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(35,3508,'프리몬트');
insert into car_model (CARCORP_NUM,CARMODEL_NUM,CARMODEL) values(35,3509,'멀티피아');



select * from car_model;
delete from car_model;

CREATE TABLE CAR_MDETAIL
(
        CAR_DETAIL_NUM varchar2(6) ,        -- 자동차 모델명    *
        CARMODEL_NUM varchar2(4) NOT NULL,        -- 자동차 제조사 *
        CARCORP_NUM varchar2(2) NOT NULL,        -- 자동차 세부모델 *
        CAR_DETAIL varchar2(30), --변경     - 자동차 세부모델 이름   * 
        CAR_TRANS varchar2(20), -- Auto or 수동    -- 트렌스미션 종류 *
        CAR_OIL varchar2(10), -- 경유 휘발유             -- 연료 *
        CAR_CC varchar2(10), -- 2000cc       -- 배기량 
        CAR_HP varchar2(10), -- 200HP       -- 마력
        CAR_TORQUE varchar2(10), --30Kgm       -- 토크
        CAR_LENGTH nvarchar2(10), --5000cm         -- 차 전장. 차 길이
        CAR_WIDTH varchar2(10), --2000cm       -- 차 폭
        CAR_HEIGHT varchar2(10), --2000cm    -- 높이 전고
        CAR_SIMAGE varchar2(150), --필요없음
        CAR_CORPNAME varchar2(50), --회사명
        CAR_MODELNAME varchar2(50), --모델명
        CAR_MPRICE number, -- ~ 제조 판매가 만원
        CAR_MPATH varchar2(150), --이미지 위치
        CAR_MIMAGE_NUM number, --이미지 개수
        PRIMARY KEY (CAR_DETAIL_NUM)
);

insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('01','0101','010101','그랜저 HG (11년~현재)','오토','휘발유','2659cc','200hp','25.9kg.m','4910cm','1860cm','1470cm','sdsd','현대','그랜저 HG (11년~현재)',3200,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('01','0101','010102','그랜저 TG (05년~08년)','오토','휘발유','2656cc','195hp','25.6kg.m','4895cm','1850cm','1480cm','','현대','그랜저 TG (05년~08년)',2970,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('01','0101','010103','뉴 그랜저 XG (02년~05년)','오토','휘발유','2493cc','190hp','23kg.m','4875cm','1825cm','1420cm','','현대','그랜저 XG (02년~05년)',2580,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('01','0102','010201','YF 쏘나타 (09년~12년)','수동','휘발유','1591cc','150hp','20kg.m','4510cm','1560cm','1270cm','','현대','YF 쏘나타 (09년~12년)',2200,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('02','0201','020101','EQ900 (15년~현재)','오토','휘발유','3778cc','370hp','40.5kg.m','5025cm','1915cm','1495cm','','현대','EQ900 (15년~현재)',10500,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('02','0202','020202','G80 (16년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('03','0301','030101','더 뉴 모닝 (15년~현재)','오토','휘발유','998cc','78hp','9.6kg.m','3595cm','1595cm','1485cm','','기아','더 뉴 모닝 (15년~현재)',955,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('03','0305','030502','K5 2세대 (15년~현재)','오토','휘발유','1999cc','168hp','20.5kg.m','4855cm','1860cm','1465cm','','기아','K5 2세대 (15년~현재)',2685,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('03','0307','030703','더 뉴 모하비 (16년~현재)','오토','디젤','2959cc','260hp','57.1kg.m','4930cm','1915cm','1810cm','','기아','더 뉴 모하비 (16년~현재)',4530,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('04','0404','040101','어메이징 뉴 크루즈 (15년~현재)','오토','휘발유','1362cc','153hp','20.4kg.m','4600cm','1790cm','1475cm','','쉐보레','어메이징 뉴 크루즈 (15년~현재)',2155,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('04','0408','040802','2016 카마로 SS ','오토','휘발유','1998cc','275hp','40.7kg.m','4750cm','1850cm','1020cm','','쉐보레','2016 카마로 SS',5098,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('04','0410','041003','올란도 (16년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('05','0505','050601','QM5 네오 (14년~현재)','오토','디젤','1995cc','173hp','36.7kg.m','4525cm','1855cm','1710cm','','르노삼성','QM5 네오 (14년~현재)',2900,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('05','0507','050702','SM7 노바 (14년~현재)');


insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('20','2001','200101','뉴 1시리즈 (13년~현재)','오토','디젤','1995cc','143hp','32.6kg.m','4324mm','1765mm','1421mm','','BMW','뉴 1시리즈 (13년~현재)',3930,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('20','2007','200702','뉴 7시리즈 (16년~현재)','오토','디젤','2993cc','265hp','63.2kg.m','5238mm','1902mm','1479mm','','BMW','뉴 7시리즈 (16년~현재)',14160,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('20','2009','200903','M5 세단');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('21','2101','210101','A1 30 TDI','오토','디젤','1598cc','116hp','25.5kg.m','3973mm','1740mm','1416mm','','아우디','A1 30 TDI',3580,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('21','2107','210702','A7 55 TDI 콰트로','오토','디젤','2967cc','313hp','66.3kg.m','4969mm','1911mm','1420mm','','아우디','A7 55 TDI 콰트로',9730,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('21','2109','210903','뉴 TT (06년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('22','2201','220101','뉴 A클래스 (13년~현재)','오토','휘발유','1595cc','156hp','25.5kg.m','4305mm','1770mm','1445mm','','벤츠','뉴 A클래스 (13년~현재)',3690,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('22','2205','220502','뉴 S클래스 (14년~현재)','오토','휘발유','5980cc','530hp','87.7kg.m','5250mm','1900mm','1500mm','','벤츠','뉴 S클래스 (14년~현재)',26700,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('22','2204','220403','뉴 E클래스 (09~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('23','2302','230101','닛산 마치 세단(00년~현재)','오토','휘발유','1240cc','90hp','12.3kg.m','3695mm','1660mm','1525mm','','닛산','닛산 마치 세단(00년~현재)',1350,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('23','2305','230502','닛산 스카이라인 R34 GTR (05년~현재)','수동','휘발유','2568cc','283hp','39.9kg.m','4600mm','1785mm','1360mm','','닛산','닛산 스카이라인 R34 GTR (05년~현재)',3700,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('23','2310','221003','닛산 캐시카이 1.6 SL (14~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('24','2404','240401','볼보 뉴 S60 D5(12년~현재)','오토','디젤','1969cc','225hp','47.9kg.m','4635mm','1865mm','1480mm','','볼보','볼보 뉴 S60 D5(12년~현재)',5550,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('24','2406','240602','볼보 S80 (01년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('24','2408','240603','볼보 V50 (10년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('25','2502','250201','뉴 ES (12년~현재)','오토','휘발유','3456cc','277hp','35.3kg.m','4900mm','1820mm','1450mm','','렉서스','뉴 ES (12년~현재)',5750,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('25','2503','250302','뉴 GS (12년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('25','2504','250403','뉴 LS (11년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('26','2606','260601','머스탱 GT 컨버터블','수동','휘발유','4951cc','422hp','54.1kg.m','4780mm','1915mm','1390mm','','포드','머스탱 GT 컨버터블',5850,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('26','2608','260802','쿠거 (12년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('26','2609','260903','뉴 익스플로러 (12년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('27','2703','270301','뉴 CTS (14년~현재)','자동','휘발유','1998cc','276hp','40.7kg.m','4965mm','1835mm','1440mm','','캐딜락','뉴 CTS (14년~현재)',5530,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('27','2706','270602','STS (05~11년)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('28','2805','280501','F430 스쿠데리아 (13년~현재)','자동','휘발유','4308cc','510hp','47.95kg.m','4512mm','1923mm','1199mm','','페라리','F430 스쿠데리아 (13년~현재)',43000,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('28','2810','281002','엔초페라리 (10년~12년)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('29','2902','290201','뉴 911 (12년~현재)','자동','휘발유','3800cc','560hp','76.5kg.m','4450mm','1880mm','1296mm','','포르쉐','뉴 911 (12년~현재)',25700,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('29','2906','290602','뉴 박스터 (13년~15년)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('29','2908','290803','뉴 카이엔 (11년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('30','3001','300101','뉴 CC (12년~현재)','자동','디젤','1968cc','177hp','38.8kg.m','4800mm','1855mm','1420mm','','폭스바겐','뉴 CC (12년~현재)',4790,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('30','3003','300302','뉴 골프 2.0 (00년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('30','3004','300403','더 비틀 (12년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('31','3102','310201','디스커버리 스포츠 (15년~현재)','자동','디젤','1999cc','180hp','43.9kg.m','4590mm','1894mm','1724mm','','랜드로버','디스커버리 스포츠 (15년~현재)',6660,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('31','3104','310402','뉴 레인지로버 (13년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('32','3207','320701','2008 1.6 e-HDi (13년~현재)','자동','디젤','1560cc','99hp','25.9kg.m','4160mm','1740mm','1555mm','','푸조','2008 1.6 e-HDi (13년~현재)',3120,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('32','3210','321002','308 2.0 HDi (10년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('33','3301','330101','뉴 CR-V (12년~현재)','자동','휘발유','2354cc','190hp','22.6kg.m','4535mm','1820mm','1685mm','','혼다','뉴 CR-V (12년~현재)',3670,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('33','3302','330202','S660 (15년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('33','3305','330503','ACCORD (10년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('34','3401','340101','고스트 시리즈2 (15년~현재)','자동','휘발유','6592cc','563hp','49.6kg.m','5399mm','1948mm','1550mm','','롤스로이스','고스트 시리즈2 (15년~현재)',41000,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('34','3403','340302','레이스 (14년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('34','3406','340603','팬텀 (07년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL,CAR_TRANS,CAR_OIL,CAR_CC,CAR_HP,CAR_TORQUE,CAR_LENGTH,CAR_WIDTH,CAR_HEIGHT,CAR_SIMAGE,CAR_CORPNAME,CAR_MODELNAME,CAR_MPRICE,CAR_MPATH,CAR_MIMAGE_NUM)
values('35','3501','350101','피아트 500C 1.4 (11년~현재)','자동','휘발유','1368cc','102hp','12.8kg.m','3550mm','1640mm','1555mm','','피아트','피아트 500C 1.4 (11년~현재)',3130,'Boom',10);
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('35','3506','350602','피아트 크로마 (07년~현재)');
insert into CAR_MDETAIL (CARCORP_NUM,CARMODEL_NUM,CAR_DETAIL_NUM,CAR_DETAIL)
values('35','3508','350803','프리몬트(12년~현재)');




select * from CAR_MDETAIL;
delete from CAR_MDETAIL;

CREATE TABLE CARSALE
(
        SALE_NUM number,
        CAR_DETAIL_NUM varchar2(6) NOT NULL,
        MEMBER_ID varchar2(20) NOT NULL,
        SALE_CAR_NUMBER varchar2(15), -- 차량 번호
        SALE_TITLE varchar2(50), -- 판매 타이틀
        SALE_CAR_COLOR varchar2(20), --차색
        SALE_CAR_PRICE number, -- 판매가 / 기본단위 만원
        SALE_CONTENT varchar2(4000), 
        SALE_READCOUNT number, -- 조회수
        SALE_USE_KM varchar2(20), -- 주행거리
        SALE_IMAGE_PATH varchar2(150), --이미지 위치
        SALE_IMAGE_NUM number(2), --이미지 개수
        SALE_IMAGE_MAIN varchar2(150), --필요없음
        SALE_BUYCAR_DATE date, --연식
        SALE_INPUT_DATE date, --등록일
        PRIMARY KEY (SALE_NUM)
);


insert into  CARSALE
(sale_num ,CAR_DETAIL_NUM, member_id, sale_title, sale_use_km, sale_image_path, sale_buycar_date, sale_input_date, sale_car_price, sale_content)
values(1, '010101', 'multi', '현대 그랜저 HG 파격가 100만원', '2000 km', 'carsale', '2011/02/01', sysdate, 100 ,
        ' ▶대한민국 프리미엄 세단!! 뉴 제네시스
현대기아차 그룹의 차 만들기는 분명 과거와는 다르다. 새 모델이 나올 때마다 한 단계씩 큰 폭으로 발전한다.
K9은 그때까지 한국산 차 중에서 가장 높은 상품성을 보여 주었다. 현대 제네시스는 현 시점에서 동급 최고의
상품성을 보여 준다. 편의장비 등..중심으로 한 상품성도 그렇지만 차체 강성 그것을 바탕으로 한 주행성에서
괄목할만한 발전을 이루었다. 상대적으로 독일 프리미엄과 직접 비교는 아직 거리가 있지만 양산 브랜드에서
는 어느 브랜드와 비교해도 손색이 없는 수준이다.
감정적으로 말하자면 브랜드의 차이가 아니라면 국내에 시판되고 있는 이 등급과 가격대 모델 중에서는 단연
독보적이라고 해도 과언이 아니다.
현대가 신형 제네시스에 가장 많은 신경을 쓴 것은 주행성이다. 주행성은 흔히 말하는 감성(Emotion)의 첫째
요소다. 처음으로 네 바퀴 굴림방식을 적용한 것도 주행성 향상을 위한 것이다. 더불어 그 주행성을 받쳐 주는
차체 강성도 비약적으로 발전했다. 도어가 닫히는 감각이 뚜렷이 차이가 난다.독일 프리미엄 브랜드들과 비교
해도 손색이 없을 정도의 수준이다.
이는 차체 강성과 관계가 있는 대목이다. 핫 스탬핑 초고장력 강판을 51.5%나 적용하고 엔진 룸 부분의 차체
구조를 개선했으며 스트럿 하우징을 적용했다.
차체 구조간 접착력도 한층 강화했다. 그 결과 차체 강성이 경쟁대비 38% 우수하고 기존 제네시스 대비 16%가
향상되었다고 한다. 현대자동차는 BMW 5시리즈를 경쟁 모델로 공공연하게 표방하고 있다.
제네시스는 현대기아차 그룹 차원에서 그동안의 발전에 걸맞는 상품성을 갖춘 모델이다. 글로벌 시장에서도
양산 브랜드로서는 상위 클래스 포지셔닝 할 수 있는 조건들을 갖추고 있다. 하지만 자동차산업은 전자제품과
달리 히트 상품 하나로 모든 것이 달라질 수 있는 것은 아니다.
지속적(Continuity)이고 일관성(Consistency)있는 전략으로 유저들에게 만족감을 전달해 브랜드 로얄리스트
들을 만들어 낼 수 있어야 한다
▶구매시 유의사항
시세보다 매우낮은 가격으로 차량을 등록한후 계약금부터 요구하는 판매자를 각별히 주의하시기 바랍니다.
계약금을 송금해야 할 경우에는 차량등록증과 판매자의 신분을 먼저 확인하시는 것이 좋습니다.
▶문의방법
전화가 부재중일시 보배드림의 무료 문자서비스를 이용하여 판매자와 가격상담 및 차량 상담을 하실수 있습
니다.(전화주시면 친절하고도 상세하게 설명드리도록 하겠습니다)
▶최상의 품질을 보장하며 최고의 만족을 약속 드립니다.
▶차량에 대한 상담을 원하시면 언제든 주저마시고 연락주십시오.
▲판매자: 김종백 ☎ 010-3754-7179 (언제라도 상담 가능합니다.)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
▶차량구매시
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
자동차관리법 제58조 1항에의한 성능점검기록부 교부는 받으셨나요?
자동차등록규칙 제33조 제2항 2조에의한 자동차양도증명서(관인계약서)작성하셨나요?
계약서의 내용을 꼼꼼히 살펴보시고 반드시 날인된 계약서는 필히 보관하셔야 합니다.
' );
insert into  CARSALE
(sale_num ,CAR_DETAIL_NUM, member_id, sale_title, sale_use_km, sale_image_path, sale_buycar_date, sale_input_date, sale_car_price, sale_content)
values(2, '010102', 'multi', '현대 그랜저 TG 파격가 500만원', '2000 km', 'carsale', '2011/02/01', sysdate, 500 ,
        ' ▶대한민국 프리미엄 세단!! 뉴 제네시스
현대기아차 그룹의 차 만들기는 분명 과거와는 다르다. 새 모델이 나올 때마다 한 단계씩 큰 폭으로 발전한다.
K9은 그때까지 한국산 차 중에서 가장 높은 상품성을 보여 주었다. 현대 제네시스는 현 시점에서 동급 최고의
상품성을 보여 준다. 편의장비 등..중심으로 한 상품성도 그렇지만 차체 강성 그것을 바탕으로 한 주행성에서
괄목할만한 발전을 이루었다. 상대적으로 독일 프리미엄과 직접 비교는 아직 거리가 있지만 양산 브랜드에서
는 어느 브랜드와 비교해도 손색이 없는 수준이다.
감정적으로 말하자면 브랜드의 차이가 아니라면 국내에 시판되고 있는 이 등급과 가격대 모델 중에서는 단연
독보적이라고 해도 과언이 아니다.
현대가 신형 제네시스에 가장 많은 신경을 쓴 것은 주행성이다. 주행성은 흔히 말하는 감성(Emotion)의 첫째
요소다. 처음으로 네 바퀴 굴림방식을 적용한 것도 주행성 향상을 위한 것이다. 더불어 그 주행성을 받쳐 주는
차체 강성도 비약적으로 발전했다. 도어가 닫히는 감각이 뚜렷이 차이가 난다.독일 프리미엄 브랜드들과 비교
해도 손색이 없을 정도의 수준이다.
이는 차체 강성과 관계가 있는 대목이다. 핫 스탬핑 초고장력 강판을 51.5%나 적용하고 엔진 룸 부분의 차체
구조를 개선했으며 스트럿 하우징을 적용했다.
차체 구조간 접착력도 한층 강화했다. 그 결과 차체 강성이 경쟁대비 38% 우수하고 기존 제네시스 대비 16%가
향상되었다고 한다. 현대자동차는 BMW 5시리즈를 경쟁 모델로 공공연하게 표방하고 있다.
제네시스는 현대기아차 그룹 차원에서 그동안의 발전에 걸맞는 상품성을 갖춘 모델이다. 글로벌 시장에서도
양산 브랜드로서는 상위 클래스 포지셔닝 할 수 있는 조건들을 갖추고 있다. 하지만 자동차산업은 전자제품과
달리 히트 상품 하나로 모든 것이 달라질 수 있는 것은 아니다.
지속적(Continuity)이고 일관성(Consistency)있는 전략으로 유저들에게 만족감을 전달해 브랜드 로얄리스트
들을 만들어 낼 수 있어야 한다
▶구매시 유의사항
시세보다 매우낮은 가격으로 차량을 등록한후 계약금부터 요구하는 판매자를 각별히 주의하시기 바랍니다.
계약금을 송금해야 할 경우에는 차량등록증과 판매자의 신분을 먼저 확인하시는 것이 좋습니다.
▶문의방법
전화가 부재중일시 보배드림의 무료 문자서비스를 이용하여 판매자와 가격상담 및 차량 상담을 하실수 있습
니다.(전화주시면 친절하고도 상세하게 설명드리도록 하겠습니다)
▶최상의 품질을 보장하며 최고의 만족을 약속 드립니다.
▶차량에 대한 상담을 원하시면 언제든 주저마시고 연락주십시오.
▲판매자: 김종백 ☎ 010-3754-7179 (언제라도 상담 가능합니다.)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
▶차량구매시
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
자동차관리법 제58조 1항에의한 성능점검기록부 교부는 받으셨나요?
자동차등록규칙 제33조 제2항 2조에의한 자동차양도증명서(관인계약서)작성하셨나요?
계약서의 내용을 꼼꼼히 살펴보시고 반드시 날인된 계약서는 필히 보관하셔야 합니다.
' );
insert into  CARSALE
(sale_num ,CAR_DETAIL_NUM, member_id, sale_title, sale_use_km, sale_image_path, sale_buycar_date, sale_input_date, sale_car_price, sale_content)
values(3, '010103', 'multi', '뉴 그랜저 XG 파격가 1000만원', '2000 km', 'carsale', '2012/02/01', sysdate, 1000 ,
        ' ▶대한민국 프리미엄 세단!! 뉴 제네시스
현대기아차 그룹의 차 만들기는 분명 과거와는 다르다. 새 모델이 나올 때마다 한 단계씩 큰 폭으로 발전한다.
K9은 그때까지 한국산 차 중에서 가장 높은 상품성을 보여 주었다. 현대 제네시스는 현 시점에서 동급 최고의
상품성을 보여 준다. 편의장비 등..중심으로 한 상품성도 그렇지만 차체 강성 그것을 바탕으로 한 주행성에서
괄목할만한 발전을 이루었다. 상대적으로 독일 프리미엄과 직접 비교는 아직 거리가 있지만 양산 브랜드에서
는 어느 브랜드와 비교해도 손색이 없는 수준이다.
감정적으로 말하자면 브랜드의 차이가 아니라면 국내에 시판되고 있는 이 등급과 가격대 모델 중에서는 단연
독보적이라고 해도 과언이 아니다.
현대가 신형 제네시스에 가장 많은 신경을 쓴 것은 주행성이다. 주행성은 흔히 말하는 감성(Emotion)의 첫째
요소다. 처음으로 네 바퀴 굴림방식을 적용한 것도 주행성 향상을 위한 것이다. 더불어 그 주행성을 받쳐 주는
차체 강성도 비약적으로 발전했다. 도어가 닫히는 감각이 뚜렷이 차이가 난다.독일 프리미엄 브랜드들과 비교
해도 손색이 없을 정도의 수준이다.
이는 차체 강성과 관계가 있는 대목이다. 핫 스탬핑 초고장력 강판을 51.5%나 적용하고 엔진 룸 부분의 차체
구조를 개선했으며 스트럿 하우징을 적용했다.
차체 구조간 접착력도 한층 강화했다. 그 결과 차체 강성이 경쟁대비 38% 우수하고 기존 제네시스 대비 16%가
향상되었다고 한다. 현대자동차는 BMW 5시리즈를 경쟁 모델로 공공연하게 표방하고 있다.
제네시스는 현대기아차 그룹 차원에서 그동안의 발전에 걸맞는 상품성을 갖춘 모델이다. 글로벌 시장에서도
양산 브랜드로서는 상위 클래스 포지셔닝 할 수 있는 조건들을 갖추고 있다. 하지만 자동차산업은 전자제품과
달리 히트 상품 하나로 모든 것이 달라질 수 있는 것은 아니다.
지속적(Continuity)이고 일관성(Consistency)있는 전략으로 유저들에게 만족감을 전달해 브랜드 로얄리스트
들을 만들어 낼 수 있어야 한다
▶구매시 유의사항
시세보다 매우낮은 가격으로 차량을 등록한후 계약금부터 요구하는 판매자를 각별히 주의하시기 바랍니다.
계약금을 송금해야 할 경우에는 차량등록증과 판매자의 신분을 먼저 확인하시는 것이 좋습니다.
▶문의방법
전화가 부재중일시 보배드림의 무료 문자서비스를 이용하여 판매자와 가격상담 및 차량 상담을 하실수 있습
니다.(전화주시면 친절하고도 상세하게 설명드리도록 하겠습니다)
▶최상의 품질을 보장하며 최고의 만족을 약속 드립니다.
▶차량에 대한 상담을 원하시면 언제든 주저마시고 연락주십시오.
▲판매자: 김종백 ☎ 010-3754-7179 (언제라도 상담 가능합니다.)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
▶차량구매시
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
자동차관리법 제58조 1항에의한 성능점검기록부 교부는 받으셨나요?
자동차등록규칙 제33조 제2항 2조에의한 자동차양도증명서(관인계약서)작성하셨나요?
계약서의 내용을 꼼꼼히 살펴보시고 반드시 날인된 계약서는 필히 보관하셔야 합니다.
' );
insert into  CARSALE
(sale_num ,CAR_DETAIL_NUM, member_id, sale_title, sale_use_km, sale_image_path, sale_buycar_date, sale_input_date, sale_car_price, sale_content)
values(4, '010201', 'multi', 'YF 쏘나타 600만원', '2000 km', 'carsale', '2011/09/01', sysdate, 600 ,
        ' ▶대한민국 프리미엄 세단!! 뉴 제네시스
현대기아차 그룹의 차 만들기는 분명 과거와는 다르다. 새 모델이 나올 때마다 한 단계씩 큰 폭으로 발전한다.
K9은 그때까지 한국산 차 중에서 가장 높은 상품성을 보여 주었다. 현대 제네시스는 현 시점에서 동급 최고의
상품성을 보여 준다. 편의장비 등..중심으로 한 상품성도 그렇지만 차체 강성 그것을 바탕으로 한 주행성에서
괄목할만한 발전을 이루었다. 상대적으로 독일 프리미엄과 직접 비교는 아직 거리가 있지만 양산 브랜드에서
는 어느 브랜드와 비교해도 손색이 없는 수준이다.
감정적으로 말하자면 브랜드의 차이가 아니라면 국내에 시판되고 있는 이 등급과 가격대 모델 중에서는 단연
독보적이라고 해도 과언이 아니다.
현대가 신형 제네시스에 가장 많은 신경을 쓴 것은 주행성이다. 주행성은 흔히 말하는 감성(Emotion)의 첫째
요소다. 처음으로 네 바퀴 굴림방식을 적용한 것도 주행성 향상을 위한 것이다. 더불어 그 주행성을 받쳐 주는
차체 강성도 비약적으로 발전했다. 도어가 닫히는 감각이 뚜렷이 차이가 난다.독일 프리미엄 브랜드들과 비교
해도 손색이 없을 정도의 수준이다.
이는 차체 강성과 관계가 있는 대목이다. 핫 스탬핑 초고장력 강판을 51.5%나 적용하고 엔진 룸 부분의 차체
구조를 개선했으며 스트럿 하우징을 적용했다.
차체 구조간 접착력도 한층 강화했다. 그 결과 차체 강성이 경쟁대비 38% 우수하고 기존 제네시스 대비 16%가
향상되었다고 한다. 현대자동차는 BMW 5시리즈를 경쟁 모델로 공공연하게 표방하고 있다.
제네시스는 현대기아차 그룹 차원에서 그동안의 발전에 걸맞는 상품성을 갖춘 모델이다. 글로벌 시장에서도
양산 브랜드로서는 상위 클래스 포지셔닝 할 수 있는 조건들을 갖추고 있다. 하지만 자동차산업은 전자제품과
달리 히트 상품 하나로 모든 것이 달라질 수 있는 것은 아니다.
지속적(Continuity)이고 일관성(Consistency)있는 전략으로 유저들에게 만족감을 전달해 브랜드 로얄리스트
들을 만들어 낼 수 있어야 한다
▶구매시 유의사항
시세보다 매우낮은 가격으로 차량을 등록한후 계약금부터 요구하는 판매자를 각별히 주의하시기 바랍니다.
계약금을 송금해야 할 경우에는 차량등록증과 판매자의 신분을 먼저 확인하시는 것이 좋습니다.
▶문의방법
전화가 부재중일시 보배드림의 무료 문자서비스를 이용하여 판매자와 가격상담 및 차량 상담을 하실수 있습
니다.(전화주시면 친절하고도 상세하게 설명드리도록 하겠습니다)
▶최상의 품질을 보장하며 최고의 만족을 약속 드립니다.
▶차량에 대한 상담을 원하시면 언제든 주저마시고 연락주십시오.
▲판매자: 김종백 ☎ 010-3754-7179 (언제라도 상담 가능합니다.)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
▶차량구매시
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
자동차관리법 제58조 1항에의한 성능점검기록부 교부는 받으셨나요?
자동차등록규칙 제33조 제2항 2조에의한 자동차양도증명서(관인계약서)작성하셨나요?
계약서의 내용을 꼼꼼히 살펴보시고 반드시 날인된 계약서는 필히 보관하셔야 합니다.
' );
insert into  CARSALE
(sale_num ,CAR_DETAIL_NUM, member_id, sale_title, sale_use_km, sale_image_path, sale_buycar_date, sale_input_date, sale_car_price, sale_content)
values(5, '020101', 'multi', 'EQ900 5100만원', '2000 km', 'carsale', '2015/02/01', sysdate, 5100 ,
        ' ▶대한민국 프리미엄 세단!! 뉴 제네시스
현대기아차 그룹의 차 만들기는 분명 과거와는 다르다. 새 모델이 나올 때마다 한 단계씩 큰 폭으로 발전한다.
K9은 그때까지 한국산 차 중에서 가장 높은 상품성을 보여 주었다. 현대 제네시스는 현 시점에서 동급 최고의
상품성을 보여 준다. 편의장비 등..중심으로 한 상품성도 그렇지만 차체 강성 그것을 바탕으로 한 주행성에서
괄목할만한 발전을 이루었다. 상대적으로 독일 프리미엄과 직접 비교는 아직 거리가 있지만 양산 브랜드에서
는 어느 브랜드와 비교해도 손색이 없는 수준이다.
감정적으로 말하자면 브랜드의 차이가 아니라면 국내에 시판되고 있는 이 등급과 가격대 모델 중에서는 단연
독보적이라고 해도 과언이 아니다.
현대가 신형 제네시스에 가장 많은 신경을 쓴 것은 주행성이다. 주행성은 흔히 말하는 감성(Emotion)의 첫째
요소다. 처음으로 네 바퀴 굴림방식을 적용한 것도 주행성 향상을 위한 것이다. 더불어 그 주행성을 받쳐 주는
차체 강성도 비약적으로 발전했다. 도어가 닫히는 감각이 뚜렷이 차이가 난다.독일 프리미엄 브랜드들과 비교
해도 손색이 없을 정도의 수준이다.
이는 차체 강성과 관계가 있는 대목이다. 핫 스탬핑 초고장력 강판을 51.5%나 적용하고 엔진 룸 부분의 차체
구조를 개선했으며 스트럿 하우징을 적용했다.
차체 구조간 접착력도 한층 강화했다. 그 결과 차체 강성이 경쟁대비 38% 우수하고 기존 제네시스 대비 16%가
향상되었다고 한다. 현대자동차는 BMW 5시리즈를 경쟁 모델로 공공연하게 표방하고 있다.
제네시스는 현대기아차 그룹 차원에서 그동안의 발전에 걸맞는 상품성을 갖춘 모델이다. 글로벌 시장에서도
양산 브랜드로서는 상위 클래스 포지셔닝 할 수 있는 조건들을 갖추고 있다. 하지만 자동차산업은 전자제품과
달리 히트 상품 하나로 모든 것이 달라질 수 있는 것은 아니다.
지속적(Continuity)이고 일관성(Consistency)있는 전략으로 유저들에게 만족감을 전달해 브랜드 로얄리스트
들을 만들어 낼 수 있어야 한다
▶구매시 유의사항
시세보다 매우낮은 가격으로 차량을 등록한후 계약금부터 요구하는 판매자를 각별히 주의하시기 바랍니다.
계약금을 송금해야 할 경우에는 차량등록증과 판매자의 신분을 먼저 확인하시는 것이 좋습니다.
▶문의방법
전화가 부재중일시 보배드림의 무료 문자서비스를 이용하여 판매자와 가격상담 및 차량 상담을 하실수 있습
니다.(전화주시면 친절하고도 상세하게 설명드리도록 하겠습니다)
▶최상의 품질을 보장하며 최고의 만족을 약속 드립니다.
▶차량에 대한 상담을 원하시면 언제든 주저마시고 연락주십시오.
▲판매자: 김종백 ☎ 010-3754-7179 (언제라도 상담 가능합니다.)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
▶차량구매시
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
자동차관리법 제58조 1항에의한 성능점검기록부 교부는 받으셨나요?
자동차등록규칙 제33조 제2항 2조에의한 자동차양도증명서(관인계약서)작성하셨나요?
계약서의 내용을 꼼꼼히 살펴보시고 반드시 날인된 계약서는 필히 보관하셔야 합니다.
' );


select * from carsale;

delete from carsale; 





select * from tab;
purge recyclebin;

-- 쿼리 예시

select * from carsale where CAR_DETAIL_NUM = '010101';
select * from carsale where CAR_DETAIL_NUM in 
 (select distinct car_detail_num from car_mdetail where carmodel_num='0101');
 
 
 insert into MEMBER  (MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_EMAIL, MEMBER_MOBILE, MEMBER_PHONE,
        MEMBER_ADDR1, MEMBER_ADDR2)
values ('multi', 'multi', '김민성', 'multi@naver.com', '010-2233-4455', '02-2322-1112', '서울시 강남구 신사동 211-22 슈퍼빌 301호', '중앙정보처리 학원');

