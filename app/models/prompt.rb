class Prompt < ActiveRecord::Base
  belongs_to :user
  has_many :prompt_responses
  has_many :responses, through: :prompt_responses

end
