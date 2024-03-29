class TwitterWidget < Apotomo::Widget
  responds_to_event :submit, :with => :process_tweet

  def display
    @tweets = Tweet.find(:all)
    render
  end
  
  def process_tweet(evt)
    @tweet = Tweet.new
    @tweet.update_attributes(evt[:tweet])

    replace :state => :display
  end
  
  def list(tweets)
    render :locals => {:tweets => tweets}
  end
  
end
