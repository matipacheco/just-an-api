module JustAnApiHelper
  include Rack::Test::Methods

  def app
    Rails.application
  end
end
