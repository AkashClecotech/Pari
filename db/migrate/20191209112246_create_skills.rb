class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :knowledge
      t.integer :user_id

      t.timestamps
    end
  end
end
