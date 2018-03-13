class AddIndividualToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_reference :individuals, :organization, index: true
    add_foreign_key :individuals, :organizations
  end
end
