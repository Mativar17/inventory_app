class CreateCaves < ActiveRecord::Migration[6.1]
  def change
    create_table :caves do |t|
      t.string :name
      t.integer :sku
      t.integer :valor_neto_unitario
      t.integer :stock_inicial
      t.integer :maquina_sl
      t.integer :maquina_primerpiso
      t.integer :maquina_segundopiso

      t.timestamps
    end
  end
end
