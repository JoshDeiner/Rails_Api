
class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  @@name = []

  def loggedin_user
    decoded_hash = decode_token
    User.find(decoded_hash["user_id"])

  end


  def issue_token(payload)
    token = JWT.encode(payload, ENV["SECRET_KEY_BASE"])
  end

  def decode_token
    JWT.decode(get_token, ENV["SECRET_KEY_BASE"])[0]
  end

  def get_token
    request.headers["Authorization"]
  end



end
