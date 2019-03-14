module Request
  module JsonHelper
    def json
      JSON.parse(last_response.body)
    end
  end
end
