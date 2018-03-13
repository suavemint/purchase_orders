class AddFkToIndividuals < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :individuals, :organizations
  end
end
