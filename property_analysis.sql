USE jakua;

-- =====================================================
-- UK PROPERTY DATA: EXPLORATORY ANALYSIS
-- =====================================================


-- =====================================================
-- 1. DATASET OVERVIEW
-- =====================================================

-- Total number of records
SELECT 
    COUNT(*) AS total_rows
FROM sale;


-- =====================================================
-- 2. PROPERTY TYPE DISTRIBUTION
-- =====================================================

SELECT 
    property_type,
    COUNT(*) AS total_properties
FROM sale
GROUP BY property_type
ORDER BY total_properties DESC;


-- =====================================================
-- 3. AVERAGE PRICE BY PROPERTY TYPE
-- =====================================================

SELECT 
    property_type,
    ROUND(AVG(latest_price), 2) AS avg_price
FROM sale
GROUP BY property_type
ORDER BY avg_price DESC;


-- =====================================================
-- 4. BEDROOM DISTRIBUTION
-- =====================================================

SELECT 
    bedrooms,
    COUNT(*) AS total_properties
FROM sale
GROUP BY bedrooms
ORDER BY bedrooms;


-- =====================================================
-- 5. PROPERTY TYPE × BEDROOM SEGMENTATION
-- =====================================================

SELECT 
    property_type,
    bedrooms,
    COUNT(*) AS total_properties,
    ROUND(AVG(latest_price), 2) AS average_price
FROM sale
GROUP BY property_type, bedrooms
ORDER BY bedrooms, average_price DESC;


-- =====================================================
-- 6. PRICE RANKING BY BEDROOM SEGMENT
-- =====================================================

SELECT 
    property_type,
    bedrooms,
    COUNT(*) AS total_properties,
    ROUND(AVG(latest_price), 2) AS average_price,
    RANK() OVER (
        PARTITION BY bedrooms 
        ORDER BY AVG(latest_price) DESC
    ) AS price_rank
FROM sale
GROUP BY property_type, bedrooms
ORDER BY bedrooms, price_rank;


-- =====================================================
-- 7. NEW BUILD vs OLD BUILD ANALYSIS
-- =====================================================

SELECT 
    property_type,
    CASE 
        WHEN new_build = 1 THEN 'New Build'
        ELSE 'Old Build'
    END AS build_type,
    COUNT(*) AS total_properties,
    ROUND(AVG(latest_price), 2) AS average_price
FROM sale
GROUP BY property_type, build_type
ORDER BY property_type, average_price DESC;


-- =====================================================
-- 8. TENURE IMPACT ANALYSIS
-- =====================================================

SELECT 
    tenure,
    bedrooms,
    COUNT(*) AS total_properties,
    ROUND(AVG(latest_price), 2) AS average_price
FROM sale
GROUP BY tenure, bedrooms
ORDER BY bedrooms, average_price DESC;