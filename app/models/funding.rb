class Funding
  include Mongoid::Document
  field :amount, type: BigDecimal
  field :percentage, type: Float
  field :approved, type: Mongoid::Boolean

  embeds_one :user
  embedded_in :company
end
