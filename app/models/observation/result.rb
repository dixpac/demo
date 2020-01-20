# frozen_string_literal: true

# Represents results associated with specific observation. Results are array of
# nested objects.
class Observation::Result
  include StoreModel::Model

  attribute :status, :string
  attribute :valueQuantity, Type::Quantity.to_type
  attribute :valueString, :string
  attribute :referenceRange, Observation::ReferenceRange.to_type
  attribute :interpretation, Type::CoedableConcept.to_type
  attribute :issued, :datetime, default: Time.zone.now
  attribute :performer, Type::Reference.to_type

  validates :status, presence: true
end
