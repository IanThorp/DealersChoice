class DrinksTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :drink
end
