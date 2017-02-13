# == Schema Information
#
# Table name: participant_profiles
#
#  id             :integer          not null, primary key
#  first_name     :string
#  last_name      :string
#  birthdate      :date
#  occupation     :string
#  country        :string
#  state          :string
#  city           :string
#  lat            :decimal(, )
#  lng            :decimal(, )
#  gender         :integer
#  relationship   :string
#  sons           :integer
#  facebook       :string
#  instagram      :string
#  whatsapp       :string
#  youtube        :string
#  snapchat       :string
#  participant_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  email          :string
#  belief         :string
#

class ParticipantProfile < ApplicationRecord

enum gender: [:prefer_not_to_disclose, :male, :female, :other]

belongs_to :participant, optional: true

attr_accessor :participant_type

  def name
    "#{first_name} #{last_name}"
  end
end
