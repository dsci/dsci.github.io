class User < ActiveRecord::Base

  belongs_to :formatter

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :validatable,:rememberable 

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  # attr_accessible :title, :body

  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end

  ### This is the correct method you override with the code above
  ### def self.find_for_database_authentication(warden_conditions)
  ### end 

end
