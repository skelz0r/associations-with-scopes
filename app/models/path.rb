class Path < ActiveRecord::Base
  belongs_to :threadhead
  belongs_to :user
end
