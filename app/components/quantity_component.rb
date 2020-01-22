class QuantityComponent < ActionView::Component::Base
  def initialize(payload:)
    @payload = payload
  end

  def value
    valueQuantity.try(:value)
  end

  def valueQuantity
    @payload.result.first.try(:valueQuantity)
  end

  def analysis_name
    @payload.analysis.coding.display
  end
end
