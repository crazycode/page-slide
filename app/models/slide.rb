# == Schema Information
#
# Table name: slides
#
#  id            :integer(4)      not null, primary key
#  title         :string(255)
#  screen_width  :integer(4)
#  screen_height :integer(4)
#  page_count    :integer(4)
#  created_at    :datetime
#  updated_at    :datetime
#

class Slide < ActiveRecord::Base
end
