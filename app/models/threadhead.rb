class Threadhead < ActiveRecord::Base
  has_many :paths do
    def with_user(user)
      scoped.where("user_id = ?", user.id)
    end
  end

  def paths_by_user(user)
    self.paths.with_user(user)
  end
end
