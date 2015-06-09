class Response < ActiveRecord::Base
  belongs_to :prompt 
  # cant have a response without a user?
  has_many :users
  # each response should have one user id associated with it.

  def index
      @response = Response.all
    end
end
