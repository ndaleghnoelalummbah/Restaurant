INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Mosongo Adina', 'amosongodina@gmail.com', 'Molyko, Buea');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Ndalegh Noela', 'ndaleghnoelalum@gmail.com', 'Total, Mutengene');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Formasit Chijoh', 'formasitf@gmail.com', 'Mile 16, Buea');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Ataba Emmanuel', 'atabaemmanuel@gmail.com', 'Blessing, Kumba');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Njome Shalom', 'shalom@gmail.com', 'Kossala, Kumba');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Gamuah Ryane', 'gamuahryane@gmail.com', 'Molyko, Buea');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Angele Viny', 'angeleviny@gmail.com', 'Sandpit, Buea');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Racheal Nkongho', 'nkonghorachael@gmail.com', 'South, Buea');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Yhoung Cute', 'yhoungcute@gmail.com', 'Atlanta, Georgia');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Mosongo Mikka', 'mosongomendebj@gmail.com', 'Brazzaville, Congo');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Rashidi Praheep', 'rashidipreep@gmail.com', 'Mumbai, India');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Nico Suarez', 'suareznico@gmail.com', 'Madrid, Spain');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Esther Christelle', 'christelle@gmail.com', 'Fiango, Kumba');
INSERT INTO Customer (CustName, Email, CustLocation) VALUES ('Eta Paul', 'etapaul@gmail.com', 'Soba, Kumba');


INSERT INTO Admin (AdminName) VALUES ('Default');
INSERT INTO Admin (AdminName) VALUES ('Roger');
INSERT INTO Admin (AdminName) VALUES ('Gustav');
INSERT INTO Admin (AdminName) VALUES ('Egbe');
INSERT INTO Admin (AdminName) VALUES ('Admin1');


INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, CustID, AdminID) VALUES ('2023-05-25', '2023-05-25', '2', 8000.0, '12:15:06', 2, 2);
INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, CustID, AdminID) VALUES ('2023-05-24', '2023-05-24', '1', 1500.0, '16:09:11', 5, 2);
INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, CustID, AdminID) VALUES ('2023-05-21', '2023-05-21', '5', 16000.0, '18:00:00', 8, 1);
INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, CustID, AdminID) VALUES ('2023-04-21', '2023-04-22', '6', 19000.0, '19:00:00', 4, 1);
INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, CustID, AdminID) VALUES ('2023-05-19', '2023-05-23', '8', 27000.0, '17:00:00', 1, 3);
INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, CustID, AdminID) VALUES ('2023-05-19', '2023-05-25', '9', 28500.0, '14:00:00', 9, 3);
INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, stat, CustID, AdminID) VALUES ('2023-03-15', '2023-03-15', '1', 3000.0, '10:19:44', 'TRUE', 7, 2);
INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, stat, CustID, AdminID) VALUES ('2023-04-12', '2023-04-12', '2', 4000.0, '15:34:23', 'TRUE', 4, 2);
INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, stat, CustID, AdminID) VALUES ('2023-02-09', '2023-02-09', '3', 12000.0, '18:30:00', 'TRUE', 3, 1);
INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, stat, CustID, AdminID) VALUES ('2023-01-11', '2023-01-12', '5', 17500.0, '21:00:00', 'TRUE', 6, 1);
INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, stat, CustID, AdminID) VALUES ('2023-01-17', '2023-01-19', '9', 28500.0, '15:00:00', 'TRUE', 5, 3);
INSERT INTO Orders (OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, stat, CustID, AdminID) VALUES ('2023-04-07', '2023-04-11', '8', 27000.0, '09:00:00', 'TRUE', 10, 3);


INSERT INTO Catering (OrderID, DeliveryLocation) VALUES (5, 'Molyko, Buea');
INSERT INTO Catering (OrderID, DeliveryLocation) VALUES (6, 'Mumbai, India');
INSERT INTO Catering (OrderID, DeliveryLocation) VALUES (11, 'Sandpit, Buea');
INSERT INTO Catering (OrderID, DeliveryLocation) VALUES (12, 'Madrid, Spain');


INSERT INTO Reservation (OrderID, Reservation_size) VALUES (3, 3);
INSERT INTO Reservation (OrderID, Reservation_size) VALUES (4, 4);
INSERT INTO Reservation (OrderID, Reservation_size) VALUES (9, 1);
INSERT INTO Reservation (OrderID, Reservation_size) VALUES (10,2 );


INSERT INTO MenuItems (ItemName, ItemDesc, Price, ItemImage) VALUES ('Fried Rice', 'Seasoned-cooked rice with extras.', 3000.0, NULL);
INSERT INTO MenuItems (ItemName, ItemDesc, Price, ItemImage) VALUES ('Grilled Chicken', 'Low fat Chicken grilled to perfection!', 5000.0, NULL);
INSERT INTO MenuItems (ItemName, ItemDesc, Price, ItemImage) VALUES ('Fufu and Eru', 'Is there anything better?!', 1500.0, NULL);
INSERT INTO MenuItems (ItemName, ItemDesc, Price, ItemImage) VALUES ('Dodo and Ndole', 'Chop et yamo!', 3500.0, NULL);
INSERT INTO MenuItems (ItemName, Price, ItemImage) VALUES ('Kwacoco', 500.0, NULL);
INSERT INTO MenuItems (ItemName, ItemDesc, Price, ItemImage) VALUES ('Ekwang', 'Na to spread leg and wash hand!', 6000.0, NULL);
INSERT INTO MenuItems (ItemName, ItemDesc, Price, ItemImage) VALUES ('Yam and Koki', 'Chop bellefull!', 3000.0, NULL);
INSERT INTO MenuItems (ItemName, ItemDesc, Price, ItemImage) VALUES ('Egusi Pudding', 'Egusi paste but Cameroonian! Oya now!', 2000.0, NULL);
INSERT INTO MenuItems (ItemName, ItemDesc, Price, ItemImage) VALUES ('Barbecue Set', 'Is it brunch or party?...Na me this!', 4000.0, NULL);
INSERT INTO MenuItems (ItemName, ItemDesc, Price, ItemImage) VALUES ('Stake & Taco', 'Crunchy and munchy!', 7000.0, NULL);


INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (1, 8000.0, 'MTN MOMO');
INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (2, 1500.0, 'MTN MOMO');
INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (3, 16000.0, 'MTN MOMO');
INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (4, 19000.0, 'Orange Money');
INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (5, 27000.0, 'Orange Money');
INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (6, 28500.0, 'MTN MOMO');
INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (7, 3000.0, 'SCB BANK');
INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (8, 4000.0, 'Orange Money');
INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (9, 12000.0, 'MTN MOMO');
INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (10, 17500.0, 'MTN MOMO');
INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (11, 28500.0, 'MTN MOMO');
INSERT INTO Payment (OrderID, Amount, Payment_type) VALUES (12, 27000.0, 'Orange Money');


INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (1, 'Fried Rice');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (1, 'Grilled Chicken');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (2, 'Fufu and Eru');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (3, 'Dodo and Ndole');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (3, 'Barbecue Set');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (3, 'Ekwang');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (3, 'Kwacoco');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (3, 'Egusi Pudding');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (4, 'Dodo and Ndole');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (4, 'Barbecue Set');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (4, 'Ekwang');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (4, 'Kwacoco');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (4, 'Egusi Pudding');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (4, 'Yam and Koki');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (5, 'Dodo and Ndole');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (5, 'Barbecue Set');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (5, 'Ekwang');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (5, 'Kwacoco');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (5, 'Egusi Pudding');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (5, 'Yam and Koki');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (5, 'Grilled Chicken');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (5, 'Fried Rice');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (6, 'Dodo and Ndole');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (6, 'Barbecue Set');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (6, 'Ekwang');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (6, 'Kwacoco');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (6, 'Egusi Pudding');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (6, 'Yam and Koki');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (6, 'Grilled Chicken');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (6, 'Fried Rice');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (6, 'Fufu and Eru');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (7, 'Fried Rice');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (8, 'Kwacoco');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (8, 'Dodo and Ndole');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (9, 'Grilled Chicken');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (9, 'Barbecue Set');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (9, 'Fried Rice');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (10, 'Grilled Chicken');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (10, 'Barbecue Set');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (10, 'Fried Rice');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (10, 'Dodo and Ndole');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (10, 'Egusi Pudding');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (11, 'Dodo and Ndole');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (11, 'Barbecue Set');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (11, 'Ekwang');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (11, 'Kwacoco');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (11, 'Egusi Pudding');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (11, 'Yam and Koki');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (11, 'Grilled Chicken');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (11, 'Fried Rice');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (11, 'Fufu and Eru');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (12, 'Dodo and Ndole');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (12, 'Barbecue Set');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (12, 'Ekwang');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (12, 'Kwacoco');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (12, 'Egusi Pudding');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (12, 'Yam and Koki');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (12, 'Grilled Chicken');
INSERT INTO OrderMenuContent (OrderID, ItemName) VALUES (12, 'Fried Rice');


INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-25', 'Fried Rice');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-25', 'Grilled Chicken');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-24', 'Fufu and Eru');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-21', 'Dodo and Ndole');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-21', 'Barbecue Set');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-21', 'Ekwang');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-21', 'Kwacoco');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-21', 'Egusi Pudding');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-21', 'Dodo and Ndole');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-21', 'Barbecue Set');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-21', 'Ekwang');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-21', 'Kwacoco');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-21', 'Egusi Pudding');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-21', 'Yam and Koki');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-19', 'Dodo and Ndole');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-19', 'Barbecue Set');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-19', 'Ekwang');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-19', 'Kwacoco');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-19', 'Egusi Pudding');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-19', 'Yam and Koki');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-19', 'Grilled Chicken');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-19', 'Fried Rice');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-19', 'Fufu and Eru');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-03-15', 'Fried Rice');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-12', 'Kwacoco');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-12', 'Dodo and Ndole');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-02-09', 'Grilled Chicken');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-02-09', 'Barbecue Set');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-02-09', 'Fried Rice');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-11', 'Grilled Chicken');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-11', 'Barbecue Set');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-11', 'Fried Rice');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-11', 'Dodo and Ndole');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-11', 'Egusi Pudding');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-17', 'Dodo and Ndole');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-17', 'Barbecue Set');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-17', 'Ekwang');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-17', 'Kwacoco');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-17', 'Egusi Pudding');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-17', 'Yam and Koki');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-17', 'Grilled Chicken');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-17', 'Fried Rice');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-01-17', 'Fufu and Eru');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-07', 'Dodo and Ndole');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-07', 'Barbecue Set');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-07', 'Ekwang');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-07', 'Kwacoco');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-07', 'Egusi Pudding');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-07', 'Yam and Koki');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-07', 'Grilled Chicken');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-04-07', 'Fried Rice');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-28', 'Fufu and Eru');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-28', 'Kwacoco');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('', '2023-05-28', 'Egusi Pudding');


INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('UB Junction', '2023-06-10', 'Fried Rice');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('UB Junction', '2023-06-10', 'Grilled Chicken');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('UB Junction', '2023-06-10', 'Fufu and Eru');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('UB Junction', '2023-06-10', 'Dodo and Ndole');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('UB Junction', '2023-06-10', 'Barbecue Set');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('UB Junction', '2023-06-10', 'Ekwang');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('Mile-17', '2023-06-10', 'Kwacoco');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('Mile-17', '2023-06-10', 'Egusi Pudding');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('Mile-17', '2023-06-10', 'Dodo and Ndole');
INSERT INTO MenuList (Branch, MenuDate, ItemName) VALUES ('Mile-17', '2023-06-10', 'Barbecue Set');

----Discard the following table----
----It is not necessary--------
----CREATE TABLE CustomerMenuView ( CustID INT REFERENCES Customer(CustID), ItemName CHAR(20) REFERENCES MenuItems(ItemName), PRIMARY KEY(CustID, ItemName));
