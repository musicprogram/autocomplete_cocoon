class Sheet < ActiveRecord::Base
	has_many :material_sheets

	accepts_nested_attributes_for :material_sheets, reject_if: :all_blank, allow_destroy: true
end
