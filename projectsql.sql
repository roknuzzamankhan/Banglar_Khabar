

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '12345');



CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `short_desc` varchar(250) NOT NULL,
  `long_desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `categories` (`id`, `name`, `short_desc`, `long_desc`) VALUES
(7, 'Chandpur', 'This is a popular category in Chandpur', 'A type of oily fish which is common in Bengali and Oriya cuisines. A very popular fish in Southeast Asia, it is the national fish of Bangladesh. It lays its eggs in large rivers despite being a sea fish and their young are caught while swimming back to the sea since they are the most delicious.'),
(8, 'Dhaka', 'Dhakai Bakarkhani, the traditional food/snack of the people of old Dhaka is famous for its quality and taste. Bakarkhani is mainly dished up with tea. Haji Biriyani (also known as Hajir Biriyani) is the Chevon biryani dish made with highly seasoned rice and goats meat. ... Mejbani Gosht is very popular and famous.'),
(9, 'Barisal', 'Barisal is a rice producing center of Bangladesh. Balam (a kind of basmati) is the most popular rice in Barisal. It is also famous for betel leaf, a typical south Asian chewing item. As Barisal is surrounded by river so fish is plentiful.'),
(10, 'Snacks', ' A snack is a small portion of food eaten between meals.', 'A snack is a small portion of food eaten between meals. This may be a snack food, such as potato chips or baby carrots, but can also simply be a small amount of any food.'),
(11, 'Himalayan Food', 'Nepalese cuisine comprises a variety of cuisines based upon ethnicity, soil and climate relating to Nepal cultural diversity and geography.', 'Much of the cuisine is variation on Asian themes. Other foods have hybrid Tibetan, Indian and Thai origins. They were originally filled with buffalo meat but now also with goat or chicken, as well as vegetarian preparations. Special foods such as sel roti, finni roti and patre are eaten during festivals such as Tihar.');



CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `food` (`id`, `cat_id`, `fname`, `description`) VALUES
(1, 9, 'Ilish', 'I love Ilish very much. Its a Chnadpur Food and Everybody loves it!'),
(7, 7, 'Bakarkhani', 'This is a Dhaka Food. Everybody likes it so damn very much.'),
(8, 8, 'basmati', 'This is a Barisal Food. Everybody likes it so damn very much.'),
(9, 10, 'French Fries', 'This is a Snacks Food. Everybody likes it so damn very much with Tea or Coffee.'),
(10, 11, 'Momos', 'This is a Himalayan Pop Food. Everybody likes it so damn very much. Its comes with different flavors!'),
(11, 8, 'Hakka Noodles', 'This food is so much popular even in India. It tastes like Chowmein but with Gravy. ');



CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `food_id` varchar(10) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `timestamp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `orders` (`id`, `order_id`, `user_id`, `food_id`, `user_name`, `timestamp`) VALUES
(3, 'RSTGF384345', '3', '1', 'Samprit', '04:09:2019 12:02:06am');


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `timestamp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `users` (`id`, `name`, `email`, `password`, `timestamp`) VALUES
(3, 'Mishti Chakraborty', 'mishti@gmail.com', '12345', '06:08:2019 01:40:08am');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;


ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;


ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;


