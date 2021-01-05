class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_carry

  def must_carry
    if !mens_apparel && !womens_apparel
      errors.add(:store, "must carry womens or mens clothing")
    end
  end
end
