class WordSet < ActiveRecord::Base
  # accessible
  attr_accessible :en, :jp, :text_id
  
  # Relation
  belongs_to :text
end
