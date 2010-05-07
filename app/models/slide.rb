# == Schema Information
#
# Table name: slides
#
#  id            :integer(4)      not null, primary key
#  title         :string(255)
#  screen_width  :integer(4)
#  screen_height :integer(4)
#  pages_count   :integer(4)      default(0)
#  created_at    :datetime
#  updated_at    :datetime
#

class Slide < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :title

  has_many :pages, :order => "position", :dependent => :destroy
end
