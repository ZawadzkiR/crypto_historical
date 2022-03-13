# crypto_historical_data
function to download historical quotes of cryptocurrencies


requirements:
install.packages('rvest')

Examples:

getdata(crypto='bitcoin', start_date='2011-01-01', end_date='2021-04-21')

getdata(crypto='ethereum', start_date='2019-01-01', end_date='2021-06-30')


cryptocurrency names should be taken from coingecko links e.g https://www.coingecko.com/en/coins/<b>ethereum</b>
