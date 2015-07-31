class Lab < ActiveRecord::Base
	has_many :lab_assistants, class_name: "Assistant", :as => :duty
end
