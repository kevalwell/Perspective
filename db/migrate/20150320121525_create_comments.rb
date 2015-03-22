class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.references :perspective

      t.timestamps null: false
    end
  end
end
