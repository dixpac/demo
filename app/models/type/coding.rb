# frozen_string_literal: true

# A Coding is a representation of a defined concept using a symbol from a defined "code system" 
class Type::Coding
  include StoreModel::Model

  attribute :system,        :string 
  attribute :version,       :string
  attribute :code,          :string
  attribute :display,       :string
  attribute :userSelected, :boolean
end
