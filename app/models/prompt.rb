class Prompt < ActiveRecord::Base
  belongs_to :user
  has_many :responses
  # has_many :prompt_responses
  # has_many :responses, through: :prompt_responses

  def index
    @prompts = Prompt.all
    # takes all the prompts from db and stores as instance variable.
    # come back as array of objects
      end
# If you are defining them here and in the controller?
# this a mistake or the way that you do it with just one controller?


end
