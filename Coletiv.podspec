Pod::Spec.new do |s|

s.name          = 'Coletiv'
s.version       = '0.1'
s.summary       = 'This framework contains the common code for the Coletiv iOS apps.'

s.description   = <<-DESC 'Coletiv contains extensions, subclasses, methods... Used within the Swift projects.'
DESC
s.homepage      = 'https://github.com/coletiv/coletiv-ios-framework.git'

s.author        = 'Coletiv Studio'

s.platform      = :ios, '9.0'

s.source        = { :git => 'https://github.com/coletiv/coletiv-ios-framework.git', :branch => 'master' }

### Subspecs

#Create the Extensions folder
s.subspec 'Extensions' do |es|
  es.source_files = 'Coletiv/Source/Extensions/**/*.{h,m,swift}'
end

s.subspec 'Protocols' do |ps|
  ps.source_files = 'Coletiv/Source/Protocols/**/*.{h,m,swift}'
end

end

