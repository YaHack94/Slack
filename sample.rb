require "slack-notify"
require "dotenv/load"
require 'clockwork'

module Clockwork
    client = SlackNotify::Client.new(webhook_url: ENV["WEBHOOK_URL"])
    client.test
    handler do |job|
        msg = "Hi! Hope you are doing well. Nice to meet you."
        client.notify(msg)
    end
    every(3.minutes, 'hi')

end

