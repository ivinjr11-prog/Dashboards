use project;

/* 1. yearly meeting count*/
select count(meeting_date) as "2019",
(select count(meeting_date)from meeting where right (meeting_date,4)="2020") as "2020"
from meeting where right(meeting_date,4)="2019";


/* 2.No of meeting by account executives*/
select `Account Executive`,count(meeting_date) as meeting  from meeting group by `Account Executive`;

/*3.Stage by revenue*/
select stage,sum(revenue_amount) as revenue from opportunity group by stage;

/*4.Total opportunity count*/
select count(opportunity_name) as oppcount from opportunity where stage in ("Qualify Opportunity","Propose Solution");

/*5.Opp by revenue top 4*/
select opportunity_name,sum(`revenue_amount`) as revenue from opportunity group by opportunity_name order by revenue desc limit 4;

/*6.opn opp top4*/
select opportunity_name,sum(revenue_amount) as revenue from opportunity where stage in("Qualify Opportunity","Propose Solution") 
group by 1 order by 2 limit 4;

/*7.opp product distribution*/
select product_group,count(product_group) as prcount from opportunity
group by 1 order by prcount desc;

/* 8.Cross sell*/

select * from budgets;

/* New Sell*/
select concat(format((sum(amount) + (select sum(amount) from fees where income_class ='New'))/1000000,2),'m') as NAchieved,
concat(format((select sum(amount) from invoice where income_class='New')/1000000,2),'m') as NInvoice,
concat(format((select sum(`New budget`) from budgets)/1000000,2),'m') 
as NTarget from brokerage where income_class='New'; 

/*Renewal*/
select concat(format((sum(amount) + (select sum(amount) from fees where income_class ='Renewal'))/1000000,2),'m') as RAchieved,
concat(format((select sum(amount) from invoice where income_class='Renewal')/1000000,2),'m') as RInvoice,
concat(format((select sum(`Renewal budget`) from budgets)/1000000,2),'m') 
as RTarget from brokerage where income_class='Renewal'; 

