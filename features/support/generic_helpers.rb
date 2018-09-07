def wait_for
  Timeout.timeout(Capybara.default_max_wait_time) do
    begin
      loop until yield
    rescue # rubocop:disable Lint/HandleExceptions
      # ignored
    end
  end
end

def wait_for_document_ready
  wait_for { page.evaluate_script('document.readyState').eql? 'complete' }
end

def scroll_to_bottom
  WaitUntil.wait_until(3, 'Failed as browser hasnt reached bottom of window') do
    page.execute_script 'window.scrollTo(0,$(document).height())'
    y_position = page.evaluate_script 'window.scrollY'
    browser_height = page.evaluate_script '$(window).height();'
    doc_height = page.evaluate_script '$(document).height();'
    (y_position + browser_height).eql?(doc_height)
  end
end

module WaitUntil
  def self.wait_until(timeout = 10, message = nil, &block)
    wait = Selenium::WebDriver::Wait.new(timeout: timeout, message: message)
    wait.until(&block)
  end
end

def form_name_page
  @form_name_page ||= FormNamePage.new
end

def fee_page
  @fee_page ||= FeePage.new
end

def step_three_page
  @step_three_page ||= StepThreePage.new
end

def step_four_page
  @step_four_page ||= StepFourPage.new
end

def step_five_page
  @step_five_page ||= StepFivePage.new
end

def step_six_page
  @step_six_page ||= StepSixPage.new
end

def step_seven_page
  @step_seven_page ||= StepSevenPage.new
end

def step_eight_page
  @step_eight_page ||= StepEightPage.new
end

def step_nine_page
  @step_nine_page ||= StepNinePage.new
end

def step_ten_page
  @step_ten_page ||= StepTenPage.new
end

def step_eleven_page
  @step_eleven_page ||= StepElevenPage.new
end

def step_twelve_page
  @step_twelve_page ||= StepTwelvePage.new
end

def step_thirteen_page
  @step_thirteen_page ||= StepThirteenPage.new
end

def step_fourteen_page
  @step_fourteen_page ||= StepFourteenPage.new
end

def step_fifteen_page
  @step_fifteen_page ||= StepFifteenPage.new
end

def step_sixteen_page
  @step_sixteen_page ||= StepSixteenPage.new
end

def step_seventeen_page
  @step_seventeen_page ||= StepSeventeenPage.new
end

def step_eighteen_page
  @step_eighteen_page ||= StepEighteenPage.new
end

def step_nineteen_page
  @step_nineteen_page ||= StepNineteenPage.new
end

def step_twenty_page
  @step_twenty_page ||= StepTwentyPage.new
end

def base_page
  @base_page ||= BasePage.new
end

def common_page
  @common_page ||= CommonPage.new
end

def saucelabs_page
  @saucelabs_page ||= SaucelabsPage.new
end
