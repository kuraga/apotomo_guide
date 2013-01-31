class Tweet < ActiveRecord::Base
  attr_accessible :text

  validates_presence_of :text
end
