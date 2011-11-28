module PostsHelper
  def keywords
    @post.present? ? @post.tag_list.to_s : @posts.tags
  end

  def rss_link
    "http://feeds.feedburner.com/#{configuration['name']}".delete(' ')
  end

  def rss_title
    "#{configuration['name']}"
  end
end

class Array
  def tags
    map { |element| element.tags.map(&:name) }.flatten.uniq.join(', ')
  end
end
