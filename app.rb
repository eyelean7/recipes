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

post('/recipes/') do
  recipe = params.fetch('new_recipe')
  ingredients = params.fetch('ingredients')
  instructions = params.fetch('instructions')
  recipe = Recipe.create({:recipe => recipe, :ingredients => ingredients, :instructions => instructions})
  redirect('/')
end

get('/recipe/:id') do
  erb(:recipe)
end
