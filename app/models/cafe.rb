class Cafe < ApplicationRecord
    validates :name, presence: true
    validates :sku, presence: true
    validates :valor_neto_unitario, presence: true
    validates :stock_incial, presence: true
    validates :maquina_sl, presence: true
    validates :maquina_primerpiso, presence: true
    validates :maquina_segundopiso, presence: true
end
