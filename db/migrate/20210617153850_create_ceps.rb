class CreateCeps < ActiveRecord::Migration[6.1]
  def change
    create_table :ceps do |t|
      t.string :cep
      t.string :logradouro
      t.string :complemento
      t.string :bairro
      t.string :localidade
      t.string :uf
      t.string :ibge
      t.string :gia
      t.string :ddd
      t.string :siafi
      t.timestamps
    end
  end
end
