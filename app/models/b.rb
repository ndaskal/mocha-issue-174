class B < ActiveRecord::Base
  attr_accessible :b
  belongs_to :a
end
