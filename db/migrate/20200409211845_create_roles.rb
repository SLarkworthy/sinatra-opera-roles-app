class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :opera
      t.string :composer
      t.boolean :researched, null: false, default: false
      t.boolean :translated, null: false, default: false
      t.boolean :listened, null: false, default: false
      t.boolean :learned, null: false, default: false
      t.boolean :coached, null: false, default: false
      t.boolean :memorized, null: false, default: false
      t.text :private_notes
      t.text :public_notes
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
