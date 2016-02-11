module RailsAdminProduct
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        field :name
        field :sku
        field :price
        field :category
        field :manufacture
      end

      edit do
        field :name
        field :sku
        field :price
        field :description
        field :product_attributes
        field :specification
        field :discount
        field :discount_type, :enum do
          enum do
            Settings.product.discount_type
          end
        end
        field :image
        field :category
        field :manufacture
      end

      nested do
        configure :order_lines do
          hide
        end
      end
    end
  end
end
