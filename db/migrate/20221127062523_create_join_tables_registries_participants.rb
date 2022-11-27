class CreateJoinTablesRegistriesParticipants < ActiveRecord::Migration[7.0]
  def change
    create_join_table :registries, :participants do |t|
      t.index [:registry_id, :participant_id]
       t.index [:participant_id, :registry_id]
      t.integer :registry_id, null: false
      t.integer :participant_id, null: false
    end
  end
end
