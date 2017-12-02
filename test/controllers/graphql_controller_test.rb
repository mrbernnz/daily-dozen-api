require 'test_helper'

class GraphqlControllerTest < ActionController::TestCase
  def test_should_execute_the_graphql_query
    post :execute, params: { query: '{ __schema }' }, format: :json

    assert_response :success
  end
end
