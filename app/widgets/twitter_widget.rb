class TwitterWidget < Apotomo::Widget
  responds_to_event :submit, :with => :process_tweet

  def display
    @tweets = Tweet.all
    render
  end
  
  def process_tweet(evt)
    Tweet.new(:text => evt[:text]).save

    @tweets = Tweet.all
    replace :view => :display
  end
end
