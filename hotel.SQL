



insert into tb_hotel(id,name,address,phone,href,city,district) VALUES (001,'江北一店','江北嘴','023748594','fdsa','重庆','江北区');
insert into tb_hotel(id,name,address,phone,href,city,district) VALUES (002,'江北二店','观音桥','023748804','dag','重庆','江北区');
insert into tb_hotel(id,name,address,phone,href,city,district) VALUES (003,'江北三店','大石坝','023748804','dag','重庆','江北区');
insert into tb_hotel(id,name,address,phone,href,city,district) VALUES (004,'南坪一店','万达广场','024348804','dag','重庆','南岸区');
insert into tb_hotel(id,name,address,phone,href,city,district) VALUES (005,'南坪二店','回龙湾','024348804','dag','重庆','南岸区');
insert into tb_hotel(id,name,address,phone,href,city,district) VALUES (006,'南坪三店','洋人街','024348804','dag','重庆','南岸区');



insert into tb_pic(id,path,hotel_id) values (001,"http://img1.plateno.com/inn/023041/02ac3820cb68d31fc431ff66060ff84b_120_120.jpg",001);
insert into tb_pic(id,path,hotel_id) values (002,"http://img1.plateno.com/inn/023041/02ac3820cb68d31fc431ff66060ff84b_120_120.jpg",002);
insert into tb_pic(id,path,hotel_id) values (003,"http://img1.plateno.com/inn/023041/02ac3820cb68d31fc431ff66060ff84b_120_120.jpg",003);
insert into tb_pic(id,path,hotel_id) values (004,"images/3bf66cdd749b5711a81a2b2876a410d8_640_480.jpg",001);
insert into tb_pic(id,path,hotel_id) values (005,"images/1c2bb63d779d8c23e90ef92a834ff160_640_480.jpg",001);
insert into tb_pic(id,path,hotel_id) values (006,"images/3f9c5c4a9afc7a6b6cd9789fde8bbcc4_640_480.jpg",001);
insert into tb_pic(id,path,hotel_id) values (007,"images/6c7dcd7aad21d863c03b2a3d8ff508f4_640_480.jpg",002);


insert into tb_pic(id,path,hotel_id) values (022,"images/34b6fb54dee19ae7c46f152139ff4fdb_640_480.jpg",001);
insert into tb_pic(id,path,hotel_id) values (023,"images/36d541cb37134823cce7a207f8850e80_640_480.jpg",001);
insert into tb_pic(id,path,hotel_id) values (024,"images/a4b6bc22f8ffd7b0271f7706995a86c5_640_480.jpg",001);
insert into tb_pic(id,path,hotel_id) values (008,"http://img1.plateno.com/inn/023041/02ac3820cb68d31fc431ff66060ff84b_120_120.jpg",002);
insert into tb_pic(id,path,hotel_id) values (009,"http://img1.plateno.com/inn/023041/02ac3820cb68d31fc431ff66060ff84b_120_120.jpg",002);
insert into tb_pic(id,path,hotel_id) values (010,"http://img1.plateno.com/inn/023041/02ac3820cb68d31fc431ff66060ff84b_120_120.jpg",003);
insert into tb_pic(id,path,hotel_id) values (011,"http://img1.plateno.com/inn/023041/02ac3820cb68d31fc431ff66060ff84b_120_120.jpg",003);
insert into tb_pic(id,path,hotel_id) values (012,"http://img1.plateno.com/inn/023041/02ac3820cb68d31fc431ff66060ff84b_120_120.jpg",003);

insert into tb_pic(id,path,hotel_id) values (015,"pic/photo.jpg",null);


CREATE TABLE tb_customer
(
id long,
name varchar(255),
phone varchar(255),
password varchar(255),
IDCard varchar(255),
type varchar(255),
birthday varchar(255),
pic_id varchar(255)
)
insert into tb_customer(id,name,phone,password,IDCard,type,birthday,pic_id) VALUES (003,'test','111','111','500225199002133817',0,19920913,15);
insert into tb_customer(id,name,phone,password,IDCard,type,birthday,pic_id) VALUES (001,'旷宇','18580680138','safeandsound','500225199002133817',0,19920913,15);

insert into tb_room(id,type,price,num,pic_id,hotel_id) values (001,'经济房',99,20,null,001);
insert into tb_room(id,type,price,num,pic_id,hotel_id) values (010,'自主大床房',189,20,null,001);
insert into tb_room(id,type,price,num,pic_id,hotel_id) values (011,'商务双床房',289,20,null,001);
insert into tb_room(id,type,price,num,pic_id,hotel_id) values (002,'传统大床房',199,20,null,001);
insert into tb_room(id,type,price,num,pic_id,hotel_id) values (003,'商务大床房',299,20,null,001);

insert into tb_room(id,type,price,num,pic_id,hotel_id) values (004,'商务大床房',299,20,null,002);
insert into tb_room(id,type,price,num,pic_id,hotel_id) values (005,'经济房',99,20,null,002);
insert into tb_room(id,type,price,num,pic_id,hotel_id) values (006,'传统大床房',199,20,null,002);
insert into tb_room(id,type,price,num,pic_id,hotel_id) values (007,'自主大床房',199,20,null,003);
insert into tb_room(id,type,price,num,pic_id,hotel_id) values (008,'商务大床房',199,20,null,003);
insert into tb_room(id,type,price,num,pic_id,hotel_id) values (009,'经济房',199,20,null,003);
insert into tb_roomremain(id,room_id,day,remain)  values (001,001,20150611,30);
insert into tb_roomremain(id,room_id,day,remain)  values (002,001,20150612,30);
insert into tb_roomremain(id,room_id,day,remain)  values (003,001,20150613,30);
insert into tb_roomremain(id,room_id,day,remain)  values (004,001,20150614,30);
insert into tb_roomremain(id,room_id,day,remain)  values (021,001,20150615,30);
insert into tb_roomremain(id,room_id,day,remain)  values (022,001,20150616,30);
insert into tb_roomremain(id,room_id,day,remain)  values (023,001,20150617,30);
insert into tb_roomremain(id,room_id,day,remain)  values (024,001,20150618,30);
insert into tb_roomremain(id,room_id,day,remain)  values (025,001,20150619,30);
insert into tb_roomremain(id,room_id,day,remain)  values (026,001,20150620,30);
insert into tb_roomremain(id,room_id,day,remain)  values (027,001,20150621,30);
insert into tb_roomremain(id,room_id,day,remain)  values (028,001,20150622,30);

insert into tb_roomremain(id,room_id,day,remain)  values (005,002,20150611,30);
insert into tb_roomremain(id,room_id,day,remain)  values (006,002,20150612,0);
insert into tb_roomremain(id,room_id,day,remain)  values (007,002,20150613,30);
insert into tb_roomremain(id,room_id,day,remain)  values (008,002,20150614,30);

insert into tb_roomremain(id,room_id,day,remain)  values (009,005,20150611,30);
insert into tb_roomremain(id,room_id,day,remain)  values (010,005,20150612,0);
insert into tb_roomremain(id,room_id,day,remain)  values (011,005,20150613,30);
insert into tb_roomremain(id,room_id,day,remain)  values (012,005,20150614,30);



insert into tb_comment(id,content,level,type,time,customer_id,hotel_id) values (002,"还是可以",0,0,20150609,003,001);
insert into tb_comment(id,content,level,type,time,customer_id,hotel_id) values (003,"评个优",0,0,20150609,003,001);
