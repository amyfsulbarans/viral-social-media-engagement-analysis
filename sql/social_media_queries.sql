-- =========================================
-- SOCIAL MEDIA ENGAGEMENT ANALYSIS
-- =========================================

-- 1. Platform Performance

SELECT 
    platform,
    COUNT(post_id) AS total_posts,
    AVG(views) AS avg_views,
    AVG(likes) AS avg_likes,
    AVG(shares) AS avg_shares,
    AVG(comments) AS avg_comments,
    AVG(likes + shares + comments) AS avg_total_engagement
FROM social_media
GROUP BY platform
ORDER BY avg_total_engagement DESC;

-- =========================================

-- 2. Content Type Performance

SELECT 
    content_type,
    COUNT(post_id) AS total_posts,
    AVG(views) AS avg_views,
    AVG(likes + shares + comments) AS avg_total_engagement
FROM social_media
GROUP BY content_type
ORDER BY avg_total_engagement DESC;

-- =========================================

-- 3. Top Hashtags by Views

SELECT 
    hashtag,
    COUNT(post_id) AS total_posts,
    SUM(views) AS total_views,
    SUM(likes) AS total_likes,
    SUM(shares) AS total_shares,
    SUM(comments) AS total_comments
FROM social_media
GROUP BY hashtag
ORDER BY total_views DESC
LIMIT 10;

-- =========================================

-- 4. Region Performance

SELECT 
    region,
    COUNT(post_id) AS total_posts,
    AVG(views) AS avg_views,
    AVG(likes + shares + comments) AS avg_total_engagement
FROM social_media
GROUP BY region
ORDER BY avg_total_engagement DESC;

-- =========================================

-- 5. Engagement Level Distribution

SELECT 
    engagement_level,
    COUNT(*) AS total_posts
FROM social_media
GROUP BY engagement_level
ORDER BY total_posts DESC;
