class FixColumns < ActiveRecord::Migration[5.1]
  def change
    add_column(:combos, :recipe_id, :integer)
    add_column(:combos, :tag_id, :integer)
    remove_column(:combos, :recipe_ids)
    remove_column(:combos, :tag_ids)
  end
end
