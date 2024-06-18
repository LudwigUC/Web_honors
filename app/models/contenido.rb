class Contenido < ApplicationRecord
  after_initialize :set_defaults, unless: :persisted?

  validates :clases, inclusion: { in: [true, false] }
  validates :ayudantias, inclusion: { in: [true, false] }
  validates :interrogaciones, inclusion: { in: [true, false] }

  private

  def set_defaults
    self.clases ||= false
    self.ayudantias ||= false
    self.interrogaciones ||= false
  end
end
