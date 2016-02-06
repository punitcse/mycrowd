class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :application_type, default: 0, null: false
      t.string :url
      t.text :instruction
      t.decimal :bounty, default: 0, null: false
      t.integer :state, default: 0, null: false
      t.references :user
      t.timestamps null: false
    end
  end
end
