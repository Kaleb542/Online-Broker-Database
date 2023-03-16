#Create user_info Table
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(11) unsigned NOT NULL,
  `last_name` text NOT NULL,
  `first_name` text NOT NULL,
  `email_address` text NOT NULL,
  `phone_number` text NOT NULL,
  `active` text NOT NULL,
  `last_update_date` text NOT NULL,
  `last_update_time` text NOT NULL,
  `total#_crypto_owned` int(10) unsigned NOT NULL DEFAULT '0',
  `total#_stock_owned` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#Create crypto_market_data Table
CREATE TABLE IF NOT EXISTS `crypto_market_data` (
  `Rank` int(11) unsigned NOT NULL,
  `Name` text NOT NULL,
  `Symbol` varchar(5) NOT NULL,
  `Market Cap` double unsigned NOT NULL,
  `Price` double unsigned NOT NULL,
  `Circulating Supply` text NOT NULL,
  `Volume (24h)` bigint(20) unsigned DEFAULT NULL,
  `% 1h` text,
  `% 24h` text,
  `% 7d` text,
  PRIMARY KEY (`Symbol`),
  UNIQUE KEY `Symbol_UNIQUE` (`Symbol`),
  UNIQUE KEY `Rank_UNIQUE` (`Rank`),
  UNIQUE KEY `Market Cap_UNIQUE` (`Market Cap`),
  KEY `Price_INDEX` (`Price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#Create stock_market_data Table
CREATE TABLE IF NOT EXISTS `stock_market_data` (
  `Rank` int(11) unsigned NOT NULL,
  `Name` text NOT NULL,
  `Symbol` varchar(5) NOT NULL,
  `Price` double unsigned DEFAULT NULL,
  `Revenue` double NOT NULL,
  `Revenue Growth` double NOT NULL,
  `Gross Profit` double NOT NULL,
  `Operating Expenses` double NOT NULL,
  `Earnings before Tax` double NOT NULL,
  `Net Income` double NOT NULL,
  `EPS` double NOT NULL,
  `Net Income Growth` double NOT NULL,
  PRIMARY KEY (`Symbol`),
  UNIQUE KEY `Symbol_UNIQUE` (`Symbol`),
  UNIQUE KEY `Rank_UNIQUE` (`Rank`),
  UNIQUE KEY `Revenue_UNIQUE` (`Revenue`),
  UNIQUE KEY `Price_UNIQUE` (`Price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*
The following opperations are performed by user Darren Curry with UserID 11000:
-Darren is interested in the highest priced cryptocurrencies. He sorts the list of available cryptocurrencies by price. This opperation is performed with the crypto_price_descending_view SQL view.

-After reviewing the results, Darren wants to add these crypto currencies to his watchlist: WBTC, BTC, BTCB, ETH, BCH. Since Darren is a new user and has not previously added any cryptocurrencies to his watchlist, a new and unqiue crypto watchlist table is created for him during item insertion procedure.

-These cryptocurrencies are then inserted into his crypto watchlist by calling the crypto_and_stock_db.11000_add_crypto_watchlist() procedure

-Darren is interested in stocks with the largest gross profit. He sorts the list of available stocks by Gross Profit. This opperation is performed with the stock_grossprofit_descending_view SQL view.

-After reviewing the results, Darren wants to add these stocks to his watchlist: AAPL, AMZN, MSFT, FB. Since Darren is a new user and has not previously added any stocks to his watchlist, a new and unqiue stock watchlist table is created for him during item insertion procedure.

-These stocks are then inserted into the his watchlist by calling the crypto_and_stock_db.11000_add_stock_watchlist() procedure

-Darren then chooses to purchase these choices. This opperation is performed with the crypto_and_stock_db`.`11000_purchase_crypto() and crypto_and_stock_db`.`11000_purchase_stock() procedure. Note, users can make purchases without first adding these items to their watchlist!
*/

#Resets database to begin demo
CALL `crypto_and_stock_db`.`Reset_DB_For_Demo`();

#Sorts the list of available cryptocurrencies by price in descending order
SELECT * FROM `crypto_and_stock_db`.`crypto_price_descending_view`;

#Checks for existing crypto watchlist table, and creates a new one if one is not found
#Values are then inserted into the table
call `crypto_and_stock_db`.`11000_add_crypto_watchlist`();

#Sorts the list of available stocks by gross profit in descending order
SELECT * FROM `crypto_and_stock_db`.`stock_grossprofit_descending_view`;

#Checks for existing stock watchlist table, and creates a new one if one is not found
#Values are then inserted into the table
call `crypto_and_stock_db`.`11000_add_stock_watchlist`();

#Updates values in crypto watchlist and total crypto ownership count in user_info table
CALL `crypto_and_stock_db`.`11000_purchase_crypto`();

#Updates values in stock watchlist and total stock ownership count in user_info table
CALL `crypto_and_stock_db`.`11000_purchase_stock`();


/*
The following opperations are performed by user Marlon Bond with UserID 11020:

-Marlon is interested in the highest ranked cryptocurrencies. He sorts the list of available cryptocurrencies by rank. This opperation is performed with the crypto_and_stock_db.crypto_rank_descending_view SQL view.

-After reviewing the results, Marlon wants to add these crypto currencies to his watchlist: CRO, MANA, EGLD, NEAR, XTZ, HBAR, BTCB, DAI. Since Marlon is a new user and has not previously added any cryptocurrencies to his watchlist, a new and unqiue crypto watchlist table is created for him during item insertion procedure.

-These cryptocurrencies are then inserted into his crypto watchlist by calling the `crypto_and_stock_db`.`11020_add_crypto_watchlist`() procedure

-Marlon then chooses to purchase these choices. This opperation is performed with the crypto_and_stock_db`.`11020_purchase_crypto() procedure. Note, users can make purchases without first adding these items to their watchlist!
*/

#Sorts the list of available cryptos by rank in descending order
SELECT * FROM crypto_and_stock_db.crypto_rank_descending_view;

#Checks for existing crypto watchlist table, and creates a new one if one is not found
#Values are then inserted into the table
CALL `crypto_and_stock_db`.`11020_add_crypto_watchlist`();

#Updates values in crypto watchlist and total crypto ownership count in user_info table
CALL `crypto_and_stock_db`.`11020_purchase_crypto`();


/*
The following opperations are performed by user Odin Sosa with UserID 11030:

-Odin is interested in the stocks with the highest EPS. He sorts the list of available cryptocurrencies by rank. This opperation is performed with the crypto_and_stock_db.stock_EPS_descending_view SQL view.

-After reviewing the results, Marlon wants to add these stocks to his watchlist: CRO, MANA, EGLD, NEAR, XTZ, HBAR, BTCB, DAI. Since Odin is a new user and has not previously added any stocks to his watchlist, a new and unqiue stock watchlist table is created for him during item insertion procedure.

-Marlon then chooses to purchase these choices. This opperation is performed with the crypto_and_stock_db`.`11020_purchase_crypto() procedure.
*/

#Sorts the list of available stocks by EPS in descending order
SELECT * FROM crypto_and_stock_db.stock_EPS_descending_view;

#Updates values in stock watchlist and total stock ownership count in user_info table
CALL `crypto_and_stock_db`.`11030_purchase_stock_`();
