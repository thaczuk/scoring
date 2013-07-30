class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :when
      t.string :where
      t.string :description
      t.string :competition_type
      t.timestamps
    end
  end
end
