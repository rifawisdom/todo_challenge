require_relative '../../config/application.rb'

class Task < ActiveRecord::Base
 validates :description, presence: true, uniqueness:true


end

