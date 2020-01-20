# frozen_string_literal: true

# See observation/example.json for basic example
#
# EXAMPLE TO TRY:
#
# rails console =>
# file = File.read("app/models/observation/example.json")
# data = JSON.parse(file).deep_symbolize_keys
# o = Observation.new
# o.data = data
# o.data....
#
class Observation::Data
  include StoreModel::Model

  attribute :type, :string
  attribute :analysis, Type::CoedableConcept.to_type
  attribute :result, Observation::Result.to_array_type
end