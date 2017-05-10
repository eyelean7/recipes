class EditCombos < ActiveRecord::Migration[5.1]
  def change
    remove_column(:combos, :recipe_id)
    remove_column(:combos, :tag_id)
    add_column(:combos, :recipe_ids, :integer)
    add_column(:combos, :tag_ids, :integer)
  end
end
