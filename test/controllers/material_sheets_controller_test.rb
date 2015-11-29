require 'test_helper'

class MaterialSheetsControllerTest < ActionController::TestCase
  setup do
    @material_sheet = material_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_sheet" do
    assert_difference('MaterialSheet.count') do
      post :create, material_sheet: { cantidad: @material_sheet.cantidad, material_id: @material_sheet.material_id, sheet_id: @material_sheet.sheet_id }
    end

    assert_redirected_to material_sheet_path(assigns(:material_sheet))
  end

  test "should show material_sheet" do
    get :show, id: @material_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material_sheet
    assert_response :success
  end

  test "should update material_sheet" do
    patch :update, id: @material_sheet, material_sheet: { cantidad: @material_sheet.cantidad, material_id: @material_sheet.material_id, sheet_id: @material_sheet.sheet_id }
    assert_redirected_to material_sheet_path(assigns(:material_sheet))
  end

  test "should destroy material_sheet" do
    assert_difference('MaterialSheet.count', -1) do
      delete :destroy, id: @material_sheet
    end

    assert_redirected_to material_sheets_path
  end
end
