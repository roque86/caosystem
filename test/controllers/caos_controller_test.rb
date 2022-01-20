require "test_helper"

class CaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cao = caos(:one)
  end

  test "should get index" do
    get caos_url
    assert_response :success
  end

  test "should get new" do
    get new_cao_url
    assert_response :success
  end

  test "should create cao" do
    assert_difference("Cao.count") do
      post caos_url, params: { cao: { nome: @cao.nome, nome_pai: @cao.nome_pai, nome_propr: @cao.nome_propr, raca: @cao.raca } }
    end

    assert_redirected_to cao_url(Cao.last)
  end

  test "should show cao" do
    get cao_url(@cao)
    assert_response :success
  end

  test "should get edit" do
    get edit_cao_url(@cao)
    assert_response :success
  end

  test "should update cao" do
    patch cao_url(@cao), params: { cao: { nome: @cao.nome, nome_pai: @cao.nome_pai, nome_propr: @cao.nome_propr, raca: @cao.raca } }
    assert_redirected_to cao_url(@cao)
  end

  test "should destroy cao" do
    assert_difference("Cao.count", -1) do
      delete cao_url(@cao)
    end

    assert_redirected_to caos_url
  end
end
