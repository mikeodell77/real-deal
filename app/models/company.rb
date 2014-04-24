class Company
  include Mongoid::Document
  field :name, type: String
  field :address1, type: String
  field :address2, type: String
  field :city, type: String
  field :state, type: String
  field :zip, type: String
  field :phone, type: String

  embeds_one :funding_requirement
  embeds_many :presentations
  embeds_many :fundings

  accepts_nested_attributes_for :funding_requirement, :presentations
end
