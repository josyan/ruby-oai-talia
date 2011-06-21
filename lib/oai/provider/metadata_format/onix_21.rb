module OAI::Provider::Metadata
  # = OAI::Metadata::Onix21
  #
  # Simple implementation of the Dublin Core metadata format
  # plus output in Onix 2.1 format
  class Onix21 < Format

    def initialize
      @prefix = 'onix_dc'
      @schema = 'http://bibnum.bnf.fr/NS/onix_dc.xsd'
      @namespace = 'http://bibnum.bnf.fr/NS/onix_dc/'
      @element_namespace = 'dc'
      @fields = [ :title, :creator, :subject, :description, :publisher,
                  :contributor, :date, :type, :format, :identifier,
                  :source, :language, :relation, :coverage, :rights, :onix_21 ]
    end

    def header_specification
      {
        'xmlns:onix_dc' => "http://bibnum.bnf.fr/NS/onix_dc/",
        'xmlns:dc' => "http://purl.org/dc/elements/1.1/",
        'xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
        'xmlns:onix' => "http://www.editeur.org/onix/2.1/reference",
        'xsi:schemaLocation' =>
          %{http://bibnum.bnf.fr/NS/onix_dc/
            http://bibnum.bnf.fr/NS/onix_dc.xsd}
      }
    end

  end
end


