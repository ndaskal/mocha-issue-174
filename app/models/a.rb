class A < ActiveRecord::Base
  attr_accessible :a
  has_many :bs
  def test
   a
   bs.build
  end
end
