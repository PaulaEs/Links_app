require 'test_helper'

class LinkisControllerTest < ActionController::TestCase
  setup do
    @linki = linkis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:linkis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create linki" do
    assert_difference('Linki.count') do
      post :create, linki: { adres: @linki.adres, opis: @linki.opis, techniczne: @linki.techniczne }
    end

    assert_redirected_to linki_path(assigns(:linki))
  end

  test "should show linki" do
    get :show, id: @linki
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @linki
    assert_response :success
  end

  test "should update linki" do
    put :update, id: @linki, linki: { adres: @linki.adres, opis: @linki.opis, techniczne: @linki.techniczne }
    assert_redirected_to linki_path(assigns(:linki))
  end

  test "should destroy linki" do
    assert_difference('Linki.count', -1) do
      delete :destroy, id: @linki
    end

    assert_redirected_to linkis_path
  end
end
