class CreateSlides < ActiveRecord::Migration
  def self.up
    create_table :slides, :force => true do |t|
      t.string :title
      t.integer :screen_width
      t.integer :screen_height
      t.integer :page_count

      t.timestamps
    end
  end

  def self.down
    drop_table :slides
  end
end
