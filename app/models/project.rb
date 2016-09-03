class Project < ActiveRecord::Base
	after_initialize :set_defaults

	scope :almost_completed, -> { where('percent_complete > 75.0') }
	scope :not_completed, -> { where('percent_complete < 75.0') }

	def set_defaults
		self.percent_complete ||= 0.0
	end
end
