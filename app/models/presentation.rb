class Presentation
  include Mongoid::Document
  field :url, type: String

  embedded_in :company
end
