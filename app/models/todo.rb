class Todo < ActiveRecord::Base
  validate :description, presence: true
end
