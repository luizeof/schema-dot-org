
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "schema_dot_org"
  spec.version       = '1.6.0'
  spec.authors       = ["Robb Shecter"]
  spec.email         = ["robb@public.law"]

  spec.summary       = %q{JSON-LD generator for Schema.org vocabulary}
  spec.description   = %q{Creates well-formed website metadata with strongly typed Ruby.}
  spec.homepage      = "https://github.com/dogweather/schema-dot-org"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "validated_object"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
