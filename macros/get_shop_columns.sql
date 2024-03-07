{% macro get_shop_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "address_1", "datatype": dbt.type_string()},
    {"name": "address_2", "datatype": dbt.type_string()},
    {"name": "checkout_api_supported", "datatype": "boolean"},
    {"name": "city", "datatype": dbt.type_string()},
    {"name": "cookie_consent_level", "datatype": dbt.type_string()},
    {"name": "country", "datatype": dbt.type_string()},
    {"name": "country_code", "datatype": dbt.type_string()},
    {"name": "country_name", "datatype": dbt.type_string()},
    {"name": "county_taxes", "datatype": "boolean"},
    {"name": "created_at", "datatype": dbt.type_timestamp()},
    {"name": "currency", "datatype": dbt.type_string()},
    {"name": "customer_email", "datatype": dbt.type_string()},
    {"name": "domain", "datatype": dbt.type_string()},
    {"name": "eligible_for_card_reader_giveaway", "datatype": "boolean"},
    {"name": "eligible_for_payments", "datatype": "boolean"},
    {"name": "email", "datatype": dbt.type_string()},
    {"name": "enabled_presentment_currencies", "datatype": dbt.type_string()},
    {"name": "google_apps_domain", "datatype": dbt.type_string()},
    {"name": "google_apps_login_enabled", "datatype": "boolean"},
    {"name": "has_discounts", "datatype": "boolean"},
    {"name": "has_gift_cards", "datatype": "boolean"},
    {"name": "has_storefront", "datatype": "boolean"},
    {"name": "iana_timezone", "datatype": dbt.type_string()},
    {"name": "id", "datatype": dbt.type_int()},
    {"name": "latitude", "datatype": dbt.type_float()},
    {"name": "longitude", "datatype": dbt.type_float()},
    {"name": "money_format", "datatype": dbt.type_string()},
    {"name": "money_in_emails_format", "datatype": dbt.type_string()},
    {"name": "money_with_currency_format", "datatype": dbt.type_string()},
    {"name": "money_with_currency_in_emails_format", "datatype": dbt.type_string()},
    {"name": "myshopify_domain", "datatype": dbt.type_string()},
    {"name": "name", "datatype": dbt.type_string()},
    {"name": "password_enabled", "datatype": "boolean"},
    {"name": "phone", "datatype": dbt.type_string()},
    {"name": "plan_display_name", "datatype": dbt.type_string()},
    {"name": "plan_name", "datatype": dbt.type_string()},
    {"name": "pre_launch_enabled", "datatype": "boolean"},
    {"name": "primary_locale", "datatype": dbt.type_string()},
    {"name": "province", "datatype": dbt.type_string()},
    {"name": "province_code", "datatype": dbt.type_string()},
    {"name": "requires_extra_payments_agreement", "datatype": "boolean"},
    {"name": "setup_required", "datatype": "boolean"},
    {"name": "shop_owner", "datatype": dbt.type_string()},
    {"name": "source", "datatype": dbt.type_string()},
    {"name": "tax_shipping", "datatype": "boolean"},
    {"name": "taxes_included", "datatype": "boolean"},
    {"name": "timezone", "datatype": dbt.type_string()},
    {"name": "updated_at", "datatype": dbt.type_timestamp()},
    {"name": "weight_unit", "datatype": dbt.type_string()},
    {"name": "zip", "datatype": dbt.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}