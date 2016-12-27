class ActiveRecord::Base

  # 软删除
  def destroy_softly
    self.active = false
    self.destroyed_at = Time.now
    self.save
  end

end