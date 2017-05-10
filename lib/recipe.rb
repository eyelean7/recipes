class Recipe < ActiveRecord::Base
  has_many :combos
  has_many :tags, through: :combos
end
