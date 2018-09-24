require 'HTTParty'
require 'nokogiri'


class SearchResult
	include Nokogiri
	attr_reader :node
	def initialize(node)
		@node = node
	end

	def title
		@title = @node.css(".r a").text
		@title
	end

	def desc
		@desc = @node.css(".st").text
		@desc
	end

	def url
		@url = @node.at_css(".r a")
		@url = @url['href']
		@url.slice(7,@url.length)
	end
end

class SearchResults
	include HTTParty
	include Nokogiri
	@@url = 'https://www.google.co.in/search?q='

	def initialize(searchFor, url=@@url)
		url = url << searchFor[:query] 
		response = HTTParty.get(url)
		doc = Nokogiri::HTML(response)
		@results_document = doc.css("div.g")
	end

	def size
		size = @results_document.css("div.g").size
		size	
	end

	def results
		search_result_array = []
		@results_document.css("div.g").each { |node|
			search_result_array << SearchResult.new(node)
                }
		search_result_array
	end
end

test = SearchResults.new(:query => 'ruby oops')
puts test.results[2].title
puts test.results[2].desc
puts test.results[2].url
