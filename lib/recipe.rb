class Recipe < ActiveRecord::Base
  has_many :combos
  has_many :tags, through: :combos
end

def grabtag(tags)
  tags.split()
  tag_ids = []
  tags.each() do |tag|
    this_tag = Tag.create(:tag => tag)
    tag_ids.push(this_tag.id())
  end
end
