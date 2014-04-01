class FundingRequirement
  include Mongoid::Document
  field :desired_amount, type: BigDecimal
  field :percentage_to_give, type: BigDecimal

  embedded_in :company
end
