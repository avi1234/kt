class Place < ActiveRecord::Base
  attr_accessible :avg_stars, :la, :lo, :name, :ticks
  has_many :ticks

  validates :name, presence: true, length: { maximum: 50 }
  validates :la, presence:true, numericality:true
  validates :lo, presence:true, numericality:true
  validates :avg_stars, inclusion:{ :in => [1,1.5,2,2.5,3,3.5,4,4.5,5],
		:message => "must be between 1 and 5." }

  validates_associated :ticks

  def as_json(options={})
    super(options.merge(only:[:id, :avg_stars, :la, :lo, :name]))
  end

end
