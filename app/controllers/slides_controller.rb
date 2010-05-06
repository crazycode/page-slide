class SlidesController < ApplicationController
  make_resourceful do
    actions :all

    response_for :create, :update do |format|
      format.html {
        redirect_to :action => "index"
      }
    end
  end
end
