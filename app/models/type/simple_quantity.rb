# frozen_string_literal: true

# SimleQuantity type
class Type::SimpleQuantity
  include StoreModel::Model

  attribute :value, :decimal
  attribute :unit, :string
end
