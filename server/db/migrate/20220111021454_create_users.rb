class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :cpf, null: false, uniqueness: true
      t.string :email, null: false

      t.timestamps
    end
  end
end
