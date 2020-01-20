# frozen_string_literal: true

# A measured amount (or an amount that can potentially be measured).
class Type::Quantity
  include StoreModel::Model

  attribute :value, :decimal
  attribute :comparator, :string
  attribute :unit, :string
end
