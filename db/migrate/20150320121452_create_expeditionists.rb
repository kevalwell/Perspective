class CreateExpeditionists < ActiveRecord::Migration
  def change
    create_table :expeditionists do |t|
      t.string :name, null: false
      t.string :niche

      t.timestamps null: false
    end
  end
end
