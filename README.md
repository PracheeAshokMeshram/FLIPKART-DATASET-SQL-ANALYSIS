📊 Flipkart Mobile Data Analysis

This project analyzes mobile phone data from Flipkart using MySQL. The dataset contains details such as brand, price, discount, ratings, and reviews. Various SQL queries are used to extract insights about pricing, discounts, ratings, and popularity of different brands.

📂 Project Files

flipkart_mobiles.csv → Dataset containing mobile phone details (brand, price, discount, rating, reviews, etc.)

FLipkarts my Project.sql → SQL queries for analysis

Screenshots → Query execution and results (flipkart ss.png, flipkart ss (3).png, flipkart ss (4).png, flipkart ss (5).png)

🔍 Analysis Performed
1. Price Distribution by Brand

Query groups mobiles into different price ranges:

Below ₹10k

₹10k – ₹20k

₹20k – ₹40k

Above ₹40k

select brand,
sum(case when mrp between 0 and 9999 then 1 else 0 end ) as 'Price Below 10k',
sum(case when mrp between 10000 and 19999 then 1 else 0 end ) as 'Price Between 10k-20k',
sum(case when mrp between 20000 and 39999 then 1 else 0 end ) as 'Price Between 20-40k',
sum(case when mrp >= 40000 then 1 else 0 end ) as 'Price Above 40k'
from mobiles group by Brand order by Brand;

2. Brand with the Highest Discount
select Brand, Max(MRP-MSP) as maxdiscount 
from mobiles 
group by Brand 
order by MaxDiscount desc limit 1;

3. Top 5 Brands by Average Rating
select brand, avg(ratings) as avg_rating 
from mobiles 
group by brand 
order by avg_rating desc limit 5;

4. Top 5 Brands by Number of Reviews
select brand, sum(no_of_reviews) as total_reviews 
from mobiles 
group by brand 
order by total_reviews desc limit 5;

5. Products with High Ratings & Discounts

Mobiles with rating > 4.5

Mobiles with discount > 40%

select * from mobiles where Ratings > 4.5;
select * from mobiles where Discount > 40;

6. Brand-wise Avg Rating & Reviews
select Brand, avg(Ratings) as avg_Rating, sum(no_of_reviews) as total_reviews 
from mobiles 
group by Brand 
order by avg_rating desc;

📸 Sample Results

Screenshots from MySQL Workbench show query execution and outputs:

Price distribution by brand

Brand with highest discount (Samsung had ₹35,000 discount)

Top 5 brands by rating (Apple, Realme, Vivo, Oppo, Google)

Review counts per brand

🚀 How to Run

Import flipkart_mobiles.csv into your MySQL database.

Run the queries from FLipkarts my Project.sql.

Use MySQL Workbench to visualize results.

📈 Insights

Samsung offered the highest discount (~₹35,000).

Apple had the highest average rating (~4.95).

Realme and Samsung had the most reviews, indicating high popularity.

Most mobiles were priced between ₹10k – ₹20k.

🛠️ Tools Used

MySQL Workbench (SQL queries, visualization)

CSV dataset (mobile data from Flipkart)

GitHub (project documentation & version control)

👨‍💻 Author

👨‍💻 Author

Prachee A. Meshram
📧 prachee.ajm20@gmail.com
🌐 https://github.com/PracheeAshokMeshram
