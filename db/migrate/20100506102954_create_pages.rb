class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages, :force => true do |t|
      t.string :title
      t.string :sub_title
      t.string :hint
      t.string :url
      t.string :page_type
      t.integer :position
      t.integer :slide_id
      t.integer :show_timeout

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
