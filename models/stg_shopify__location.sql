
with base as (

    select * 
    from {{ ref('stg_shopify__location_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_shopify__location_tmp')),
                staging_columns=get_location_columns()
            )
        }}
    from base
),

final as (
    
    select 
        id as location_id,
        name,
        _fivetran_deleted as is_deleted,
        active as is_active,
        address_1,
        address_2,
        city,
        country,
        country_code,
        country_name,
        legacy as is_legacy,
        localized_country_name,
        localized_province_name,
        phone,
        province,
        province_code,
        zip,
        created_at,
        updated_at,
        _fivetran_synced

    from fields
)

select *
from final
