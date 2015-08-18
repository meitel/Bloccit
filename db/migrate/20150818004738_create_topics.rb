class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.string :string
      t.string :public, default: true
      t.string :boolean
      t.text :description

      t.timestamps null: false
    end
  end
end
