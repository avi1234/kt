class User < ActiveRecord::Base
  attr_accessible :email, :name, :ticks
  has_many :ticks

  before_save { |user| user.email = email.downcase }

  validates :name, presence: true, length:{ maximum:50 }, uniqueness:{ case_sensitive:false }
  validates :email, presence:true, uniqueness:{ case_sensitive:false }

  validates_associated :ticks

  def as_json(options={})
    super(options.merge(only:[:id, :name]))
  end
end