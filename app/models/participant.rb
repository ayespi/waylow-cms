class Participant < ApplicationRecord
  belongs_to :results
  has_many :weigh_ins
end
