require "test_helper"

class JobAppliedMailerTest < ActionMailer::TestCase
  test "new_applieduser_email" do
    # Set up an order based on the fixture
    applicant = applicant(:one)

    # Set up an email using the order contents
    email=JobAppliedMailer.with(job: applicant).new_applieduser_email

    # Check if the email is sent
    assert_emails 1 do
      email.deliver_now
    end

    # Check the contents are correct
    assert_equal "akhileshucl@gmai.com", email.from
    assert_equal "abhsishek@gmail.com", email.to
    assert_equal "You got a new order!", email.subject
    assert_match applicant.name, email.html_part.body.encoded
    assert_match applicant.name, email.text_part.body.encoded
   
  end
end
