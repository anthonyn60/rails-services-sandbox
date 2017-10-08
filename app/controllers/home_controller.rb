class HomeController < ActionController::Base
  protect_from_forgery with: :exception

  layout 'application'

  def index
  end

  def raise_exception
    raise "This exception is generated for error log testing"
  end
end
