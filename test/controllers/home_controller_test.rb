require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test '#index returns a 500 response' do
    get '/'
    assert_response 500
  end

  test '#raise_exception raises an exception and returns 500 response' do
    exception = assert_raises RuntimeError do
      get '/raise_exception'
      assert_response 500
    end

    assert_equal exception.message, 'This exception is generated for error log testing'
  end
end
