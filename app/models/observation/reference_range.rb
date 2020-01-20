# frozen_string_literal: true

# Represents referenceRange for the result.
class Observation::ReferenceRange
  include StoreModel::Model

  attribute :low, Type::SimpleQuantity.to_type
  attribute :high, Type::SimpleQuantity.to_type
end
