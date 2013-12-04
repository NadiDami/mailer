Feature: Sending email from the homepage
        Given I am filling in this message form
        I want to be able to send the email from the browser

        Background: The homepage
                Given I am on the homepage

        Scenario: Filling out the form
                Then I fill in "To" with "dwkns@me.com"
                Then I fill in "From" with "nodunayo@gmail.com"
                Then I fill in "Subject" with "Just wanted to say..."
                Then I fill in "Message" with "For fuck's sake, Darrell. Stop being so irritating"
                Then I press "Send Email"
                Then an email should be sent to "dwkns@me.com"
                And the email should contain "For fuck's sake, Darrell. Stop being so irritating"


