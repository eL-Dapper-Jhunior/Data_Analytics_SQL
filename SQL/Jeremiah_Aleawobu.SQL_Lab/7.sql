SELECT AVG(Likes) as Avg_Likes
FROM user_data
WHERE Followers > 200
GROUP BY Followers;