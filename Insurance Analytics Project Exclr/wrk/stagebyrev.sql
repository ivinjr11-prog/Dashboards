use project;
select * from oppur;
select stage,sum(`revenue_amount`) as revenue from oppur group by stage;
