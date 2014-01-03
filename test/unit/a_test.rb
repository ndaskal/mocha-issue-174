require 'test_helper'
require 'mocha/setup'

class ATest < ActiveSupport::TestCase
   test "the truth" do
     @a = A.new
     @a.expects(:a)
     bs = mock(:bs)
     bs.expects(:build)
     @a.stubs(:bs).returns(bs)
     @a.test
     assert true
   end
end
