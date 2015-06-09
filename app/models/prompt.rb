class Prompt < ActiveRecord::Base
  belongs_to :user
  has_many :prompt_responses
  has_many :responses, through: :prompt_responses

  def index
    @prompts = Planet.all
    # takes all the prompts from db and stores as instance variable.
    # come back as array of objects
      end

end
