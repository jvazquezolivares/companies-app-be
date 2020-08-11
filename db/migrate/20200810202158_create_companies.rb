class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.integer :account_id
      t.string :name
      t.string :city
      t.references :parent_company

      t.timestamps
    end
  end
end
