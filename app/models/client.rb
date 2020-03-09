class Client < ApplicationRecord
	has_many :client_bluetooth_devices, :dependent => :delete_all
	has_many :cases, :dependent => :delete_all
	has_many :exposures
end
