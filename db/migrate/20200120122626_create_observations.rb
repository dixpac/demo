class CreateObservations < ActiveRecord::Migration[6.0]
  def change
    create_table :observations do |t|
      t.jsonb :data

      t.timestamps
    end
  end
end
