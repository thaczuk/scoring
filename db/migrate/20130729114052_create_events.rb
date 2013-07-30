class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string           :name
      t.text              :description
      t.boolean        :rank_by_small
      t.decimal        :event_weight, :default => '1.0'

      t.belongs_to   :competition

      t.timestamps
    end
  end
end
