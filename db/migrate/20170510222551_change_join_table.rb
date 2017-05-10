class ChangeJoinTable < ActiveRecord::Migration[5.1]
  def change
    drop_table(:recipes_tags)
    create_table(:combos) do |t|
      t.column(:recipe_id, :integer)
      t.column(:tag_id, :integer)
    end
  end
end
