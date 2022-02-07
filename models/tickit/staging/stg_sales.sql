with sales as (
    select 
        salesid,
        listid,
        sellerid,
        buyerid,
        eventid,
        dateid,
        qtysold,
        pricepaid,
        commision,
        saletime
    from dbt_tlloyd.sales
)

select * from dbt_tlloyd.sales order by salesid