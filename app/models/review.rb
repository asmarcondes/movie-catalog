class Review < ApplicationRecord
  after_update :register_approval_log

  belongs_to :movie
  scope :waiting_approval, -> { where(approved: false) }
  validates :movie, :comment, presence: true
  validates :rating, numericality: {
    only_integer: true,
    in: 0..10
  }

  def register_approval_log
    return unless approved

    log = Log.new
    log.review_id = id
    log.save
  end
end
