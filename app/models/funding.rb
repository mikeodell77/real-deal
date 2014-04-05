class Funding
  include Mongoid::Document
  field :amount, type: BigDecimal
  field :percentage, type: Float
  field :approved, type: Mongoid::Boolean
end
