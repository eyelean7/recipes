require('spec_helper')
  describe(Tag)do

  describe('#matching_tag_id') do
    it "replaces tag object with existing tag object if they have the same tag attribute" do
      farm = Tag.create({:tag => "farm", :id => nil})
      farm2 = Tag.create({:tag => "farm", :id => nil})
      recipe = Recipe.create({:recipe => "eggs",:ingredients => "eggs", :instructions => "make em", :tag_ids => [farm.id(), farm2.id()]})

      recipe2 = Recipe.create({:recipe => "eggs",:ingredients => "eggs", :instructions => "make em", :tag_ids => [farm.id(), farm2.id()]})
      expect(recipe.tags()).to(eq([farm]))
    end
  end
end
