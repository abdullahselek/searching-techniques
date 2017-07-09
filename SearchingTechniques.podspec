Pod::Spec.new do |s|

    s.name                  = 'SearchingTechniques'
    s.version               = '0.3'
    s.summary               = 'Different searching techniques for iOS'
    s.homepage              = 'https://github.com/abdullahselek/searching-techniques'
    s.license               = {
        :type => 'MIT',
        :file => 'LICENSE'
    }
    s.author                = {
        'Abdullah Selek' => 'abdullahselek@yahoo.com'
    }
    s.source                = {
        :git => 'https://github.com/abdullahselek/searching-techniques.git',
        :tag => s.version.to_s
    }
    s.ios.deployment_target = '9.0'
    s.osx.deployment_target = '10.10'
    s.tvos.deployment_target = '9.0'
    s.source_files          = 'Source/*.{h,m}'
    s.requires_arc          = true

end