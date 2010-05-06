# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def location_name
    "#{action_name}_#{controller.controller_name}"
  end

  def header
    render :partial => 'shared/header'
  end

  def footer
    render :partial => 'shared/footer'
  end

  def javascripts
    render :partial => 'shared/javascripts'
  end

  def global_navigation
    render :partial => 'shared/global_navigation'
  end

  def hot_flashes(flash)
    show_flash_bar = true
    if flash[:success]
      class_name = 'success'
      text = flash[:success]
    elsif flash[:error]
      class_name = 'error'
      text = flash[:error]
    elsif flash[:notice]
      class_name = 'notice'
      text = flash[:notice]
    else
      show_flash_bar = false
    end
    "<div class='flash_box flash_#{class_name}'><div>#{text}</div></div>" if show_flash_bar
  end

end
