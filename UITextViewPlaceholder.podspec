
Pod::Spec.new do |s|


  s.name         = "UITextViewPlaceholder"
  s.version      = "0.0.1"
  s.summary      = "UItextView的category"

  s.description  = <<-DESC
                    UItextView关于Placeholder的category
                   DESC

  s.homepage     = "https://github.com/gaozm0509/UITextViewPlaceholder"


  s.license      = "MIT"

  s.author       = { "高泽民" => "18036396675@163.com" }

  s.source       = { :git => "https://github.com/gaozm0509/UITextViewPlaceholder.git", :tag => "0.0.1" }


  s.source_files  = "Project/UITextViewPlaceholderExample/Classes/*.{h,m}"

  s.platform     = :ios,'5.0'

  s.framework    = "UIKit"

  s.requires_arc = true

end
