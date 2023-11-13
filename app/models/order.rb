class Order < ApplicationRecord
    has_one :cart
    has_many :line_items
    has_many :items, through: :line_items
end
