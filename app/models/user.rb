class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
	attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :username
  
  validates_presence_of :username
  
  has_many :snaps, :dependent => :destroy
  has_many :bursts, :through => :snaps
  has_many :events, :through => :snaps
  has_one :profile, :dependent => :destroy
  
  after_create :add_profile
  
  protected
  
	def add_profile
		self.create_profile
	end
end


