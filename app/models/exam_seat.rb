class ExamSeat < ApplicationRecord
  validates :studId, presence: true, length: { maximum: 11 }
  validates :section, presence: true, length: { maximum: 1 }
  validates :course, presence: true, length: { maximum: 10 }
  validates :room, presence: true, length: { maximum: 10 }

  def set_present
    update_attribute(:present, true)
  end

  def self.search(studId)
    if studId
      where('room LIKE ?', "%#{studId}%")
    else
      all
    end
  end
end
