Pod::Spec.new do |s|

  s.name         = "FireVal"
  s.version      = "1.0.0"
  s.summary      = "Basic Validations FireValFramework."
  s.description  = <<-DESC 
			FireValFramework built to make your development easier"
		   DESC
  s.homepage     = "https://github.com/dilipkumar4813/FireVal"
  s.license      = "MIT"
  s.author       = { "Dilip" => "dilipkumar4813@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/dilipkumar4813/FireVal.git", :tag => "#{s.version}" }
  s.swift_version = "4.2"
  s.source_files  = "FireVal/**/*{.h,.swift}"
end
