class Agenda
  include Mongoid::Document
  field :start_date_time, type: DateTime
  field :end_date_time, type: DateTime


  embeds_one :company

  accepts_nested_attributes_for :company

end
