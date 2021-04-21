getdata = function(crypto='bitcoin', start_date='2011-01-01', end_date='2021-04-21'){
  library('rvest')
  webpage = read_html(paste0("https://www.coingecko.com/en/coins/",crypto,
                             "/historical_data/usd?start_date=", start_date,"&end_date=",end_date,"#panel"))
  tbls = html_nodes(webpage, "tr")
  table = tbls %>% html_text()
  rows = gsub(',,',',',gsub(' ','',gsub('.{1}$','\n',gsub('\n',',',gsub('\n\n',',',gsub('\n\n\n',',',
                                                                                        gsub('\\$','',gsub(',', '' ,table))))))))
  to_df = paste(rows, collapse = '')
  df = read.csv(text=to_df)
  df = df[-1,]
  df$Close = as.numeric(df$Close)
  
  return (df)
  
  
}
