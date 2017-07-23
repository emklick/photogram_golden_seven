# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  held_on     :date
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
end
