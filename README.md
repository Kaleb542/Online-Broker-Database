# Online Broker Database

Cryptocurrency and Stock Market Database

## Load Demo

1. Use the SourceCode.sql to create the crypto_and_stock_db database. *Note, this can be done through the MYSQL workbench import feature, or by copying the contents within this file and running as a script.*

#### This will create 3 tables:
- crypto_market_data
- stock_market_data
- user_info


#### This will create 12 views:
- crypto_price_ascending_view
- crypto_price_descending_view
- crypto_rank_ascending_view
- crypto_rank_descending_view
- crypto_symbol_alphabetical_view
- crypto_symbol_reverse_alphabetical_view
- stock_EPS_descending_view
- stock_grossprofit_descending_view
- stock_rank_ascending_view
- stock_rank_descending_view
- stock_symbol_alphabetical_view
- stock_symbol_reverse_alphabetical_view


#### This will create 8 stored procedures:
- 11000_add_crypto_watchlist
- 11000_add_stock_watchlist
- 11000_purchase_crypto
- 11000_purchase_stock
- 11020_add_crypto_watchlist
- 11020_purchase_crypto
- 11030_purchase_stock_
- Reset_DB_For_Demo

<br>

2. Open and run the test-production.sql script to view the functionality of our project. This will automatically call stored views and procedures, which are simulated actions on the users behalf.

#### These simulated actions include:
- Sorting raw data
- Add crypto and stock to respective watchlists
- Purchase crypto and stock which is added/updated within the respective watchlist
- Calculate current ownership totals within watchlists (Quantity and dollar amount)
- Update user account info (total quantity owned for crypto and stocks)




