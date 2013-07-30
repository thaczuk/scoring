class CreateEventAthletes < ActiveRecord::Migration
  def change
    create_table :event_athletes do |t|
      t.string            :result
      t.float              :score
      t.integer          :event_rank

      t.belongs_to    :athlete
      t.belongs_to    :event

      t.timestamps
    end
  end
end
