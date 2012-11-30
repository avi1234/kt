class Tick < ActiveRecord::Base
	attr_accessible :comment, :stars, :place, :user
	belongs_to :place
	belongs_to :user

	validates :comment, presence: true, length: { maximum: 140 }
	validates :stars, inclusion:{ :in => [1, 2, 3, 4, 5],
		message:"must be between 1 and 5." }
	validates_associated :user, :place

	scope :latest, order('created_at DESC').limit(5)

	def as_json(options={})
    	super(options.merge(only:[:id, :comment, :stars]))
  	end

end
