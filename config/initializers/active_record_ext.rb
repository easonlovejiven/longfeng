class ActiveRecord::Base

  # 软删除
  def destroy_softly
    self.active = false
    self.destroyed_at = Time.now
    self.save
  end

  # 获取一个对象
  def acquire id
    record = where(id: id)
    record = record.where(active: true) if record.first.respond_to?(:active)
    record.first
  end

  # 是否是有效数据
  def self.active
    respond_to?(:active?) ? where(active: true) : self
  end

  # 条件查询
  def self.default(params, options = {})
    active
    ._where(params[:where])
    ._order(params[:order])
    .page(params[:page]).per(params[:per_page])
  end

end