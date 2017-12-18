class CustomerDetail < ApplicationRecord
  # CustomerDetail hits our Postgres materialized view
  self.primary_key = 'customer_id'
end