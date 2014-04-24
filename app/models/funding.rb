class Funding
  include Mongoid::Document
  field :amount, type: BigDecimal
  field :percentage, type: Float
  field :approved, type: Mongoid::Boolean
  field :email, type: String
  field :unverified, type: Boolean, default: false
  
  belongs_to :company

end
