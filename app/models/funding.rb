class Funding
  include Mongoid::Document
  field :amount, type: BigDecimal, default: 0
  field :percentage, type: Float, default: 0
  field :approved, type: Mongoid::Boolean
  field :email, type: String
  field :unverified, type: Boolean, default: false
  
  belongs_to :company

end
