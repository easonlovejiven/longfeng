module Activable

  extend ActiveSupport::Concern

  included do |base|
    scope :active, -> {where(active: true)}
  end

  def active?
    active
  end

end
