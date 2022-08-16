--01create table employee--

create TABLE employees(
       emID int not NULL UNIQUE PRIMARY key,
       firstname text not NULL ,
       lastname text not NULL,
       gender text not NULL,
       email text ,
       position text NOT NULL,
       salary int NOT NULL,
       reportto int ,
       startdate text ,
       lastdate text ,
       status text
);

INSERT into employees VALUES


    (1,  "Andrew",     "Adams",      "Male",    "Andrew_adam@tastemcu.com",        "MD/Owner"        ,    50000,    null ,   "2-May-2021"   , null,         "employed"),
    (2,   "Nancy",      "Chen",      "Female",  "Nancy_chen@tastemcu.com",         "branch Manager" ,     35000 ,     1  ,   "2-Jul-2021"   , null,         "emoloyed"),
    (3,   "Jane",      "Peacock",    "Female",  "Jane_peacock@tastemcu.com",       "Senior chef"    ,     35000 ,     2  ,   "2-Jul-2021"   , null,         "emoloyed"),
    (4,  "Alexandra",  "Peacock",    "Female",  "Alexandra_peacock@tastemcu.com",  "Chef"           ,     25000 ,     3  ,   "2-Jul-2021"   , "2-Aug-2021" , "Resigned"),
    (5,  "Alexis",     "Peacock",    "Male",  "Alexis_peacock@tastemcu.com",    "Waiter/Waitress"   ,     16000 ,     2  ,   "3-Jun-2021"   ,  null,         "employed"),
    (6,  "Bruce",      "Wayne",       "Male",  "Bruce_wayne@tastemcu.com",      "Waiter/Waitress"   ,     16000 ,     2  ,   "3-Jun-2021"   ,  null,         "employed"),
    (7,  "Tony",      "Stark",        "Male",  "Tony_stark@tastemcu.com",          "Dish washer"     ,    16000 ,      2  ,   "3-Sep-2021"   ,  null,         "employed"),
    (8,  "Sophia",     "Jeoh",      "Female",  "Sophia_Jeoh@tastemcu.com",         "Cashier",            16000 ,     2  ,    "3-Jun-2021"   ,  null,         "employed"),
    (9 , "Sombat" ,   "Jaidee" ,      "Male"  ,           NULL             ,        "Cashier"  ,         18000 ,     2  ,       null       ,  null ,         "Resigned");
    
--02create table menu

create TABLE menus(
       MenuID int not NULL UNIQUE PRIMARY key,
       Menu_name text not NULL ,
       unit_price int not NULL,
       Ready_for_order text not null,
       Est_time_Minute int ,
       SetKcal int,
       Category text
  );
  
  INSERT into menus VALUES

    (1,  "Fried rice with shrimp"          ,  200 ,   "Ready"   ,    15  , 595, "Main Dish"),
    (2,  "Fried rice with Chinese Sausage" ,  170 ,   "Ready"   ,    15 ,  590, "Main Dish"),
    (3,  "Steamed rice"                    ,   20 ,   "Ready"   ,     5  ,  100, " Main Dish"),
    (4,   "Fried Egg"                      ,   20 ,    "Ready"  ,     8 ,   215, "Main Dish"),
    (5,   "Gyoza"                          , 120 ,    "Ready"  ,    25 ,   450, "Main Dish"),
    (6,   "fish maw soup"                  , 150 ,    "Ready"  ,     7 ,   150, "Main Dish"),
    (7,   "Stirred chicken with ginger"    , 120 ,    "Ready"  ,    10,    200, "Main Dish"),
    (8,   "fried chicken"                  , 120 ,    "Ready"  ,    10,    500, "Main Dish"),
    (9,   "rice porridge with pork"         , 95 ,    "Ready"  ,     10 ,  160, "Main Dish"),
    (10,   "Mashed Potato"                 , 120 ,     "Ready" ,     25 ,  350,     "snack"),
    (11,   "Cola Cola "                     , 60  ,   "Ready"  ,      5 ,   115,    "drinks"),
    (12,   "crafted Beer KANOKSIAM"         , 170  ,     "Ready"  ,      5 ,   155,   "drinks"),
    (13,   "French fries"                   , 120 ,    "Ready"  ,    15 ,   450,    "snack"),
    (14,   "Homemade Orange juice"           , 75 ,    "Ready"  ,    10 ,   160,   "drinks"),
    (15,   "ice cream sundae (strawberry)"   ,110 ,    "Ready"  ,     8 ,   270, "dessert"),
    (16,   "ice cream sundae (vanilla)"     , 110 ,    "Ready"  ,     8 ,   270,  "dessert"),
    (17,   "T-bone steak"                   , 400 ,     "Out"   ,   NULL, NULL ,  "Main Dish" );

--03 customer table

--create table customer

  create TABLE customers(
       CustomerID int not NULL UNIQUE PRIMARY key,
       firstname text not NULL ,
       lastname text not NULL,
       gender text not NULL,
       city text ,
       country text,
       Birthdate date ,
       email text ,
       phone text ,
       membership_status text not null,
       membership start date
   );
   
 INSERT into customers VALUES
 
      (1, "Luís",   "Gonçalves" , "Male" , "Bangkok" , "Thailand" ,         "1994-02-21",   "luisg@embraer.com.br"     , "(+55) (12) 3923-5555"      ,"None", NULL),
     (2, "Leonie" , "Kamer" ,    "Female", "Bangkok" ,"Thailand",          "1990-02-22" ,    NULL                      , NULL                    ,"Yes" , "15-Jan-2022" ),
     (3, "Helena" , "Holz"  ,   " Mall"  ,  NULL      ,"Austria" ,         "1959-01-01",    NULL                      , NULL                    ,"None", NULL),
     (4, "Astrid" , "Grubber" , "Fremen" ,"Bangkok" , "Austria" ,        "1965-07-07" ,"astrid.gruber@apple.at"       ,"+43 01 5134505"          ,"None" , NULL),
     (5, "Daan"   , "Peeters" , "Male"   ,"Brussels", "Belgium" ,         "1984-08-08" ,   "daan_peeters@apple.be"    , "(+32) 02 219 03 03 "       ,"None", NULL),
     (6, "Marin"   ,"Kitagawa" , "Female", "Tokyo"  ,  "Japan" ,          "1999-09-08" ,     NULL                      , NULL                    ,"None" , NULL),
     (7, "Peter" , "Parker"  ,  "Male"   , "Pyongyang" ,"North Korea" ,   "1996-02-23" ,    "peter.pk@avengers.com"     , NULL                    , "Yes" , NULL)  ,
      (8,  "Maddie" , "Jane" ,   "Femala" , "Pyongyang" ,"North Korea" ,   "1996-01-05" ,      NULL                    ,  NULL                  , "None" , NULL)  ;  
      
--04create table invoice_items

create TABLE invoice_items(

       IVInumber int not NULL UNIQUE PRIMARY key ,     --1--

       InvoiceID int not NULL ,                        --2--
       MenuID int not NULL ,                           --3--
       unit_dish int not null
  );
  
  INSERT into invoice_items VALUES

   (1, 1 , 15 , 1),
   (2, 1 , 16 , 1),
   (3, 1 ,  5 , 1),
   (4, 1 ,  6 , 1),

   (5, 2 , 1, 2) ,

   (6, 3 , 1 , 1) ,

   (7, 4 , 2 , 1) ,
   (8, 4 , 16 , 1) ,

   (9, 5 , 10 , 1) ,

   (10, 6 , 1 , 1) ,
   (11, 6 , 5 , 1) ,
   (12, 6 , 14 , 1) ,

   (13 , 7 , 12 , 3) ,
   (14 , 7 , 8 , 2) ,
   (15 , 7 , 17 ,0 ) ,
   (16 , 7 , 9 , 1) ,

   (17, 8 , 3 , 2) ,
   (18, 8 , 7 , 1) ,

   (19, 9 , 3 , 10) ,

   (20 ,10 , 12 ,2),
   (21 ,10 , 12 , 3),
   (22 ,10 , 5 , 1),
   (23 ,10 , 1, 1),

    (24, 11 , 1 , 3) ,
    (25, 11 , 3 , 1) ,
    (26, 11 , 4 , 1) , 

    (27, 12 , 1 , 1) ,
    (28 , 12 ,7 , 1) ,

     (29, 13 ,1 , 2),
     (30 ,13 ,12 ,2) ,
     (31 ,13 , 8 , 2),
     (32, 13 , 13 ,1),
     (33 , 13 , 11,1) ;
--05create table invoice

create TABLE invoices(
       
       InvoiceID int not NULL UNIQUE PRIMARY key , 
       Invoice_date text not NULL ,
       Total_cost int not NULL,
       CustomerID int not NULL
       
          
     
  );
  
  INSERT into invoices VALUES
    
    (1, "01-01-2022 10:00" ,490 , 1),
    (2, "01-01-2022 11:00" , 400 , 2),
    (3, "02-01-2022 10:00" , 200 , 3),
    (4 , "02-01-2022 10:10" , 280 , 4),
    (5, "02-01-2022  11.30" , 120 , 5),
    (6, "02-01-2022  15:00" , 395 , 6),
    (7, "02-01-2022  22:00" , 845 , 7),
    (8 , "03-01-2022  14:00" , 160, 8 ),
    (9 , "04-01-2022  13:52" , 200 , 3) ,
    (10 , "04-01-2022  22:35" ,660,  6) ,
    (11, "05-01-2022 10:03" , 640 , 7),
    (12 , "06-01-2022  10:03", 320 , 6) ,
    (13 , "06-01-2022  22:00" , 920 , 7); 

     


