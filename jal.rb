require 'hipchat'

class Jal
  def initialize
    @api_token = ENV['HIPCHAT_API_TOKEN']
    @client = HipChat::Client.new(@api_token)
  end

  def send_deploy(msg)
    @client['technical comms'].send(
      'Deploy',
      msg,
      message_format: 'text',
      color: 'red'
    )
  end
end
