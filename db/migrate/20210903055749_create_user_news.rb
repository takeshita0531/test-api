class CreateUserNews < ActiveRecord::Migration[5.0]
  def change
    create_table :user_news do |t|
      t.string :name
      t.string :pwd
      t.string :token

      t.timestamps
    end
    add_index :user_news, :token, unique: true
  end
end
