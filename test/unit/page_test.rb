# == Schema Information
#
# Table name: pages
#
#  id           :integer(4)      not null, primary key
#  title        :string(255)
#  sub_title    :string(255)
#  hint         :string(255)
#  url          :string(255)
#  page_type    :string(255)
#  position     :integer(4)
#  slide_id     :integer(4)
#  show_timeout :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#

require File.dirname(__FILE__) + '/../test_helper'

class PageTest < Test::Unit::TestCase
  def test_truth
    assert true
  end
end
