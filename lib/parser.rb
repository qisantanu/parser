require "parser/version"
require 'nokogiri'
require 'open-uri'

module Parser
  class Error < StandardError; end

  class Html
    def initialize(url)
      begin
        @doc = Nokogiri::HTML(URI.open(url))
      rescue
        "Invalid URL"
      end
    end

    def fetch_title
      @doc.title
    end

    def fetch_meta_info
      @doc.xpath("//meta").map do |attr|
        if attr.attributes.keys.include?("charset")
          "<meta #{attr.attributes["charset"].name} = '#{attr.attributes["charset"].value}'>"
        else
          "<meta name='#{attr.attributes["name"].value}' content='#{attr.attributes["content"].value}'>"
        end
      end
    end
  end
end
