class SlidesController < ApplicationController
  make_resourceful do
    actions :all

    response_for :create, :update do |format|
      format.html {
        redirect_to :action => "index"
      }
    end

    response_for :show do |format|
      format.html {
        render :layout => "slide"
      }
    end
  end
end
