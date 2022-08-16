# Homework for basic R in Hello World bootcamp
# 1.creating dataframe 
## 1.1 dataframe 01 as customer_info
customer_info <- data.frame(
  cus_ID = 1:8 ,
  cus_firstname = c("Eren","Leonie", "Helena","Astrid", "Daan","Marin","Peter",  "Maddie"  )      ,
  cus_lastname =  c("Yeager" ,"Kamer" , "Holz" ,  "Grubber" ,"Peeters" ,"Kitagawa" ,"Parker" ,"Jane" )  ,
  cus_country = c("Thailand","Thailand","Austria","Austria", "Belgium",  "Japan",  "North Korea","North Korea") ,
  membership = c("No","Yes","No","No","No","No","Yes","No")
)
## 1.2 dataframe 02 as invoices

invoices <- data.frame(
  inv_ID = 1:13,
  total_cost = c(490,400,200,280,120,395,845,160,200,660,640,320,920)  ,
  cus_ID = c(1,2,3,4,5,6,7,8, 3,6,7,6,7)
)

# 2. Merge Dataframe (join) 
# by naming as customer_merged
customer_merged <- merge(customer_info, invoices)

# 3. Subset & calculate
## 3.1 Subset
(cus_thai <- subset(customer_merged,cus_country == "Thailand" ,
                    c(cus_firstname , cus_country, total_cost)
)
)

## 3.2 Calculate
### finding the number of thai customers 
(No_of_Thai <- sum(customer_merged$cus_country == "Thailand") )

### finding the max/min mean of money_spending per time
( max_per_time <- max(customer_merged$total_cost ,    na.rm = TRUE)  ) 
( min_per_time <- min(customer_merged$total_cost ,    na.rm = TRUE)  )
( mean_per_time <- mean(customer_merged$total_cost ,  na.rm = TRUE)  )
( med_per_time <- median(customer_merged$total_cost ,  na.rm = TRUE)  )

( all_stat <- data.frame(thai_people = No_of_Thai ,
                         max_spending = max_per_time,
                         min_spending = min_per_time,
                         mean_spending = mean_per_time,
                         med_spending = med_per_time )
)

# 4. export completed data to csv file
# 4.1 first data after be merged
write.csv(customer_merged, "customer_merged.csv")
# 4.2 stat info
write.csv(all_stat, "all_stat.csv")  
