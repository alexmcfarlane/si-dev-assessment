require 'twilio-ruby'

class PagesController < ApplicationController
  def home
    
  end

  def sms
@client = Twilio::REST::Client.new ENV['twilio_sid'], ENV['twilio_auth_token']
@client.account.messages.create(:body => params["msg"],
    :to => params["receiving_number"],
    :from => ENV['from_number'])

  end
end
