class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_many :prompts
 has_many :responses
         # trying to say that users need to send ids to prompts and responses

  def teacher?
    self.role.downcase == 'teacher'
  end

  def student?
    self.role.downcase == 'student'
  end
end
