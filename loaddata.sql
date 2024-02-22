CONNECT TO COMP421;
-- Generated by script
INSERT INTO Category VALUES ('categoryA');
INSERT INTO Category VALUES ('categoryB');
INSERT INTO Category VALUES ('categoryC');
INSERT INTO Category VALUES ('categoryD');
INSERT INTO Category VALUES ('categoryE');
INSERT INTO BrandPage VALUES ('www.421market.com/brand1','Brand 1','This is the description for Brand 1.');
INSERT INTO BrandPage VALUES ('www.421market.com/brand2','Brand 2','This is the description for Brand 2.');
INSERT INTO BrandPage VALUES ('www.421market.com/brand3','Brand 3','This is the description for Brand 3.');
INSERT INTO BrandPage VALUES ('www.421market.com/brand4','Brand 4','This is the description for Brand 4.');
INSERT INTO BrandPage VALUES ('www.421market.com/brand5','Brand 5',NULL);
INSERT INTO Model VALUES ('122455','362.66','www.421market.com/brand4','0');
INSERT INTO Model VALUES ('109508','338.10','www.421market.com/brand4','0');
INSERT INTO Model VALUES ('115935','486.49','www.421market.com/brand4','0');
INSERT INTO Model VALUES ('107171','293.69','www.421market.com/brand3','0');
INSERT INTO Model VALUES ('111674','265.88','www.421market.com/brand3','0');
INSERT INTO Model VALUES ('105443','343.00','www.421market.com/brand1','0');
INSERT INTO Belongs VALUES ('categoryC','109508');
INSERT INTO Belongs VALUES ('categoryB','109508');
INSERT INTO Belongs VALUES ('categoryB','105443');
INSERT INTO Belongs VALUES ('categoryE','105443');
INSERT INTO User VALUES ('952116201');
INSERT INTO User VALUES ('892174163');
INSERT INTO User VALUES ('991761506');
INSERT INTO User VALUES ('348866126');
INSERT INTO User VALUES ('172847298');
INSERT INTO User VALUES ('378684644');
INSERT INTO User VALUES ('527307754');
INSERT INTO User VALUES ('763699145');
INSERT INTO User VALUES ('604251703');
INSERT INTO User VALUES ('582434374');
INSERT INTO User VALUES ('123202201');
INSERT INTO User VALUES ('136983128');
INSERT INTO User VALUES ('870250447');
INSERT INTO User VALUES ('944270721');
INSERT INTO User VALUES ('939496211');
INSERT INTO User VALUES ('684809787');
INSERT INTO User VALUES ('744921309');
INSERT INTO User VALUES ('187851394');
INSERT INTO User VALUES ('743267158');
INSERT INTO User VALUES ('788328265');
INSERT INTO Customer VALUES ('952116201','1994-10-05','TZJfwp56WV','elian.barrett@gmail.com','Elian Barrett');
INSERT INTO Customer VALUES ('892174163','2005-10-01','nQHcrdHGTa','bcooper8@live.com','Byron Cooper');
INSERT INTO Customer VALUES ('991761506','1999-12-26','tJeToe6FxV','queen.david@gmail.com','David Elliott');
INSERT INTO Customer VALUES ('348866126',NULL,'K2gvKzS3k1','violet.the.sleepy@google.com','Violet Riley');
INSERT INTO Customer VALUES ('172847298','1995-09-12','gL1rMn6kyV','chief.elliott@msn.com','Oliver Elliott');
INSERT INTO Customer VALUES ('378684644','1997-01-28','EZ4gdqrc1x','nicholas97@google.com','Nicholas Barnes');
INSERT INTO Customer VALUES ('527307754','1995-11-05','8IjupZhLPu','william.armstrong@protonmail.com','William Armstrong');
INSERT INTO Customer VALUES ('763699145','2003-06-08','qXpJbLw2mS','dainton.brooks@live.com','Dainton Brooks');
INSERT INTO Customer VALUES ('604251703',NULL,'5M2juKI9jL','camila.the.hungry@outlook.com','Camila Campbell');
INSERT INTO Customer VALUES ('582434374','2005-12-30','Yk4YxZZzap','adrianna.perkins@hotmail.com','Adrianna Perkins');
INSERT INTO Review VALUES ('892174163','122455','5','Average product.');
INSERT INTO Review VALUES ('763699145','122455','8','Quite good Would buy again.');
INSERT INTO Review VALUES ('892174163','115935','9','I''m very satisfied.');
INSERT INTO Review VALUES ('763699145','115935','7','I''m satisfied.');
INSERT INTO Review VALUES ('892174163','107171','10','NULL');
INSERT INTO Review VALUES ('763699145','111674','8','Quite good Would buy again.');
INSERT INTO Review VALUES ('952116201','105443','9','I''m very satisfied.');
INSERT INTO Member VALUES ('952116201','2024-09-30','9901');
INSERT INTO Member VALUES ('892174163','2024-07-24','6250');
INSERT INTO Member VALUES ('991761506','2024-11-22','4681');
INSERT INTO Member VALUES ('348866126','2024-03-27','4060');
INSERT INTO Member VALUES ('172847298','2024-11-26','3240');
INSERT INTO Coupon VALUES ('952116201','122455','0.0','98','2028-01-23');
INSERT INTO Coupon VALUES ('991761506','107171','0.98','68','2025-12-19');
INSERT INTO Coupon VALUES ('348866126','109508','0.35','97','2025-07-17');
INSERT INTO Coupon VALUES ('172847298','115935','0.55','78','2027-12-21');
INSERT INTO Coupon VALUES ('172847298','105443','0.27','4','2027-09-06');
INSERT INTO Admin VALUES ('123202201');
INSERT INTO Admin VALUES ('136983128');
INSERT INTO Admin VALUES ('870250447');
INSERT INTO Admin VALUES ('944270721');
INSERT INTO Admin VALUES ('939496211');
INSERT INTO Manages VALUES ('123202201','www.421market.com/brand1','2019-10-23','5');
INSERT INTO Manages VALUES ('939496211','www.421market.com/brand1','2022-11-03','2');
INSERT INTO Manages VALUES ('944270721','www.421market.com/brand2','2016-01-06','5');
INSERT INTO Manages VALUES ('136983128','www.421market.com/brand3','2020-12-10','5');
INSERT INTO Manages VALUES ('870250447','www.421market.com/brand3','2023-12-21','1');
INSERT INTO Manages VALUES ('123202201','www.421market.com/brand4','2018-02-25','5');
INSERT INTO Manages VALUES ('136983128','www.421market.com/brand5','2017-06-09','5');
INSERT INTO Manages VALUES ('870250447','www.421market.com/brand5','2022-11-18','3');
INSERT INTO Card VALUES ('8305316656206359','2028-09-29','952116201');
INSERT INTO Card VALUES ('4732968695246341','2026-01-15','892174163');
INSERT INTO Card VALUES ('5890080091064167','2026-04-07','991761506');
INSERT INTO Card VALUES ('5145390539049977','2026-12-30','348866126');
INSERT INTO Card VALUES ('7752493487088561','2025-04-30','172847298');
INSERT INTO Card VALUES ('3485737629803169','2026-10-04','378684644');
INSERT INTO Card VALUES ('1223979735457678','2027-01-08','527307754');
INSERT INTO Card VALUES ('2366325554381486','2024-09-03','763699145');
INSERT INTO Card VALUES ('7393758364843123','2027-06-08','604251703');
INSERT INTO Card VALUES ('9866645896960890','2025-09-13','582434374');
INSERT INTO Card VALUES ('3242156218654172','2027-03-31',NULL);
INSERT INTO Card VALUES ('2712942479093472','2025-12-30',NULL);
INSERT INTO Card VALUES ('9385717608657259','2025-02-20',NULL);
INSERT INTO Card VALUES ('6344229869556564','2025-12-07',NULL);
INSERT INTO Card VALUES ('8001632639355556','2027-08-21',NULL);
INSERT INTO Card VALUES ('4598677041793225','2025-09-17',NULL);
INSERT INTO Restock VALUES ('Cogswell Cogs','1','Istanbul TR','2023-06-02');
INSERT INTO Restock VALUES ('Pied Piper','1','Sao Paulo BR','2021-09-29');
INSERT INTO Restock VALUES ('Pied Piper','2','Sao Paulo BR','2024-01-20');
INSERT INTO Restock VALUES ('Umbrella Corporation','1','Berlin DE','2022-11-12');
INSERT INTO Restock VALUES ('Pied Piper','3','Sao Paulo BR','2022-11-04');
INSERT INTO Restock VALUES ('Cogswell Cogs','2','Istanbul TR','2023-11-04');
INSERT INTO Order VALUES ('100000001','Address 1','265.88','2023-05-28','guest1@domain.com','2712942479093472');
INSERT INTO Order VALUES ('100000002','Address 2','343','2023-03-19','elian.barrett@gmail.com','8305316656206359');
INSERT INTO Order VALUES ('100000004','Address 3','265.88','2024-02-13','dainton.brooks@live.com','2366325554381486');
INSERT INTO Order VALUES ('100000005','Address 4','780.18','2024-02-01','bcooper8@live.com','4732968695246341');
INSERT INTO Order VALUES ('100000006','Address 5','849.15','2023-11-26','dainton.brooks@live.com','2366325554381486');
INSERT INTO Order VALUES ('100000007','Address 6','362.66','2023-05-06','bcooper8@live.com','4732968695246341');
INSERT INTO Order VALUES ('100000008','Address 7','265.88','2023-09-30','dainton.brooks@live.com','2366325554381486');
INSERT INTO Product VALUES ('122455','100000001','0','100000007','Pied Piper','3');
INSERT INTO Product VALUES ('122455','100000002','0','100000006','Cogswell Cogs','1');
INSERT INTO Product VALUES ('109508','100000001','0',NULL,'Pied Piper','2');
INSERT INTO Product VALUES ('115935','100000001','0','100000005','Umbrella Corporation','1');
INSERT INTO Product VALUES ('115935','100000002','0','100000006','Pied Piper','1');
INSERT INTO Product VALUES ('107171','100000001','0','100000005','Pied Piper','1');
INSERT INTO Product VALUES ('107171','100000002','0',NULL,'Pied Piper','3');
INSERT INTO Product VALUES ('111674','100000001','0','100000004','Pied Piper','1');
INSERT INTO Product VALUES ('111674','100000002','0',NULL,'Pied Piper','2');
INSERT INTO Product VALUES ('111674','100000003','0','100000001','Pied Piper','2');
INSERT INTO Product VALUES ('111674','100000004','0','100000008','Pied Piper','2');
INSERT INTO Product VALUES ('105443','100000001','0','100000002','Pied Piper','3');
INSERT INTO Shipment VALUES ('1','Shipper1','100000005','107171','100000001','2022-10-01','2022-09-28');
INSERT INTO Shipment VALUES ('2','Shipper1','100000005','115935','100000001','2022-07-18','2022-07-15');
INSERT INTO Shipment VALUES ('2','Shipper1','100000006','122455','100000002','2022-01-26','2022-01-23');
INSERT INTO Shipment VALUES ('3','Shipper1','100000007','122455','100000001','2024-10-23','2024-10-20');
INSERT INTO Shipment VALUES ('3','Shipper1','100000001','111674','100000003','2023-02-09','2023-02-06');
INSERT INTO Shipment VALUES ('4','Shipper1','100000004','111674','100000001','2022-07-19','2022-07-16');
INSERT INTO Shipment VALUES ('5','Shipper1','100000006','115935','100000002','2022-10-10','2022-10-07');
INSERT INTO Shipment VALUES ('5','Shipper1','100000008','111674','100000004','2023-08-06','2023-08-03');
INSERT INTO Shipment VALUES ('6','Shipper1','100000002','105443','100000001','2024-02-29','2024-02-26');
