# frozen_string_literal: true

# A CodeableConcept represents a value that is usually supplied by providing a reference to one or more
# terminologies or ontologies but may also be defined by the provision of text.
# This is a common pattern in healthcare data.
class Type::CoedableConcept
  include StoreModel::Model

  attribute :coding, Type::Coding.to_type
  attribute :text, :string
end
