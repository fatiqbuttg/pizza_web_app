class LineItem < ApplicationRecord
    belongs_to :item
    belongs_to :order
    belongs_to :addon, optional: :true
    belongs_to :cart
end
