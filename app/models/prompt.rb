class Prompt < ActiveRecord::Base
  has_many :user

  has_many :prompt_responses
  has_many :responses, through: :prompt_responses

end
