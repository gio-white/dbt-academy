select
    order_id,
    sum(amount) as total_amount 
from {{ ref('stg_stripe__payments') }}
group by all
having total_amount < 0
