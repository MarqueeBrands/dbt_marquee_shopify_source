
with base as (

    select * 
    from {{ ref('stg_shopify__abandoned_checkout_discount_code_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_shopify__abandoned_checkout_discount_code_tmp')),
                staging_columns=get_abandoned_checkout_discount_code_columns()
            )
        }}
        , row_number() over(partition by checkout_id, discount_id order by index desc) as n
    from base
),

final as (
    
    select 
        checkout_id,
        code,
        discount_id,
        index,
        amount,
        type,
        created_at,
        updated_at,
        _fivetran_synced

    from fields
    where n = 1
)

select *
from final
