class Participant < ApplicationRecord
  belongs_to :results
  has_one :weigh_in
end
