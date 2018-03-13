class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :email
      t.string :state
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
