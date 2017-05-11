class Tag < ActiveRecord::Base
  has_many :combos
  has_many :recipes, through: :combos

  before_save(:matching_tag_id)
#
#   if "tag" not unique
#     find and return tag with same "tag"
#   else
#     return self
# end
private

def matching_tag_id
  if self.!unique?
    identical=Tag.where("tag = ?", self.tag())
    return identical
  end
end
