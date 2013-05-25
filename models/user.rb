class User < ActiveRecord::Base
  include BCrypt
  validates_presence_of :email, :name, :url
  validates_presence_of :password, on: :create
  validates_presence_of :password_hash, on: :update
  validates_uniqueness_of :email
  has_many :passes
  
  def password
    @password ||= Password.new(password_hash) if password_hash
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
  
  def active?
    active
  end
  
  def space_name
    name
  end
  
  def self.authenticate(email, password)
    user = User.find_by_email(email)
    p user
    if user && user.password == password
      user
    else
      nil
    end
  end
end
