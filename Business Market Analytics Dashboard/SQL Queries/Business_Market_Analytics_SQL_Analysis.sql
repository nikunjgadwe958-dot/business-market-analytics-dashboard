use coworking;

-- Average Customer Rating
SELECT ROUND(AVG(rating),2) AS avg_rating
FROM coworking_cleaned
WHERE rating > 0;

-- Total Customer Reviews
SELECT SUM(reviews) AS total_reviews
FROM coworking_cleaned;

-- Market Structure
SELECT main_category, count(*) as total_locations
FROM coworking_cleaned 
GROUP BY main_category
ORDER BY total_locations;

-- Top Competitors
SELECT name, rating, reviews
FROM coworking_cleaned
ORDER BY reviews DESC; 

-- Total Agencies
SELECT count(*) AS total_agencies
FROM marketing_cleaned; 

-- Top Marketing Agencies
SELECT name, rating, reviews 
FROM marketing_cleaned
ORDER BY reviews DESC
LIMIT 10;

SELECT main_category, count(*) AS total_agencies
FROM marketing_cleaned 
GROUP BY main_category
ORDER BY total_agencies DESC;