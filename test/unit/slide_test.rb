# == Schema Information
#
# Table name: slides
#
#  id            :integer         not null, primary key
#  title         :string(255)
#  screen_width  :integer
#  screen_height :integer
#  pages_count   :integer         default(0)
#  created_at    :datetime
#  updated_at    :datetime
#

require File.dirname(__FILE__) + '/../test_helper'

class SlideTest < Test::Unit::TestCase
  def test_truth
    assert true
  end
end
