Pod::Spec.new do |s|

  s.name         = "ModuleExampleSettings"
  s.version      = "0.0.5"
  s.summary      = "Settings App"

  s.description  = <<-DESC
                   Module Example Settings App
                   DESC

  s.homepage     = "https://github.com/gonefish/ModuleExampleSettings"

  s.license      = "MIT"

  s.author             = { "Q.GuoQiang" => "gonefish@gmail.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/gonefish/ModuleExampleSettings.git", :tag => s.version.to_s }

  s.source_files  = "ModuleExampleSettings/Module/*.{h,m}"

  s.resource = 'ModuleExampleSettings/Base.lproj/SettingsMain.storyboard'

  s.requires_arc = true

  s.dependency 'GQModularize'

end
