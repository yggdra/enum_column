Gem::Specification.new do |s|
  s.name = %q{yggdra-enum_column3}
  s.version = "0.3.1"
  s.authors = ['Nick Pohodnya', 'Daniele Orlandi']

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.homepage = %q{http://github.com/electronick/enum_column}
  s.require_paths = ["lib"]
  s.summary = %q{Enable enum type for MySQL and PostgreSQL db.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end

end

