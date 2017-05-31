class CreateRestaurantes < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurantes do |t|
      t.string :nome
      t.string :endereco
      t.string :especialidade

      t.timestamps
    end
  end
end
