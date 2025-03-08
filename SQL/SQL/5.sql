SELECT Gender, SUM(Likes) as Total_Likes
FROM user_data
 GROUP BY Gender;