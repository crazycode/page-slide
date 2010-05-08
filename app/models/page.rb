# == Schema Information
#
# Table name: pages
#
#  id           :integer         not null, primary key
#  title        :string(255)
#  sub_title    :string(255)
#  hint         :string(255)
#  url          :string(255)
#  page_type    :string(255)
#  position     :integer
#  slide_id     :integer
#  show_timeout :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Page < ActiveRecord::Base
  validates_presence_of :title, :url, :page_type
  validates_uniqueness_of :title

  belongs_to :slide, :counter_cache => true
end
