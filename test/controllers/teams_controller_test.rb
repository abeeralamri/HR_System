require "test_helper"

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get teams_url
    
  end

  test "should get new" do
    get new_team_url
    
  end

  test "should create team" do
    # assert_difference("Team.count") do
    #   post teams_url, params: { team: { description: @team.description, members: @team.members, name: @team.name, team_lead: @team.team_lead } }
    # end

    # assert_redirected_to team_url(Team.last)
  end

  test "should show team" do
    get team_url(@team)
    
  end

  test "should get edit" do
    get edit_team_url(@team)
    
  end

  test "should update team" do
    patch team_url(@team), params: { team: { description: @team.description, members: @team.members, name: @team.name, team_lead: @team.team_lead } }
  end

  # test "should destroy team" do
  #   assert_difference("Team.count", -1) do
  #     delete team_url(@team)
  #   end

  #   assert_redirected_to teams_url
  # end
end
