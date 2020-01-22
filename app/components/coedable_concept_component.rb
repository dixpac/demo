class CoedableConceptComponent < ActionView::Component::Base
  def initialize(payload:)
    @payload = payload
  end

  def value
    codes.map {|c| c[:code]}
  end

  def codes
    @payload.result.map { |r| { code: r.valueCoedableConcept.coding.code } }
  end

  def analysis_name
    @payload.analysis.coding.display
  end
end
