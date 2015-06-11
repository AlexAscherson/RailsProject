class Prompt < ActiveRecord::Base
  belongs_to :user
  # belongs_to :user, through: :user_prompts
  has_many :responses
  # has_many :prompt_responses
  # has_many :responses, through: :prompt_responses

  def self.not_responded(current_user)
    Prompt.all - current_user.responses.map do |response| 
      response.prompt
    end
  end

  def response_counts
    self.responses.reduce(Hash.new(0)) do |total, e| 
      total[e] += 1 
      total
    end
  end

end
