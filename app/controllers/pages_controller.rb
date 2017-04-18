require 'twilio-ruby'

class PagesController < ApplicationController
  def home
    
  end

  def sms
@client = Twilio::REST::Client.new ENV["TWILIO_SECRET"], ENV["TWILIO_AUTH"]
@client.account.messages.create(:body => params["msg"],
    :to => params["receiving_number"],
    :from => ENV["FROM_NUMBER"])

  end
end
