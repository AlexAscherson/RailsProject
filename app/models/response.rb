class Response < ActiveRecord::Base  
  has_many :prompt_responses
  has_many :prompts, through: :prompt_responses
  has_many :users
  # each response should have one user id associated with it.

  def index
      @response = Response.all
    end
end
