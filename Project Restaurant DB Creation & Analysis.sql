-- 01create table employee--

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
