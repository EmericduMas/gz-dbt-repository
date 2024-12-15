with 

source as (

    select * from {{ source('gz_raw_data', 'raw_ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        log_cost,
        CAST(ship_cost AS INT64) AS ship_cost

    from source

)

select * from renamed

