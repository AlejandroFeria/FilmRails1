class Filmm < ActiveRecord::Base
	mount_uploader :cover, FotoUploader
	has_many :favorites
	has_many :users, through: :favorites
end
