-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql6.freesqldatabase.com
-- Generation Time: Dec 01, 2021 at 02:15 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql6455275`
--

-- --------------------------------------------------------

--
-- Table structure for table `AspNetRoleClaims`
--

CREATE TABLE `AspNetRoleClaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(767) NOT NULL,
  `ClaimType` text,
  `ClaimValue` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetRoles`
--

CREATE TABLE `AspNetRoles` (
  `Id` varchar(767) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserClaims`
--

CREATE TABLE `AspNetUserClaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(767) NOT NULL,
  `ClaimType` text,
  `ClaimValue` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserLogins`
--

CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` text,
  `UserId` varchar(767) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserRoles`
--

CREATE TABLE `AspNetUserRoles` (
  `UserId` varchar(767) NOT NULL,
  `RoleId` varchar(767) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUsers`
--

CREATE TABLE `AspNetUsers` (
  `Id` varchar(767) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` text,
  `SecurityStamp` text,
  `ConcurrencyStamp` text,
  `PhoneNumber` text,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` timestamp NULL DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AspNetUsers`
--

INSERT INTO `AspNetUsers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('3ea46a30-bc36-43e2-a769-3f5207765704', 'duvan11', 'DUVAN11', 'duvan11@gmail.com', 'DUVAN11@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEMlrTb9Ld7rHfiKa4W+RLZI27njrbjf2dCMDb9vDLfy3AiNyjJ5sbLgbI/NGswm75Q==', 'UGFIDROEY6ESLWKTH42UEGCNSRV6LZW5', '04ca217d-2619-4e5b-8ddf-fe7fe94f0fbb', NULL, 0, 0, NULL, 1, 0),
('7784e097-6636-4355-b723-fa42db65e2b1', 'duvan', 'DUVAN', 'duvan@gmail.com', 'DUVAN@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEDeItIYLlfQ24tonrmDe13qP3opPeQsBP8YZr+P1m/TkkPBxGhOif7b+YXRXc8Mptw==', 'SN7T3KVN7HS6JZRXDHK6ZVW427LEDEIW', '388e8947-7e98-4055-9617-7db57e03e7ec', NULL, 0, 0, NULL, 1, 0),
('8609e280-25bb-4152-9d1c-fdc8324fc72e', 'daffie', 'DAFFIE', 'daffie@gmail.com', 'DAFFIE@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEL/7wJcBF3uZf0eF5EnHZDE90wYGtrw0oqwRUXUgKFDqsD1RNyGDHijZkYQWxrM7cA==', '63XIFTASFADRA2LDIFJ7GRYJVRSF7UCN', '142adb13-8a73-4932-8e09-e91eb2d1b0b0', NULL, 0, 0, NULL, 1, 0),
('a54727f3-2c39-4353-9912-091b2be6ed3f', 'daff', 'DAFF', 'daff@gmail.com', 'DAFF@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAENuUFGftU6hIzC6Nmb6pUiw2l42QuCHzsIBSuzb4RQMPPncAyotNycMUMJkSdiQYUA==', 'MH5IEKMLSPGD6FGPQQAW3QGHWOEBPZJL', 'fd262f08-ddea-4816-b6b8-c2a100144598', NULL, 0, 0, NULL, 1, 0),
('cac4d77a-dcae-438d-813d-7c83c72f3c71', 'FARISTEST', 'FARISTEST', 'faris@example.com', 'FARIS@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAEKBYMgzVhpkdtMMjO8IYKc1CH3NvfYUujq3fib1m6lgEJCXXG5qe49mI2ENt+/itVA==', 'PJ747STETOM3TZ3CI52RGZKB2JI63MXH', 'ef42b61b-10a8-4df4-b806-20833b18073e', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserTokens`
--

CREATE TABLE `AspNetUserTokens` (
  `UserId` varchar(767) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE `Items` (
  `Id` int(11) NOT NULL,
  `cardOwnerName` text,
  `cardNumber` text,
  `expirationDate` text,
  `securityCode` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Items`
--

INSERT INTO `Items` (`Id`, `cardOwnerName`, `cardNumber`, `expirationDate`, `securityCode`) VALUES
(1, 'Duvan', '123fff', '2020-11-10', '1n1dj'),
(3, 'Daffies', 'lsdfka234', '2021-11-10', 'dd1n1dj'),
(5, 'David', 'lsdfka234', '2021-11-10', 'dd1n1dj'),
(7, 'Ilhamsss', 'no123', '2021-11-11', 'dd1n1dj'),
(10, 'Destrammzzz', 'no123', '2021-11-11', 'dd1n1dj'),
(11, 'Bulbasour', 'xxxx1341', '2020-09-08', 'quiwreiuq');

-- --------------------------------------------------------

--
-- Table structure for table `RefreshTokens`
--

CREATE TABLE `RefreshTokens` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(767) DEFAULT NULL,
  `Token` text,
  `JwtId` text,
  `IsUsed` tinyint(1) NOT NULL,
  `IsRevorked` tinyint(1) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `ExpiryDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RefreshTokens`
--

INSERT INTO `RefreshTokens` (`Id`, `UserId`, `Token`, `JwtId`, `IsUsed`, `IsRevorked`, `AddedDate`, `ExpiryDate`) VALUES
(1, '3ea46a30-bc36-43e2-a769-3f5207765704', 'DCPDSQLUPTPLVXHJAGOBUTBITREIKEYXZRN01b557f3-d83d-4614-bf65-1152bfb78846', '3c6aeb42-7e54-4f1d-a4c7-266ce83a6d27', 0, 0, '2021-11-30 17:04:33', '2022-05-30 17:04:33'),
(2, '3ea46a30-bc36-43e2-a769-3f5207765704', 'RUAHUPTZMYOJPJTUMPWEZOJQQAUCFGFIHDZeac5d8d0-e06d-4449-a39f-30976c24df3c', 'ba4f9d46-813e-4b3d-b737-47bded07dedd', 0, 0, '2021-11-30 17:05:20', '2022-05-30 17:05:20'),
(3, 'a54727f3-2c39-4353-9912-091b2be6ed3f', 'JYMPMXUGLTZOIRZBZBELFKZPURTZTSKDVAJ0f025097-c179-4d14-a744-6faec4e15c7c', '6f4aa31d-575c-4d40-8f22-00a6d87987a3', 0, 0, '2021-11-30 17:54:23', '2022-05-30 17:54:23'),
(4, 'a54727f3-2c39-4353-9912-091b2be6ed3f', 'HYALTWKSHYNBEHFWWVCSRHISOIRCNBUFUZHf842cfb9-bbbb-421d-a454-f8a4c693ee26', '5b1dd58d-a0e0-4de4-a43c-9582fc658baf', 0, 0, '2021-11-30 17:55:00', '2022-05-30 17:55:00'),
(5, '7784e097-6636-4355-b723-fa42db65e2b1', 'QKHKSCYEWYCAVRGBAJBKQLECFJNJGBFIXWL42680cf7-b08d-4d67-a717-c0a3004a4b6b', '42a77911-0451-4379-b7af-e8cfb7a837b0', 0, 0, '2021-12-01 01:32:16', '2022-06-01 01:32:16'),
(6, '7784e097-6636-4355-b723-fa42db65e2b1', 'VHOSURMBFAPAKHGCWVEXVSFRLAWAWAVRBSBee6bb9aa-1650-472e-9158-39d67b6bb9cc', 'd0b2e9dd-316d-4d7c-9119-dcbe6d940b1c', 0, 0, '2021-12-01 01:32:29', '2022-06-01 01:32:29'),
(7, '7784e097-6636-4355-b723-fa42db65e2b1', 'ZFRFIZNFSNFEBELGAOIMTMZBIQVWELCEZQK077d87b3-1116-4e22-9c65-8f613f9200bf', 'eb34142c-50fa-4451-b83f-ca00c22d51dc', 0, 0, '2021-12-01 02:33:22', '2022-06-01 02:33:22'),
(8, '7784e097-6636-4355-b723-fa42db65e2b1', 'QIGLEQSFBAFBRIDBQPYAQIMJIWXGQWWQLWA5bb54157-8997-4658-b68b-75b70148f721', '4aadb2ca-b260-45e8-982b-260a8c82a96c', 0, 0, '2021-12-01 02:37:50', '2022-06-01 02:37:50'),
(9, 'cac4d77a-dcae-438d-813d-7c83c72f3c71', 'UWXZKMDAWGXDRLUXAYUAHMCBPDLWEUDXZJM509bd428-3dcb-4ccf-a4ba-963b752590b5', '7d538501-1352-4778-94ce-f9f853f2dec5', 0, 0, '2021-12-01 02:44:37', '2022-06-01 02:44:37'),
(10, '7784e097-6636-4355-b723-fa42db65e2b1', 'QNKWVBZEEJXUKGNAMPRTGYDLEQHQBVGOGJYb6820a66-bbb8-4a7c-99d0-ff19e48ec383', 'ff316965-7770-4d1d-9e53-015e7795136b', 0, 0, '2021-12-01 03:15:53', '2022-06-01 03:15:53'),
(11, '7784e097-6636-4355-b723-fa42db65e2b1', 'WIZDRZIQQWRJDHOSNXQBQZYNTKVOCTOORIQa67d1280-38e0-4499-ae02-58f73447da94', '855a6837-45a1-41a1-b28d-9291f23d8399', 0, 0, '2021-12-01 03:19:54', '2022-06-01 03:19:54'),
(12, '7784e097-6636-4355-b723-fa42db65e2b1', 'GTHTGVPGNBBYHICOCNAQFAEDVVFURJWXDLG78aba178-328e-4fe0-bee3-a2fc401f9ec4', 'e77b08ae-82ba-4f83-a731-345cf1fe90c4', 0, 0, '2021-12-01 03:33:04', '2022-06-01 03:33:04'),
(13, '7784e097-6636-4355-b723-fa42db65e2b1', 'ZWAJDPGIZKATAJTVNRAZZGDCAPKIJSAFKOH2419852b-8332-40da-9f55-5964811fceda', 'eacf2937-638e-4a7b-b25f-65fb965184e4', 0, 0, '2021-12-01 04:37:00', '2022-06-01 04:37:00'),
(14, '7784e097-6636-4355-b723-fa42db65e2b1', 'BAFDBCHTCHRVCXPLBGPWNDWQJAWBWNMONMBb0796743-2866-499c-ad73-7c8fc783caf7', '27779b5a-219a-45fb-ac91-c84c3b1183e2', 0, 0, '2021-12-01 06:57:01', '2022-06-01 06:57:01'),
(15, '7784e097-6636-4355-b723-fa42db65e2b1', 'ZSKLHBMRNLWIERZZVOHXNSGTUJVYOELGMHV1bc5f1da-282e-4547-a557-38575085da63', 'f2d08e4f-8055-4599-adf5-80c9515038dc', 0, 0, '2021-12-01 07:26:44', '2022-06-01 07:26:44'),
(16, '7784e097-6636-4355-b723-fa42db65e2b1', 'NFSMFWSASVTTXACGCBLEOCQKRQQPMXDWWTJa8978e62-3996-4685-bbbc-be52dc5cf661', '26543a39-5571-4415-b2c0-21ceadf8a09a', 0, 0, '2021-12-01 07:27:59', '2022-06-01 07:27:59'),
(17, '7784e097-6636-4355-b723-fa42db65e2b1', 'AZUNJSQJKEGZHLTVXNFHJEMFSTFBYKXSZRG441f66df-4c4f-4310-9dee-60e8697aef23', '859ee7f6-65e2-4dd6-aa94-4026931458df', 0, 0, '2021-12-01 07:44:44', '2022-06-01 07:44:44'),
(18, '7784e097-6636-4355-b723-fa42db65e2b1', 'BMVJKNHNBSOGKGSXPSTRJJZVOCRWGRTVWAG4ba77715-154d-4208-bc03-fba6a1b0f636', '9a7bc0fc-96eb-4aa5-b87f-31185ffaa174', 0, 0, '2021-12-01 13:46:13', '2022-06-01 13:46:13'),
(19, '8609e280-25bb-4152-9d1c-fdc8324fc72e', 'TNKWNEHJYNITQYXPEAMPGMBZCQWBCTESTMOacd750c9-7bc6-448c-bdfe-54e7bda34665', '871155c5-f1a0-4dc0-bb2c-af82cc02f2fe', 0, 0, '2021-12-01 13:48:47', '2022-06-01 13:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `__EFMigrationsHistory`
--

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
('20211130170138_Added refresh token table', '5.0.12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetRoles`
--
ALTER TABLE `AspNetRoles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetUsers`
--
ALTER TABLE `AspNetUsers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_RefreshTokens_UserId` (`UserId`);

--
-- Indexes for table `__EFMigrationsHistory`
--
ALTER TABLE `__EFMigrationsHistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Items`
--
ALTER TABLE `Items`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  ADD CONSTRAINT `FK_RefreshTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
