class Funding
  include Mongoid::Document
  field :amount, type: BigDecimal
  field :percentage, type: Float
  field :approved, type: Mongoid::Boolean

  embeds_one :user
  belongs_to :company
end
