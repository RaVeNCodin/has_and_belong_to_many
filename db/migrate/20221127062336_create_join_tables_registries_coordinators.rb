class CreateJoinTablesRegistriesCoordinators < ActiveRecord::Migration[7.0]
  def change
    create_join_table :registries, :coordinators do |t|
     t.index [:registry_id, :coordinator_id]
     t.index [:coordinator_id, :registry_id]
     t.integer :registry_id, null: false
     t.integer :coordinators_id, null: false
    end
  end
end
