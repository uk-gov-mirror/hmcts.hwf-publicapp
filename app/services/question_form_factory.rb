# frozen_string_literal: true
class QuestionFormFactory
  class QuestionDoesNotExist < StandardError; end

  # These are ordered
  IDS = [
    :form_name,
    :fee,
    :marital_status,
    :savings_and_investment,
    :savings_and_investment_extra,
    :benefit,
    :dependent,
    :income_kind,
    :income_range,
    :income_amount,
    :probate,
    :claim,
    :national_insurance,
    :dob,
    :personal_detail,
    :applicant_address,
    :contact
  ].freeze

  def self.position(id)
    IDS.index(id)
  end

  def self.get_form(id, online_application)
    raise QuestionDoesNotExist unless IDS.include?(id)

    class_name = "Forms::#{form_class_name(id, online_application)}".constantize
    class_name.new
  end

  def self.form_class_name(id, online_application)
    if id == :claim
      online_application.et? ? 'Claim::Et' : 'Claim::Default'
    elsif id == :probate && online_application.et?
      'Claim::Et'
    else
      id.to_s.classify
    end
  end
end
