class Product < ActiveRecord::Base
  include RailsAdminProduct

  enum discount_type: [:percent, :amount]

  belongs_to :category
  belongs_to :manufacture

  validates :sku, presence: true
  validates :name, presence: true
  validates :price, presence: true
end
