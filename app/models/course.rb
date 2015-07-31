class Course < ActiveRecord::Base
	has_many :teaching_assistants, class_name: "Assistant", :as => :duty
end
