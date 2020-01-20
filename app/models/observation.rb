class Observation < ApplicationRecord
  attribute :data, Observation::Data.to_type
end
