class User < ActiveRecord::Base
  rolify
  has_many :providers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable , :omniauthable

         dragonfly_accessor :image



  #return name of user
  def name
    self.first_name + " " + self.last_name unless (self.first_name.blank? || self.last_name.blank?)
  end
end
