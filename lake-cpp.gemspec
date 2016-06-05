Gem::Specification.new do |s|
  s.name        = 'lake-cpp'
  s.version     = '0.0.1'
  s.licenses    = ['MIT']
  s.summary     = "Lake CPP"
  s.description = "C/C++ (GCC) plugin for Lake"
  s.authors     = ["Stepan unn4m3d Melnikov"]
  s.email       = 'smelnikov871@gmail.com'
  s.files       = ["lib/lake/plugins/cpp.rb"]
  s.homepage    = 'https://github.com/unn4m3d/lake-cpp'
  s.add_runtime_dependency 'lake', "~> 0.1.0",">= 0.1.2"
end
