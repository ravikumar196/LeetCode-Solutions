# Write your MySQL query statement below
SELECT v.Customer_id , count(v.visit_id ) as Count_no_trans
From Visits v
left join Transactions t
on v. visit_id  = t.visit_id 
where t.transaction_id is null
Group by customer_id;

