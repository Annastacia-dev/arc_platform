# == Schema Information
#
# Table name: meetings
#
#  id                     :bigint           not null, primary key
#  description            :text
#  end_date               :datetime
#  is_chapter_member      :boolean          default(FALSE)
#  is_organization_member :boolean          default(FALSE)
#  is_panel               :boolean          default(FALSE)
#  location               :integer          default(0), not null
#  meeting_link           :string
#  meeting_type           :integer          default(0), not null
#  panel_members          :string           default([]), is an Array
#  speaker                :string           not null
#  start_date             :datetime
#  status                 :integer
#  topic                  :string           not null
#  venue                  :string
#  venue_map              :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  chapter_id             :bigint           not null
#  user_id                :bigint           not null
#
# Indexes
#
#  index_meetings_on_chapter_id  (chapter_id)
#  index_meetings_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (chapter_id => chapters.id)
#  fk_rails_...  (user_id => users.id)
#
class Meeting < ApplicationRecord
  belongs_to :chapter
  belongs_to :user
end
