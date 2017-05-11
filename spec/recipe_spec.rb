require('spec_helper')
  describe(Recipe)do

  describe("#update") do
    it("lets you add tags to a recipe") do
      farm = Tag.create({:tag => "farm", :id => nil})
      breakfast = Tag.create({:tag => "breakfast", :id => nil})
      recipe = Recipe.create({:recipe => "eggs",:ingredients => "eggs", :instructions => "make em", :tag_ids => [farm.id(), breakfast.id()]})
      expect(recipe.tags()).to(eq([farm, breakfast]))
    end
  end
end
  # describe('#grabtag') do
  #   it ('pushes tag into tag array')
  #   eggs = Recipe.create({:recipe => "eggs", :ingredients => "eggs", :instructions => "make em"})
  #
  #   expect(eggs.grabtag()).to(eq([]))
  # end
  #
