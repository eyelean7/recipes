require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @recipes = Recipe.all()
  erb(:index)
end

get('/recipe/new') do
  erb(:new_recipe_form)
end

post('/recipes') do
  recipe = params.fetch('new_recipe')
  ingredients = params.fetch('ingredients')
  instructions = params.fetch('instructions')
  recipe = Recipe.create({:recipe => recipe, :ingredients => ingredients, :instructions => instructions})
  redirect('/')
end

get('/recipe/:id') do
  @recipe = Recipe.find(params.fetch('id').to_i())
  erb(:recipe)
end

patch('/recipe/:id') do
  @recipe = Recipe.find(params.fetch('id').to_i())
  update_recipe = params.fetch('new_recipe')
  update_ingredients = params.fetch('ingredients')
  update_instructions = params.fetch('instructions')
  @recipe.update({:recipe => update_recipe, :ingredients => update_ingredients, :instructions => update_instructions})
  erb(:recipe)
end

delete("/recipe/:id") do
  @recipe = Recipe.find(params.fetch("id").to_i())
  @recipe.delete()
  @recipes = Recipe.all()
  erb(:index)
end

get('/recipe/:id/update') do
  @recipe = Recipe.find(params.fetch('id').to_i())
  erb(:recipe_edit_form)
end
