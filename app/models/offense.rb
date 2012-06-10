class Offense < ActiveRecord::Base
  attr_accessible :body, :lost, :score, :user_id, :won
end
