class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title, null: false
      t.string :location, null: false
      t.references :expeditionist

      t.timestamps
    end
  end
end
