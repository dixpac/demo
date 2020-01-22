class DateTimeComponent < ActionView::Component::Base
  def initialize(payload:)
    @payload = payload
  end

  def value
    @payload.result.first.valueDateTime
  end

  def payload
    { valueDateTime: @payload.result.first.valueDateTime }
  end

  def analysis_name
    @payload.analysis.coding.display
  end
end
