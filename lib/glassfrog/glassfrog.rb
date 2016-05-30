# frozen_string_literal: true
class Glassfrog
  def initialize(access_token, version)
    @token = access_token
    @version = version
  end

  def get_resource(resource)
    get_request("#{api_url}#{resource}")
  end

  private

  def api_url
    "https://glassfrog.holacracy.org/api/#{@version}/"
  end

  def headers
    { headers: { 'X-Auth-Token': @token } }
  end

  def parse_response(response)
    response.with_indifferent_access
  end

  def get_request(url)
    request :get, url
  end

  def request(method, url, params = {})
    parse_response(HTTParty.public_send(method, url, params.merge(headers)))
  end
end
