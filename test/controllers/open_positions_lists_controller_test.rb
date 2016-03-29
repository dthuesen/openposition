require 'test_helper'

class OpenPositionsListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @open_positions_list = open_positions_lists(:one)
  end

  test "should get index" do
    get open_positions_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_open_positions_list_url
    assert_response :success
  end

  test "should create open_positions_list" do
    assert_difference('OpenPositionsList.count') do
      post open_positions_lists_url, params: { open_positions_list: { affects_version: @open_positions_list.affects_version, category: @open_positions_list.category, component: @open_positions_list.component, costmodel: @open_positions_list.costmodel, description: @open_positions_list.description, in_sprint: @open_positions_list.in_sprint, issue_ticket: @open_positions_list.issue_ticket, notes: @open_positions_list.notes, number: @open_positions_list.number, option: @open_positions_list.option, prio: @open_positions_list.prio, responsible: @open_positions_list.responsible, state: @open_positions_list.state, summary: @open_positions_list.summary, ticket_text: @open_positions_list.ticket_text } }
    end

    assert_redirected_to open_positions_list_path(OpenPositionsList.last)
  end

  test "should show open_positions_list" do
    get open_positions_list_url(@open_positions_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_open_positions_list_url(@open_positions_list)
    assert_response :success
  end

  test "should update open_positions_list" do
    patch open_positions_list_url(@open_positions_list), params: { open_positions_list: { affects_version: @open_positions_list.affects_version, category: @open_positions_list.category, component: @open_positions_list.component, costmodel: @open_positions_list.costmodel, description: @open_positions_list.description, in_sprint: @open_positions_list.in_sprint, issue_ticket: @open_positions_list.issue_ticket, notes: @open_positions_list.notes, number: @open_positions_list.number, option: @open_positions_list.option, prio: @open_positions_list.prio, responsible: @open_positions_list.responsible, state: @open_positions_list.state, summary: @open_positions_list.summary, ticket_text: @open_positions_list.ticket_text } }
    assert_redirected_to open_positions_list_path(@open_positions_list)
  end

  test "should destroy open_positions_list" do
    assert_difference('OpenPositionsList.count', -1) do
      delete open_positions_list_url(@open_positions_list)
    end

    assert_redirected_to open_positions_lists_path
  end
end
