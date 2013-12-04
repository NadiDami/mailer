require "spec_helper"

describe Gmailer do
  describe "create_email" do
    let(:mail) { Gmailer.create_email }

    it "renders the headers" do
      mail.subject.should eq("Create email")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
