class Pass < ActiveRecord::Base
  validates_presence_of :code, :name, :valid_until, :user_id
  before_validation :generate_code, :set_validity
  belongs_to :user
  scope :valid, -> {where(['valid_until < ?', Time.now])}
  
  def generate_code
    self.code = SecureRandom.random_number(10000)
  end
  
  def set_validity
    self.valid_until = 2.weeks.from_now
  end
  
  def still_usable?
    valid_until < Time.now && !used_at
  end
  
  def self.use(code)
    pass = find_by_code(code)
    if pass && pass.still_usable?
      pass.update_attribute(:used_at, Time.now)
      pass
    else
      nil
    end
  end
end