class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :room

    validates :startDay, :endDay, :numberOfPeople, presence: true

    #過去の日付を選択できないようにする
    validate :date_cannot_be_in_the_past

        def date_cannot_be_in_the_past
            if startDay.present? && startDay < Date.today
                    errors.add(:startDay, "は今日以降の日付にしてください")
            end
            if endDay.present? && endDay < Date.today
                errors.add(:endDay, "は今日以降の日付にしてください")
            end
        end
end
