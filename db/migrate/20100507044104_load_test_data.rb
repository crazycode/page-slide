class LoadTestData < ActiveRecord::Migration
  def self.up
    slide = Slide.create(:title => '测试展示',
                         :screen_width => 1024,
                         :screen_height => 768)
    Page.create(:title => 'google',
                :url => 'http://www.google.com/ncr',
                :page_type => 'webpage',
                :position => 1,
                :slide => slide)
    Page.create(:title => '5173.cn',
                :url => 'http://www.5173.cn',
                :page_type => 'webpage',
                :position => 2,
                :slide => slide)
  end

  def self.down
    Page.delete_all
    Slide.delete_all
  end
end
