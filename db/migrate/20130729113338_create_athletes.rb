class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string          :firstname
      t.string          :lastname
      t.string          :gender
      t.integer        :age
      t.integer        :height
      t.integer        :weight
      t.string          :affiliation

      t.belongs_to  :competition
      t.belongs_to  :competition_category

      t.timestamps
    end
  end
end
