create database food
use food

CREATE TABLE tbl_admin (
  id int  NOT NULL,
  full_name varchar(200) NOT NULL,
  username varchar(200) NOT NULL,
  password varchar(200) NOT NULL
)

INSERT INTO tbl_admin 
VALUES
(6, ' hredoy', 'hredoy', '81dc9bdb52d04dc20036dbd8313ed055'),
(7, ' Shadman Sakib Khan', 'shadman', '81dc9bdb52d04dc20036dbd8313ed055'),
(8, ' Naser', 'naser', '81dc9bdb52d04dc20036dbd8313ed055');

--select * from tbl_admin 

CREATE TABLE tbl_category (
  id int  NOT NULL,
  title varchar(200) NOT NULL,
  image_name varchar(200) NOT NULL,
  featured varchar(200) NOT NULL,
  active varchar(200) NOT NULL
)


INSERT INTO tbl_category
VALUES
(1, 'DESSERT', 'Food_category_785.jpg', 'yes', 'yes'),
(3, 'SHAHI FOOD', 'Food_category_904.jpg', 'yes', 'yes'),
(4, 'PLATTER', 'Food_category_19.jpg', 'no', 'yes'),
(5, 'FAST FOOD', 'Food_category_705.jpg', 'yes', 'yes'),
(6, 'DRINKS', 'Food_category_161.jpg', 'no', 'yes'),
(7, 'JAPANESE FOOD', 'Food_category_576.jpg', 'no', 'yes'),
(8, 'BENGALI FOOD', 'Food_category_10.jpg', 'no', 'yes'),
(9, 'INDIAN FOOD', 'Food_category_164.jpg', 'no', 'yes'),
(10, 'CHINESE FOOD', 'Food_category_413.jpg', 'no', 'yes'),
(11, 'SEA FOOD', 'Food_category_905.jpg', 'no', 'yes'),
(12, 'ARABIAN FOOD', 'Food_category_826.jpg', 'no', 'yes'),
(13, 'RAMADAN SPECIAL', 'Food_category_696.jpg', 'no', 'yes'),
(14, 'MEAT ITEMS', 'Food_category_523.jpg', 'no', 'yes'),
(15, 'PITHA', 'Food_category_606.jpg', 'no', 'yes'),
(16, 'FUSKA', 'Food_category_973.jpg', 'no', 'yes');

--select * from tbl_category


CREATE TABLE tbl_food (
  id int  NOT NULL,
  title varchar(200) NOT NULL,
  discription text NOT NULL,
  price decimal(20,0) NOT NULL,
  image_name varchar(100) NOT NULL,
  category_id int NOT NULL,
  featured varchar(100) NOT NULL,
  Orderid varchar(100) NOT NULL,
  active varchar(100) NOT NULL
)



INSERT INTO tbl_food 
VALUES
(6, 'Beef Steak', 'Juicy steak for you.', '1750', 'Food_Name_639.jpg', 14, 'no', '', 'yes'),
(7, 'BBQ Chicken', 'Very tasty and delicious bbq chicken with chili souce.', '150', 'Food_Name_750.jpg', 14, 'no', '', 'yes'),
(8, 'Beef Tikka', 'Shahi tikka with lemon drop.', '100', 'Food_Name_434.jpg', 14, 'no', '', 'yes'),
(9, 'Chicken Botty Kabab', 'Kabab that melts your heart.', '125', 'Food_Name_552.jpg', 14, 'no', '', 'yes'),
(10, 'Chicken Tikka', 'This tikka made of juicy chicken meat.', '100', 'Food_Name_883.jpg', 14, 'no', '', 'yes'),
(11, 'Fried Chicken Kabab', 'First we fried the chicken then made this juicy kabab.', '180', 'Food_Name_514.jpg', 14, 'no', '', 'yes'),
(12, 'Grilled Chicken', 'Grilled chicken smell will make you more hungry.', '360', 'Food_Name_792.jpg', 14, 'no', '', 'yes'),
(13, 'Mutton Kabab', 'From fresh mutton we made this.', '250', 'Food_Name_217.jpg', 14, 'no', '', 'yes'),
(14, 'Mutton Tikka', 'Mutton tikka is one of our best tikka.', '250', 'Food_Name_7.jpg', 14, 'no', '', 'yes'),
(15, 'Shami Kabab', 'Shami kabab is one of the best kabab from us.', '180', 'Food_Name_232.jpg', 14, 'no', '', 'yes'),
(16, 'Tandoori Chicken', 'With fried rice or nan this will bring a new flavour in your plate.', '140', 'Food_Name_114.jpg', 14, 'no', '', 'yes'),
(17, 'Steak Kabab', 'This is a steak and also kabab.', '350', 'Food_Name_185.jpg', 14, 'no', '', 'yes'),
(18, 'Shawrma', 'With juicy chicken piece and meonise.', '100', 'Food_Name_343.jpg', 14, 'no', '', 'yes'),
(19, 'Nihari', 'Beef nehari with special masala.', '160', 'Food_Name_567.jpg', 14, 'no', '', 'yes'),
(20, 'Plain Naan', 'Naan is very soft here.', '25', 'Food_Name_41.jpg', 14, 'no', '', 'yes'),
(21, 'Garlic Butter Naan', 'Naan with some garlic and butter. tastes good.', '50', 'Food_Name_601.jpg', 14, 'no', '', 'yes'),
(22, 'Paan', 'Bengali traditional pan with sweat jarda and masala.', '25', 'Food_Name_434.jpg', 1, 'no', '', 'yes'),
(23, 'Jafran Shondesh', 'So testy jafran shondesh', '230', 'Food_Name_688.jpg', 1, 'yes', '', 'yes'),
(24, 'White Sweet', 'Sweet that tastes well', '200', 'Food_Name_584.jpg', 1, 'no', '', 'yes'),
(25, 'Pudding', 'milky pudding', '150', 'Food_Name_953.jpg', 1, 'no', '', 'yes'),
(26, 'Chocolate Cake', 'tasty chocolate cake', '750', 'Food_Name_44.jfif', 1, 'no', '', 'yes'),
(27, 'Shondesh', '', '350', 'Food_Name_624.jpg', 1, 'no', '', 'yes'),
(28, 'Donuts', 'tasty soft donuts', '100', 'Food_Name_380.jfif', 1, 'no', '', 'yes'),
(29, 'Chomchom', 'Tangail famous chomchom', '250', 'Food_Name_625.jfif', 1, 'no', '', 'yes'),
(30, 'Cake Pudding', 'pudding with cake taste', '200', 'Food_Name_975.jpg', 1, 'no', '', 'yes'),
(31, 'Rainbow Cake', 'colorful cake', '1000', 'Food_Name_471.jfif', 1, 'no', '', 'yes'),
(32, 'Red Velvet Cake', 'very tasty', '250', 'Food_Name_241.jfif', 1, 'no', '', 'yes'),
(33, 'Kacha Shondesh', 'shondesh with shahi taste', '450', 'Food_Name_288.jpg', 1, 'no', '', 'yes'),
(34, 'Chocolate Cake pudding', 'chocolaty taste', '250', 'Food_Name_31.jpg', 1, 'no', '', 'yes'),
(35, 'Mango Pudding', 'tasty mango pudding', '300', 'Food_Name_255.jpg', 1, 'no', '', 'yes'),
(36, 'Strawberry Cake', 'Taste with Strawberry flavour.', '1250', 'Food_Name_623.jpg', 1, 'no', '', 'yes'),
(37, 'Belpuri', 'Spicy belpuri', '20', 'Food_Name_662.jpg', 16, 'no', '', 'yes'),
(38, 'Doi Fuska', 'Fuska with doi flavour', '50', 'Food_Name_845.jpg', 16, 'no', '', 'yes'),
(40, 'Fuska', 'Tasty fuska', '30', 'Food_Name_387.jpg', 16, 'no', '', 'yes'),
(41, 'Chitoi Pitha', 'Chitoi pitha with chilly souce', '40', 'Food_Name_455.jpg', 15, 'no', '', 'yes'),
(42, 'Vapa Pitha', 'Khejur gurer pitha', '50', 'Food_Name_405.jfif', 15, 'no', '', 'yes'),
(43, 'Patishapta', 'tasty pitha', '25', 'Food_Name_107.JPG', 15, 'no', '', 'yes'),
(44, 'Muhi Pitha', 'shiddho pitha', '15', 'Food_Name_287.jpg', 15, 'no', '', 'yes'),
(46, 'Teler Pitha', 'tasty teler pitha', '25', 'Food_Name_811.JPG', 15, 'no', '', 'yes'),
(47, 'Chinese Platter', 'rice, thai chicken, vegetable', '250', 'Food_Name_340.jfif', 4, 'no', '', 'yes'),
(48, 'Special Platter', '', '450', 'Food_Name_458.jfif', 4, 'yes', '', 'yes'),
(49, 'Jilapi', '', '300', 'Food_Name_8.jpg', 13, 'no', '', 'yes'),
(50, 'Chola', '', '30', 'Food_Name_442.jpg', 13, 'no', '', 'yes'),
(51, 'Piyaju', '', '10', 'Food_Name_315.jfif', 13, 'no', '', 'yes'),
(52, 'Aluur Chop', '', '10', 'Food_Name_152.jpg', 13, 'no', '', 'yes'),
(53, 'Beguni', '', '10', 'Food_Name_720.jpg', 13, 'no', '', 'yes'),
(54, 'Platter 1', '', '1000', 'Food_Name_197.jpg', 11, 'no', '', 'yes'),
(55, 'Platter 2', '', '1000', 'Food_Name_677.jpg', 11, 'no', '', 'yes'),
(56, 'Platter 3', '', '1000', 'Food_Name_582.jpg', 11, 'no', '', 'yes'),
(57, 'Platter 4', '', '2000', 'Food_Name_325.jfif', 11, 'no', '', 'yes'),
(58, 'Platter 5', '', '2000', 'Food_Name_567.jpg', 11, 'no', '', 'yes'),
(59, 'Salmon Fish', '', '2000', 'Food_Name_503.jfif', 11, 'no', '', 'yes'),
(60, 'Platter 1', '', '2500', 'Food_Name_764.jfif', 12, 'no', '', 'yes'),
(61, 'Platter 2', '', '1500', 'Food_Name_897.jfif', 12, 'no', '', 'yes'),
(62, 'Platter 3', '', '1500', 'Food_Name_567.jfif', 12, 'no', '', 'yes'),
(63, 'Platter 4', '', '2000', 'Food_Name_968.jpg', 12, 'no', '', 'yes'),
(64, 'Platter 1', '', '1000', 'Food_Name_813.jfif', 7, 'no', '', 'yes'),
(65, 'Platter 2', '', '1000', 'Food_Name_853.jfif', 7, 'no', '', 'yes'),
(66, 'Platter 3', '', '3000', 'Food_Name_367.jpg', 7, 'no', '', 'yes'),
(67, 'Sushi', '', '2500', 'Food_Name_900.jpg', 7, 'no', '', 'yes'),
(68, 'Chawmin', '', '250', 'Food_Name_648.jfif', 10, 'no', '', 'yes'),
(69, 'Chicken Noddles', '', '250', 'Food_Name_575.jfif', 10, 'yes', '', 'yes'),
(70, 'Pasta', '', '200', 'Food_Name_494.jpg', 10, 'no', '', 'yes'),
(71, 'Vegetable Noodles', '', '300', 'Food_Name_909.jfif', 10, 'no', '', 'yes'),
(72, 'Vegetable', '', '350', 'Food_Name_690.jfif', 10, 'no', '', 'yes'),
(73, 'Mutton Curry', '', '250', 'Food_Name_317.jfif', 9, 'no', '', 'yes'),
(74, 'Rice', '', '20', 'Food_Name_159.jpg', 9, 'no', '', 'yes'),
(75, 'Luchi', '', '100', 'Food_Name_137.jfif', 9, 'no', '', 'yes'),
(76, 'Luchi 2', '', '150', 'Food_Name_893.jpg', 9, 'no', '', 'yes'),
(77, 'Alur Dom', '', '50', 'Food_Name_296.jpg', 9, 'no', '', 'yes'),
(78, 'Chicken Curry', '', '150', 'Food_Name_803.jpg', 9, 'no', '', 'yes'),
(79, 'Rice', '', '20', 'Food_Name_349.jpg', 8, 'no', '', 'yes'),
(80, 'Mutton Curry', '', '150', 'Food_Name_230.jfif', 8, 'no', '', 'yes'),
(81, 'Fish Curry', '', '100', 'Food_Name_155.jpg', 8, 'no', '', 'yes'),
(82, 'Ilish Curry', '', '500', 'Food_Name_147.jpg', 8, 'yes', '', 'yes'),
(83, 'Rui Fish Curry', '', '100', 'Food_Name_335.jpg', 8, 'no', '', 'yes'),
(84, 'Vorta', '', '20', 'Food_Name_230.jfif', 8, 'no', '', 'yes'),
(85, 'Beef Curry', '', '150', 'Food_Name_397.jpg', 8, 'no', '', 'yes'),
(86, 'Chicken Curry', '', '130', 'Food_Name_365.jpg', 8, 'no', '', 'yes'),
(87, 'Coke', '', '40', 'Food_Name_283.jfif', 6, 'yes', '', 'yes'),
(88, 'sprite', '', '40', 'Food_Name_354.jfif', 6, 'no', '', 'yes'),
(90, 'Mirinda', '', '40', 'Food_Name_956.jpg', 6, 'no', '', 'yes'),
(91, 'Mounten Dew', '', '40', 'Food_Name_409.jpg', 6, 'no', '', 'yes'),
(92, 'Lacchi', '', '80', 'Food_Name_487.jpg', 6, 'no', '', 'yes'),
(93, 'Badam Sharbat', '', '80', 'Food_Name_70.jpg', 6, 'no', '', 'yes'),
(94, 'Coffee', '', '70', 'Food_Name_854.jpg', 6, 'no', '', 'yes'),
(96, 'Tea', '', '10', 'Food_Name_655.jfif', 6, 'no', '', 'yes'),
(97, '7up', '', '40', 'Food_Name_709.jpg', 6, 'no', '', 'yes'),
(98, 'Salad', '', '100', 'Food_Name_701.jpg', 3, 'no', '', 'yes'),
(99, 'Afgan Biriyani', '', '300', 'Food_Name_355.jfif', 3, 'no', '', 'yes'),
(100, 'Beef Biriyani', '', '400', 'Food_Name_504.jpg', 3, 'no', '', 'yes'),
(101, 'Beef Vuna Khichuri', '', '200', 'Food_Name_823.jpg', 3, 'no', '', 'yes'),
(102, 'Bhuna Khichuri', '', '150', 'Food_Name_830.jpg', 3, 'no', '', 'yes'),
(103, 'Chicken Biriyani', '', '250', 'Food_Name_466.png', 3, 'no', '', 'yes'),
(104, 'Dim Tikka', '', '25', 'Food_Name_119.jpg', 3, 'no', '', 'yes'),
(105, 'Ilish Khichuri', '', '450', 'Food_Name_86.jpg', 3, 'no', '', 'yes'),
(106, 'Kacchi', '', '250', 'Food_Name_469.jpg', 3, 'no', '', 'yes'),
(107, 'Lamb Roast', '', '550', 'Food_Name_923.jpg', 3, 'no', '', 'yes'),
(108, 'Morog Polao', '', '350', 'Food_Name_390.jpg', 3, 'no', '', 'yes'),
(109, 'Mutton Masala', '', '350', 'Food_Name_350.jfif', 3, 'no', '', 'yes'),
(110, 'Mutton Polao', '', '200', 'Food_Name_328.jpg', 3, 'no', '', 'yes'),
(111, 'Platter 3', '', '450', 'Food_Name_781.jfif', 4, 'no', '', 'yes'),
(112, 'Platter 4', '', '350', 'Food_Name_306.jpg', 4, 'yes', '', 'yes'),
(113, 'Chicken Burger', '', '250', 'Food_Name_882.jpg', 5, 'yes', '', 'yes'),
(114, 'Beef Burger', '', '300', 'Food_Name_423.jpg', 5, 'no', '', 'yes'),
(115, 'Chicken momos', '', '3500', 'Food_Name_695.jpg', 5, 'no', '', 'yes'),
(116, 'French Fry', '', '100', 'Food_Name_937.jpg', 5, 'no', '', 'yes'),
(117, 'Chese Burger', '', '300', 'Food_Name_459.jfif', 5, 'no', '', 'yes'),
(118, 'Pizza', '', '600', 'Food_Name_248.jfif', 5, 'no', '', 'yes'),
(119, 'Platter 1', '', '450', 'Food_Name_903.jfif', 5, 'no', '', 'yes'),
(120, 'Chicken fry', '', '100', 'Food_Name_676.jpg', 5, 'no', '', 'yes'),
(121, 'Momos', '', '300', 'Food_Name_219.jpg', 5, 'no', '', 'yes'),
(122, 'Pepperoni Pizza', '', '800', 'Food_Name_195.jpg', 5, 'no', '', 'yes'),
(123, 'Chicken Pizza', '', '1000', 'Food_Name_705.jpg', 5, 'no', '', 'yes'),
(124, 'Chicken Cheese Pizza', '', '1250', 'Food_Name_471.jpg', 5, 'yes', '', 'yes');


CREATE TABLE tbl_order (
  id int NOT NULL,
  food varchar(200) NOT NULL,
  price decimal(20,0) NOT NULL,
  qty int NOT NULL,
  local decimal(20,0) NOT NULL,
  order_date datetime NOT NULL,
  status varchar(200) NOT NULL,
  customer_name varchar(200) NOT NULL,
  customer_contact int  NOT NULL,
  customer_email varchar(200) NOT NULL,
  customer_address varchar(200) NOT NULL
)

INSERT INTO tbl_order
VALUES
(1, 'cake', '23', 1, '23', '2021-04-11 05:24:37', 'Delivered', 'wertyu', 1234567, 'afsana.sinthi@gmail.com', 'asdfghdfgjhk/jl.'),
(2, 'Pizza', '400', 1, '400', '2021-04-11 06:06:30', 'Ordered', 'abir', 1987465477, 'abir@gmail.com', '762/9 Monipur, Mirpur, Dhaka - 1216, Bangladesh.'),
(3, 'BBQ Chicken', '150', 3, '450', '2021-04-26 01:48:59', 'Delivered', 'kaif', 1877777777, 'kaif@gmail.com', '22 kafrul dhaka');

--select * from tbl_order


CREATE TABLE users(
  id int  NOT NULL,
  username varchar(200) NOT NULL,
  password varchar(200) NOT NULL
) 


INSERT INTO users
VALUES
(1, 'hredoy', '1234'),
(2, 'sinthia', '1234'),
(3, 'naser', '1234');

--select * from users


















