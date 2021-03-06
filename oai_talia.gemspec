# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{oai_talia}
  s.version = "1.0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ed Summers", "Daniel Hahn", "Josyan Pierson"]
  s.autorequire = %q{oai}
  s.date = %q{2011-07-28}
  s.description = %q{A ruby library for working with the Open Archive Initiative Protocol for Metadata Harvesting (OAI-PMH). Fork of the original version by Ed Summers, aims for best standards compatibility (test with http://re.cs.uct.ac.za/)}
  s.email = %q{josyan@demarque.com}
  s.executables = ["oai"]
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "README",
     "Rakefile",
     "bin/oai",
     "examples/models/file_model.rb",
     "examples/providers/dublin_core.rb",
     "lib/oai.rb",
     "lib/oai/client.rb",
     "lib/oai/client/get_record.rb",
     "lib/oai/client/header.rb",
     "lib/oai/client/identify.rb",
     "lib/oai/client/list_identifiers.rb",
     "lib/oai/client/list_metadata_formats.rb",
     "lib/oai/client/list_records.rb",
     "lib/oai/client/list_sets.rb",
     "lib/oai/client/metadata_format.rb",
     "lib/oai/client/record.rb",
     "lib/oai/client/response.rb",
     "lib/oai/constants.rb",
     "lib/oai/exception.rb",
     "lib/oai/harvester.rb",
     "lib/oai/harvester/config.rb",
     "lib/oai/harvester/harvest.rb",
     "lib/oai/harvester/logging.rb",
     "lib/oai/harvester/mailer.rb",
     "lib/oai/harvester/shell.rb",
     "lib/oai/provider.rb",
     "lib/oai/provider/metadata_format.rb",
     "lib/oai/provider/metadata_format/oai_dc.rb",
     "lib/oai/provider/metadata_format/oai_europeana.rb",
     "lib/oai/provider/metadata_format/onix_21.rb",
     "lib/oai/provider/model.rb",
     "lib/oai/provider/model/activerecord_caching_wrapper.rb",
     "lib/oai/provider/model/activerecord_wrapper.rb",
     "lib/oai/provider/partial_result.rb",
     "lib/oai/provider/response.rb",
     "lib/oai/provider/response/error.rb",
     "lib/oai/provider/response/get_record.rb",
     "lib/oai/provider/response/identify.rb",
     "lib/oai/provider/response/list_identifiers.rb",
     "lib/oai/provider/response/list_metadata_formats.rb",
     "lib/oai/provider/response/list_records.rb",
     "lib/oai/provider/response/list_sets.rb",
     "lib/oai/provider/response/record_response.rb",
     "lib/oai/provider/resumption_token.rb",
     "lib/oai/set.rb",
     "lib/oai/xpath.rb",
     "lib/test.rb",
     "test/activerecord_provider/config/connection.rb",
     "test/activerecord_provider/config/database.yml",
     "test/activerecord_provider/database/ar_migration.rb",
     "test/activerecord_provider/database/oaipmhtest",
     "test/activerecord_provider/fixtures/dc.yml",
     "test/activerecord_provider/helpers/providers.rb",
     "test/activerecord_provider/helpers/set_provider.rb",
     "test/activerecord_provider/models/dc_field.rb",
     "test/activerecord_provider/models/dc_set.rb",
     "test/activerecord_provider/models/oai_token.rb",
     "test/activerecord_provider/tc_ar_provider.rb",
     "test/activerecord_provider/tc_ar_sets_provider.rb",
     "test/activerecord_provider/tc_caching_paging_provider.rb",
     "test/activerecord_provider/tc_simple_paging_provider.rb",
     "test/activerecord_provider/test_helper.rb",
     "test/client/helpers/provider.rb",
     "test/client/helpers/test_wrapper.rb",
     "test/client/tc_exception.rb",
     "test/client/tc_get_record.rb",
     "test/client/tc_identify.rb",
     "test/client/tc_libxml.rb",
     "test/client/tc_list_identifiers.rb",
     "test/client/tc_list_metadata_formats.rb",
     "test/client/tc_list_records.rb",
     "test/client/tc_list_sets.rb",
     "test/client/tc_low_resolution_dates.rb",
     "test/client/tc_utf8_escaping.rb",
     "test/client/tc_xpath.rb",
     "test/client/test_helper.rb",
     "test/provider/models.rb",
     "test/provider/tc_exceptions.rb",
     "test/provider/tc_functional_tokens.rb",
     "test/provider/tc_provider.rb",
     "test/provider/tc_resumption_tokens.rb",
     "test/provider/tc_simple_provider.rb",
     "test/provider/test_helper.rb",
     "test/test.xml"
  ]
  s.homepage = %q{ssh://git@rocky.demarque.com:8422/srv/git/gems/ruby-oai-talia.git}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.6")
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A ruby library for working with the Open Archive Initiative Protocol for Metadata Harvesting (OAI-PMH)}
  s.test_files = [
    "test/activerecord_provider/config/connection.rb",
     "test/activerecord_provider/database/ar_migration.rb",
     "test/activerecord_provider/helpers/providers.rb",
     "test/activerecord_provider/helpers/set_provider.rb",
     "test/activerecord_provider/models/dc_field.rb",
     "test/activerecord_provider/models/dc_set.rb",
     "test/activerecord_provider/models/oai_token.rb",
     "test/activerecord_provider/tc_ar_provider.rb",
     "test/activerecord_provider/tc_ar_sets_provider.rb",
     "test/activerecord_provider/tc_caching_paging_provider.rb",
     "test/activerecord_provider/tc_simple_paging_provider.rb",
     "test/activerecord_provider/test_helper.rb",
     "test/client/helpers/provider.rb",
     "test/client/helpers/test_wrapper.rb",
     "test/client/tc_exception.rb",
     "test/client/tc_get_record.rb",
     "test/client/tc_identify.rb",
     "test/client/tc_libxml.rb",
     "test/client/tc_list_identifiers.rb",
     "test/client/tc_list_metadata_formats.rb",
     "test/client/tc_list_records.rb",
     "test/client/tc_list_sets.rb",
     "test/client/tc_low_resolution_dates.rb",
     "test/client/tc_utf8_escaping.rb",
     "test/client/tc_xpath.rb",
     "test/client/test_helper.rb",
     "test/provider/models.rb",
     "test/provider/tc_exceptions.rb",
     "test/provider/tc_functional_tokens.rb",
     "test/provider/tc_provider.rb",
     "test/provider/tc_resumption_tokens.rb",
     "test/provider/tc_simple_provider.rb",
     "test/provider/test_helper.rb",
     "examples/models/file_model.rb",
     "examples/providers/dublin_core.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 2.0.0"])
    else
      s.add_dependency(%q<builder>, [">= 2.0.0"])
    end
  else
    s.add_dependency(%q<builder>, [">= 2.0.0"])
  end
end
