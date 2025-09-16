create database flipkarts;
use flipkarts;
select * from mobiles;
select brand,
sum(case when mrp between 0 and 9999 then 1 else 0 end ) as 'Price Below 10k',
sum(case when mrp between 10000 and 19999 then 1 else 0 end ) as 'Price Between 10k-20k',
sum(case when mrp between 20000 and 39999 then 1 else 0 end ) as 'Price Between 20-40k',
sum(case when mrp >= 40000 then 1 else 0 end ) as 'Price Above 40k'
from mobiles group by Brand order by Brand;

# the brand that has the highest discount price
select Brand, Max(MRP-MSP) as maxdiscount from mobiles group by Brand order by MaxDiscount desc limit 1;

# top 5 brands by avg rating
select brand,avg(ratings) as avg_rating from mobiles group by brand order by avg_rating desc limit 5;

#top 5 brands by total number of reviews
select brand,sum(no_of_reviews) as total_reviews from mobiles group by brand order by total_reviews desc limit 5;

# product with greater than 4.5
select * from mobiles where Ratings > 4.5 ;

# product with  discounts greater than 40%
select * from mobiles where Discount > 40 ;

# avg rating and number of reviews per brand
select Brand , avg(Ratings) as avg_Rating, sum(no_of_reviews) as total_reviews from mobiles group by Brand order by avg_rating desc;

# product with highest discount
select * from mobiles order by discount desc limit 5;

#
select distinct brand from mobiles;