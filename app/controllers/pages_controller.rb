class PagesController < ApplicationController
  make_resourceful do
    belongs_to :slide
    actions :all
  end

  def parent_object
    @parent_object ||= Slide.find(params[:slide_id])
  end
end
