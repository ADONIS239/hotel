
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(2, 'admin', 'admin@admin.com', 'admin');

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phno` varchar(100) NOT NULL,
  `arrival` date NOT NULL,
  `departure` date NOT NULL,
  `adults` varchar(100) NOT NULL,
  `children` varchar(100) NOT NULL,
  `roomtype` varchar(100) NOT NULL,
  `days` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `paymentid` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `bookingdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `cat` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phno` varchar(100) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `resort_name` varchar(250) NOT NULL,
  `resort_phno` varchar(250) NOT NULL,
  `resort_email` varchar(250) NOT NULL,
  `resort_fb` varchar(250) NOT NULL,
  `resort_insta` varchar(250) NOT NULL,
  `resort_whatsapp` varchar(250) NOT NULL,
  `resort_address` varchar(250) NOT NULL,
  `resort_about` varchar(2500) NOT NULL,
  `resort_features` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `roomname` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `oneline` varchar(100) NOT NULL,
  `comments` varchar(500) NOT NULL,
  `quadity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;
