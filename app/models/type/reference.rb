# frozen_string_literal: true

# A reference to external resource.
class Type::Reference
  include StoreModel::Model

  attribute :reference, :string
  attribute :display, :string
  attribute :type, :string
end
