class CreateBattles < ActiveRecord::Migration[6.1]
  def change
    create_table :battles do |t|
      t.string :first_player_name
      t.string :second_player_name

      t.timestamps
    end
  end
end
