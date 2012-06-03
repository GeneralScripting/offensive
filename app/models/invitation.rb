class Invitation < ActiveRecord::Base
  attr_accessible :accepted_at, :guest_id, :request_id, :user_id
end
