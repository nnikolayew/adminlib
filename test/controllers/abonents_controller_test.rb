require 'test_helper'

class AbonentsControllerTest < ActionController::TestCase
  setup do
    @abonent = abonents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abonents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abonent" do
    assert_difference('Abonent.count') do
      post :create, abonent: { adress: @abonent.adress, lastname: @abonent.lastname, name: @abonent.name, phone: @abonent.phone, surname: @abonent.surname, ticket: @abonent.ticket }
    end

    assert_redirected_to abonent_path(assigns(:abonent))
  end

  test "should show abonent" do
    get :show, id: @abonent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abonent
    assert_response :success
  end

  test "should update abonent" do
    patch :update, id: @abonent, abonent: { adress: @abonent.adress, lastname: @abonent.lastname, name: @abonent.name, phone: @abonent.phone, surname: @abonent.surname, ticket: @abonent.ticket }
    assert_redirected_to abonent_path(assigns(:abonent))
  end

  test "should destroy abonent" do
    assert_difference('Abonent.count', -1) do
      delete :destroy, id: @abonent
    end

    assert_redirected_to abonents_path
  end
end
