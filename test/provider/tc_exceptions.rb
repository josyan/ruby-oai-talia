require 'test_helper'

class ProviderExceptions < Test::Unit::TestCase
  include Singleton
  
  def setup
    @provider = ComplexProvider.new
  end

  def test_resumption_token_exception
    assert_raise(OAI::ResumptionTokenException) do
      @provider.list_records(:resumption_token => 'aaadddd:1000')
    end
    assert_raise(OAI::ResumptionTokenException) do
      @provider.list_records(:resumption_token => 'oai_dc:1000')
    end
    assert_raise(OAI::ResumptionTokenException) do
      @provider.list_identifiers(:resumption_token => '..::!:.:!:')
    end
    assert_raise(OAI::ResumptionTokenException) do
      @provider.list_identifiers(:resumption_token => '\:\\:\/$%^&*!@#!:1')
    end
  end
  
  def test_bad_verb_raises_exception
    assert @provider.process_request(:verb => 'BadVerb') =~ /badVerb/
    assert @provider.process_request(:verb => '\a$#^%!@') =~ /badVerb/
    assert @provider.process_request(:verb => 'identity') =~ /badVerb/
    assert @provider.process_request(:verb => '!!\\$\$\.+') =~ /badVerb/
  end
  
  def test_bad_format_raises_exception
    assert_raise(OAI::FormatException) do
      @provider.get_record(:identifier => 'oai:test/1', :metadataPrefix => 'html')
    end
    assert_raise(OAI::FormatException) do
      @provider.list_identifiers(:metadataPrefix => 'fjdsklfj')
  end
  end
  
  def test_bad_id_raises_exception
    assert_raise(OAI::IdException) do
      @provider.get_record(:identifier => 'oai:test/5000', :metadataPrefix => 'oai_dc')
    end
    assert_raise(OAI::IdException) do
      @provider.get_record(:identifier => 'oai:test/-1', :metadataPrefix => 'oai_dc')
    end
    assert_raise(OAI::IdException) do
      @provider.get_record(:identifier => 'oai:test/one', :metadataPrefix => 'oai_dc')
    end
    assert_raise(OAI::IdException) do
      @provider.get_record(:identifier => 'oai:test/\\$1\1!', :metadataPrefix => 'oai_dc')
    end
  end
  
  def test_no_records_match_dates_that_are_out_of_range
    assert_raise(OAI::NoMatchException) do
      @provider.list_records(:from => Time.parse("November 2 2000"), 
                             :until => Time.parse("November 1 2000"),
							 :metadataPrefix => 'oai_dc')
    end
  end
  
  def test_bad_datespecs_raise_exception
    assert_raise(OAI::ArgumentException) do
      @provider.list_records( :from => "iamnotadate",
                              :until => "2005-06-05T12:20:40Z",
                              :metadataPrefix => 'oai_dc' )
    end
    assert_raise(OAI::ArgumentException) do
      @provider.list_records( :from => "2005-06-05T12:20:40Z",
                              :until => "iamnotadate",
                              :metadataPrefix => 'oai_dc' )
    end    
  end
  
  def test_extra_parameter_for_identify_raises_correct_exception
    assert_raise(OAI::ArgumentException) do
      @provider.identify( :metadataPrefix => 'oai_dc' )
    end
  end
  
  def test_different_granularities_raises_exception
    assert_raise(OAI::ArgumentException) do
      @provider.list_records( :from => "2000-01-01", 
                              :until => "2007-06-05T12:00:00Z",
                              :metadataPrefix => 'oai_dc'
                              )
    end
  end
  
  def test_no_records_match_bad_set
    assert_raise(OAI::NoMatchException) { @provider.list_records(:set => 'unknown', :metadataPrefix => 'oai_dc') }
  end
  
end
