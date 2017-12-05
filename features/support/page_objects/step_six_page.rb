class StepSixPage < BasePage
  section :content, '#content' do
    element :benefits_text, '.text', text: 'contact the Department for Work and Pensions'
    element :benefit, '.text'
    elements :li, 'li'
    sections :form_group, '.form-group' do
      element :no, '.block-label', text: 'No'
      element :yes, '.block-label', text: 'Yes, I am receiving one of the benefits listed'
      element :benefits_true, '#benefit_on_benefits_true'
      element :benefits_false, '#benefit_on_benefits_false'
      element :help_with_benefits, 'summary', text: 'Help with benefits'
      element :recently_receiving_heading, '.text', text: 'If you’ve only recently started receiving one of these benefits'
      element :provide_a_letter, '.text', text: 'In this case you should provide a letter from the Jobcentre.'
      element :similar_names_heading, '.text', text: 'Benefits with similar names'
      element :benefits_with_similar_names, '.text', text: 'If you are receiving one of the benefits listed below, select \'No\'.'
      element :job_seekers, 'li', text: 'Contribution-based Job Seekers Allowance (JSA)'
      element :employment_support, 'li', text: 'Contribution-based Employment and Support Allowance (ESA)'
      element :pension_credit, 'li', text: 'Pension Credit and Savings Credit'
      element :universal_credit, 'li', text: 'Universal Credit (and you\'re earning more than £6,000 a year)'
      element :laa_assistance, 'li', text: 'Scottish Legal Aid Advice and Assistance'
      element :laa_representation, 'li', text: 'Scottish Legal Aid Advice by Way of Representation (ABWOR)'
    end
  end
end
