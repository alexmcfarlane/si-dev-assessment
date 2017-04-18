require 'twilio-ruby'

class PagesController < ApplicationController
  def home
    
  end

  def sms
@client = Twilio::REST::Client.new "AC49a14ff4a7f5e515d91aebba386837c5", "5a1cfd99d0ee638d114717d985ddd4ee"
@client.account.messages.create(:body => params["msg"],
    :to => params["receiving_number"],
    :from => "16313374028")

  end
end
