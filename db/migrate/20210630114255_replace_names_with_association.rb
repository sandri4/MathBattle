class ReplaceNamesWithAssociation < ActiveRecord::Migration[6.1]
  def change
    remove_column :battles, :first_player_name, :string
    remove_column :battles, :second_player_name, :string
    add_reference :players, :battle, foreign_key: true
  end
end
