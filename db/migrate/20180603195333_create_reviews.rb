class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :broker_id
      t.text :content
      t.integer :communication
      t.integer :team_player
      t.integer :skill

      t.timestamps
    end
  end
end
