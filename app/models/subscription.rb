class Subscription < ApplicationRecord
	validate :valid_dates

	def valid_dates
		if :start_timeband >= :end_timeband
		   self.errors.add :start_timeband, ' has to be after end timeband'
		end
	end
end
