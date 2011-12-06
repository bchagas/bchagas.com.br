xml.instruct!

xml.rss "version" => "2.0", "xmlns:dc" => "http://purl.org/dc/elements/1.1/" do
 xml.channel do

   xml.title       Themis::Config['name']
   xml.link        root_url
   xml.description Themis::Config['description']

   @posts.each do |post|
     xml.item do
       xml.title       post.title
       xml.link        post_url(post)
       xml.guid        post_url(post)
       xml.author      post.author.name
       xml.description post.body.to_html
       xml.pubDate     post.created_at
     end
   end
 end
end

