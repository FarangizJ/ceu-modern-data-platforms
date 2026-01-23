-- created_at: 2026-01-23T10:11:40.440750+00:00
-- finished_at: 2026-01-23T10:11:40.445938+00:00
-- elapsed: 5ms
-- outcome: canceled
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: not available
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

SELECT * FROM AIRBNB.DEV.dim_listings_cleansed l
INNER JOIN AIRBNB.DEV.fct_reviews r
USING (listing_id)
WHERE l.created_at > r.review_date
  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.consistent_created_at.0dc3d99b2e", "profile_name": "airbnb", "target_name": "dev"} */;
