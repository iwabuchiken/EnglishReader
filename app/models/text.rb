class Text < ActiveRecord::Base
  attr_accessible :text, :url, :title
  
  # Relation
  has_many :word_sets
end
