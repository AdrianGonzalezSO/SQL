/*        ALL TRANSACTIONS
select * from transactions;
*/

/*        TOTAL AMOUNT OF TRANSACTIONS GOING IN
select sum(money_in) from transactions;
*/

/*        TOTAL AMOUNT OF TRANSACTIONS GOING OUT
select sum(money_out) from transactions;
*/

/*        BITCOIN TRANSACTIONS
select count(money_in) from transactions;
select count(money_in) from transactions where currency='BIT';
*/

/*        TRANSACTIONS
select max(money_in) from transactions;
select max(money_out) from transactions;
*/

/*        AVERAGE MONEY IN
select avg(money_in) from transactions  where currency='ETH';
*/

/*        AVERAGE MONEY GROUP BY DATE
select date, avg(money_in), avg(money_out) from transactions group by date;
*/

/*

*/
select date, round(avg(money_in),2) as 'money in', round(avg(money_out),2) as 'money out' from transactions group by date;














