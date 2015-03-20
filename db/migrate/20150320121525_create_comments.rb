class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.refrences :perspective

      t.timestamps
    end
  end
end
