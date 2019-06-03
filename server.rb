# frozen_string_literal: true

require 'sinatra'
require 'net/http'
require 'openssl'

set :bind, '0.0.0.0'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

get '/:protocol/*' do
  uri = URI("#{params[:protocol]}//#{params[:splat].first}")
  params.delete('splat')
  uri.query = URI.encode_www_form(params)
  response = Net::HTTP.get_response(uri)
  content_type response.header['Content-Type']
  response.body
end

post '/:protocol/*' do
  uri = URI("#{params[:protocol]}//#{params[:splat].first}")
  params.delete('splat')
  response = Net::HTTP.post_form(uri, params)
  content_type response.header['Content-Type']
  status response.code
  response.body
end
