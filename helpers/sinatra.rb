require 'sinatra/base'

module Sinatra 
  module MainHelpers 
    # helpers untuk url dan css
    def css(*stylesheets)
      stylesheets.map do |stylesheet|
      "<link href=\"/css/#{stylesheet}.css\" media=\"all, projection\" rel=\"stylesheet\" />"
      "<link href=\"/css/#{stylesheet}.css\" media=\"all\" rel=\"stylesheet\" />"
      end.join
    end

    def js(*stylesheets)
      stylesheets.map do |javascript|
      "<script src=\"/js/#{javascript}.js\"></script>"
      end.join
    end
  end
  helpers MainHelpers
end
