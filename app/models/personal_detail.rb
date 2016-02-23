class PersonalDetail < Base
  attribute :title, String
  attribute :first_name, String
  attribute :last_name, String

  validates :first_name, presence: true
  validates :last_name, presence: true
end
