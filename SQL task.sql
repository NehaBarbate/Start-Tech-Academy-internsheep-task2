Queries in SQL for the following tasks:

1. Create a table named ‘matches’ with appropriate data types for columns

2. Create a table named ‘deliveries’ with appropriate data types for columns

3. Import data from CSV file ’IPL_matches.csv’ attached in resources to ‘matches’

4. Import data from CSV file ’IPL_Ball.csv’ attached in resources to ‘deliveries’

5. Select the top 20 rows of the deliveries table.

6. Select the top 20 rows of the matches table.

7. Fetch data of all the matches played on 2nd May 2013.

8. Fetch data of all the matches where the margin of victory is more than 100 runs.

9. Fetch data of all the matches where the final scores of both teams tied and order it in

descending order of the date.

10. Get the count of cities that have hosted an IPL match.
create database IPL
use IPL
# 1. create table name 'matches' with appropriate data types for columns
create table matches(
id int,
city varchar(30),
_date varchar(15),
player_of_match varchar(30),
venue varchar(60),
neutral_venue int ,
team1 varchar(30),
team2 varchar(30),
toss_winner varchar(30),
toss_decision varchar(30),
winner varchar(30),
result varchar(30),
result_margin int,
eliminator varchar(30),
method varchar(30),
umpire1 varchar(30),
umpire2 varchar(30));


desc matches;

# 2. create a table named 'deliveries' with appropriate data types for columns
create table deliveries(
id int,
inning int,
_over int,
ball int,
batsman varchar(30),
non_striker varchar(30),
bowler varchar(30),
batsman_runs int,
extra_runs int,
total_runs int,
is_wicket int,
dismissal_kind varchar(30),
player_dismissed varchar(30),
fielder varchar(30),
extras_type varchar(30),
batting_team varchar(30),
bowling_team varchar(30));
desc  deliveries



# 3. Import data from CSV file ' IPL_matches.csv' attached in resources to 'matches' 
SET SESSION sql_mode = ''
load data infile 
'C:/IPL_matches (1).csv'
into table matches
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows 

select * from matches

# 4 Import data from CSV file 'IPL_Ball.csv' attached in reasourse to 'deliveries'
select * from deliveries 
select count(*) from deliveries
# 5 select top 20 rows of the deliveries table.
select * from deliveries limit 20;

# 6 select the top 20 rows of matches table
select * from matches limit 20;



# 7 fetch data of all the matches played on 2nd May 2013
select * from matches where _date = '02-05-2013'

# 8 fetch the data of all the matches where the margin of victory is more than 100 rows
select * from matches where result_margin > 100; 


# 9 Fetch data of all the matches where the final scores of both teams tied and order it in descending order of the date.

select * from matches where result= 'tie' order by _date desc;


# 10  Get the count of cities that have hosted an IPL match.
select count(distinct  city) from matches;

