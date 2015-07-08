class Restaurant < ActiveRecord::Base

	before_action :authenticate_user!
end
