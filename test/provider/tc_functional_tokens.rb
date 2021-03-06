require 'test_helper'

class ResumptionTokenFunctionalTest < Test::Unit::TestCase
  include REXML
  
  def setup
    @provider = ComplexProvider.new
  end

  def test_resumption_tokens
    assert_nothing_raised { Document.new(@provider.list_records(:metadataPrefix => 'oai_dc')) }
    doc = Document.new(@provider.list_records(:metadataPrefix => 'oai_dc'))
    assert_not_nil doc.elements["/OAI-PMH/ListRecords/resumptionToken"]
    assert_equal 101, doc.elements["/OAI-PMH/ListRecords"].to_a.size
    token = doc.elements["/OAI-PMH/ListRecords/resumptionToken"].text
    doc = Document.new(@provider.list_records(:resumption_token => token))
    assert_not_nil doc.elements["/OAI-PMH/ListRecords/resumptionToken"]
    assert_equal 101, doc.elements["/OAI-PMH/ListRecords"].to_a.size
  end

  def test_from_and_until_with_resumption_tokens
    # Should return 300 records broken into 3 groups of 100.
    assert_nothing_raised { Document.new(@provider.list_records(:metadataPrefix => 'oai_dc')) }
    doc = Document.new(
      @provider.list_records(
        :from => Time.parse("September 1 2004"),
        :until => Time.parse("November 30 2004"),
		    :metadataPrefix => 'oai_dc')
      )
    assert_equal 101, doc.elements["/OAI-PMH/ListRecords"].to_a.size
    token = doc.elements["/OAI-PMH/ListRecords/resumptionToken"].text
  
    doc = Document.new(@provider.list_records(:resumption_token => token))
    assert_not_nil doc.elements["/OAI-PMH/ListRecords/resumptionToken"]
    assert_equal 101, doc.elements["/OAI-PMH/ListRecords"].to_a.size
    token = doc.elements["/OAI-PMH/ListRecords/resumptionToken"].text
    
    doc = Document.new(@provider.list_records(:resumption_token => token))
    assert_not_nil doc.elements["/OAI-PMH/ListRecords/resumptionToken"]
    assert_nil doc.elements["/OAI-PMH/ListRecords/resumptionToken"].text
    assert_equal 101, doc.elements["/OAI-PMH/ListRecords"].to_a.size
  end
    
end