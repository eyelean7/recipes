class Recipe < ActiveRecord::Base
  has_many :recipe_tag
  has_many :tags, through: :recipe_tag
end
