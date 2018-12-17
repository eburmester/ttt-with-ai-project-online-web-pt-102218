class Player
  attr_reader :token
  
  extend Players::Human
  include Players::Human
  
  def initialize(token)
    @token = token
  end
  
  
  
end