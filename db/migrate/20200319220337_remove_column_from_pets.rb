class RemoveColumnFromPets < ActiveRecord::Migration[5.1]
  def change
    remove_column :pets, :shelter_id, :integer
  end
end
