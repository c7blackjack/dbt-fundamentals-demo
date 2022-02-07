with category as (
    select 
        catid,
        catgroup,
        catname,
        catdesc
    
     from dbt_tlloyd.category
)

select * from dbt_tlloyd.category order by catid