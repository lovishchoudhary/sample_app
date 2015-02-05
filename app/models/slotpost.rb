class Slotpost < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :user_id, presence: true
	validates :ground_name, presence: true
	validates :sport, presence: true
	validates :date, presence: true
	#validates :slot_start_time, presence: true
	#validates :slot_end_time, presence: true
	validates :vacancy, presence: true

	def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end

end
