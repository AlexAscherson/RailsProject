class Response < ActiveRecord::Base  
  # has_many :prompt_responses
  # has_many :prompts, through: :prompt_responses
  belongs_to :prompt
  belongs_to :user
  # each response should have one user id associated with it.

  def index
      @response = Response.find(params[:id])
    end
end
