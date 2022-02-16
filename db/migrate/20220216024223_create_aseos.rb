class CreateAseos < ActiveRecord::Migration[6.1]
  def change
    create_table :aseos do |t|
      t.string :name
      t.integer :sku
      t.integer :valor_neto_unitario
      t.integer :stock_inicial
      t.integer :compra_mes

      t.timestamps
    end
  end
end
