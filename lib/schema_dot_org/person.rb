# frozen_string_literal: true

require 'schema_dot_org'
require 'schema_dot_org/schema_type'


module SchemaDotOrg
  # Model the Schema.org `Person`.  See http://schema.org/Person
  class Person < SchemaType
    attr_accessor :name
    validates :name, type: String, presence: true


    def _to_json_struct
      {
        'name' => self.name
      }
    end
  end
end
