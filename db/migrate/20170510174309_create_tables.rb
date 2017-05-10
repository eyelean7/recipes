class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.column(:recipe, :string)
      t.column(:ingredients, :text)
      t.column(:instructions, :text)
    end
    create_table(:tags) do |t|
      t.column(:tag, :string)
    end
    create_table(:recipes_tags) do |t|
      t.column(:recipe_id, :integer)
      t.column(:tag_id, :integer)
    end
  end
end
