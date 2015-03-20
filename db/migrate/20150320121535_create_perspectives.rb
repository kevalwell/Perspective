class CreatePerspectives < ActiveRecord::Migration
  def change
    create_table :perspectives do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.integer :status, :default => 0
      t.refrences :experiences

      t.timestamps
    end
  end
end
