class Case < ApplicationRecord
	has_many :case_bluetooth_devices, :dependent => :delete_all
	has_many :exposures, :dependent => :delete_all
end
