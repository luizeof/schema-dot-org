# frozen_string_literal: true

require 'schema_dot_org'
require 'schema_dot_org/schema_type'


module SchemaDotOrg
  # Model the Schema.org `Thing > Place`.  See http://schema.org/Place
  class Place < SchemaType
    attr_accessor :address
    validates :address, type: String, presence: true

    def _to_json_struct
      {
        'address' => self.address
      }
    end
  end
end
