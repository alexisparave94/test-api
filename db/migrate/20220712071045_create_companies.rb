class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :email
      t.string :password_digest
      t.string :token

      t.timestamps
    end
    add_index :companies, :token, unique: true
  end
end
