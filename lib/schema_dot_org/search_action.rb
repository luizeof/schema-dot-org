# frozen_string_literal: true

require 'schema_dot_org'
require 'schema_dot_org/schema_type'


module SchemaDotOrg
  # Model the Schema.org `Thing > SearchAction`.  See http://schema.org/SearchAction
  class SearchAction < SchemaType
    attr_accessor :target, :query_input
    validates :target,      type: String, presence: true
    validates :query_input, type: String, presence: true

    def _to_json_struct
      {
        'target' => self.target,
        'query_input' => self.query_input
      }
    end
  end
end
