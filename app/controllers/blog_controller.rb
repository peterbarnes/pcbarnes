class BlogController < ApplicationController
  def index
    client = Tumblr::Client.new
    @posts = client.posts('peterbarnes213.tumblr.com')
  end
end
