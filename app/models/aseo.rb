class Aseo < ApplicationRecord
    validates :name, presence: true
    validates :sku, presence: true, uniqueness: true
    validates :valor_neto_unitario, presence: true
    validates :stock_inicial, presence: true
end
