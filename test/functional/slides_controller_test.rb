require File.dirname(__FILE__) + '/../test_helper'
require 'slides_controller'

# Re-raise errors caught by the controller.
class SlidesController; def rescue_action(e) raise e end; end

class SlidesControllerTest < ActionController::TestCase

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:slides)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_slide
    old_count = Slide.count
    post :create, :slide => { }
    assert_equal old_count + 1, Slide.count

    assert_redirected_to slide_path(assigns(:slide))
  end

  def test_should_show_slide
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_slide
    put :update, :id => 1, :slide => { }
    assert_redirected_to slide_path(assigns(:slide))
  end

  def test_should_destroy_slide
    old_count = Slide.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Slide.count

    assert_redirected_to slides_path
  end
end
