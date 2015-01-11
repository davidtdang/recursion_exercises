require 'json'
require 'rest_client'

comments = RestClient.get "http://www.reddit.com/r/aww/comments/zzg3k/my_local_humane_society_posts_pictures_of_new/.json"
reddit_comments = JSON.parse(comments)

class CommentParser
  def initialize(tree)
    @tree = tree
  end

  def comments
    array = []
    if @tree["kind"] == "t1"
      comment = @tree["data"]["body"]
      array.push(comment)
    elsif @tree["kind"] == "Listing"
      comment = @tree["data"]["children"][0]["data"]["body"]
      array.push(comment)
    end
    array
  end
end
input = CommentParser.new(reddit_comments)
p input
