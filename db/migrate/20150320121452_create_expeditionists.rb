class CreateExpeditionists < ActiveRecord::Migration
  def change
    create_table :expeditionists do |t|
      t.string :name, null: false
      t.string :niche
      t.references :experience

      t.timestamps
    end
  end
end
