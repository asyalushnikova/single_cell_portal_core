class StudyShare
	include Mongoid::Document
	include Mongoid::Timestamps

	belongs_to :study

	field :email, type: String
	field :permission, type: String, default: 'View'

	validates_uniqueness_of :email, scope: :study_id

	PERMISSION_TYPES = %w(Edit View)
end