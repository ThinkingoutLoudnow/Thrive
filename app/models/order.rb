class Order < ApplicationRecord
  belongs_to: product
  belong_to: user
end
