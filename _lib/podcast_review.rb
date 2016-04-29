require 'net/http'
require 'json'

class PodcastReview
  attr_reader :title, :content, :author

  def initialize(title, content, author)
    @title = title
    @content = content
    @author = author
  end

  def to_hash
    {
      'title' => @title,
      'content' => @content,
      'author' => @author
    }
  end

  def to_json(options = {})
    JSON.generate(to_hash, options)
  end

  def self.all_from_itunes(id)
    uri = URI("https://itunes.apple.com/se/rss/customerreviews/id=#{id}/json")

    body = Net::HTTP.get(uri).force_encoding('UTF-8')
    entries = JSON.parse(body)['feed']['entry'].drop(1)

    entries.map do |entry|
      PodcastReview.new(
        entry['title']['label'],
        entry['content']['label'],
        entry['author']['name']['label']
      )
    end
  end
end
