class Assistant < ActiveRecord::Base
	belongs_to :duty, :polymorphic => true

 def what_am_i_doing
 		case duty_type
 			when "Lab"
 				"Teaching a lab at #{duty.building}"
 			when "Course"
 				"Teaching #{duty.title}"
 			else
 				"Not doing anything"
 		end
 end

end
