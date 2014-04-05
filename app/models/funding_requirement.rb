class FundingRequirement
  include Mongoid::Document
  field :desired_amount, type: BigDecimal
  field :percentage_to_give, type: Float

  embedded_in :company
end
