class CreateCaos < ActiveRecord::Migration[7.0]
  def change
    create_table :caos do |t|
      t.string :nome, null: false
      t.string :raca, null: false
      t.string :nome_pai
      t.string :nome_propr, null: false

      t.timestamps
    end
  end
end
