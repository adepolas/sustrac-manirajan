class Order < ActiveRecord::Base
  has_one :product
  belongs_to :client
end
