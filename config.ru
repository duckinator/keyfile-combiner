require 'sinatra/base'
require 'httparty'

class KeyfileCombiner < Sinatra::Base
  def get_keyfile(site, username)
    domain = {
      'github' => "github.com",
      'gitlab' => "gitlab.com"
    }[site]

    return '' if site.nil?
    return '' if username !~ /[a-zA-Z0-9]+/

    HTTParty.get("https://#{domain}/#{username}.keys").body
  end

  get '/' do
    params.map { |site, username|
      get_keyfile(site, username)
    }.join("\n")
  end
end

run KeyfileCombiner
