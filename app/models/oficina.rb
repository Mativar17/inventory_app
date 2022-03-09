class Oficina < ApplicationRecord
    validates :name, presence: true
    validates :sku, presence: true
    validates :valor_neto_unitario, presence: true
    validates :compra_mes, presence: true
end
