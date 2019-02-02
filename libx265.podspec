#
# Be sure to run `pod lib lint TestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libx265'
  s.version          = '3.0'
  s.summary          = 'x265 HEVC Encoder.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
x265 is a free software library and application for encoding video streams into the H.265/MPEG-H HEVC compression format.
                       DESC

  s.homepage         = 'https://github.com/lizhuoli1126@126.com/TestLibrary'
  s.license          = { :type => 'GPL', :file => 'LICENSE' }
  s.author           = { 'lizhuoli1126@126.com' => 'lizhuoli1126@126.com' }
  s.source           = { :git => 'https://github.com/videolan/x265.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.7'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'source/x265.{h,cpp}', 'source/x265_config.h', 'source/input/**/*.{h,c,cpp,hpp}', 'source/output/**/*.{h,c,cpp,hpp}', 'source/encoder/**/*.{h,c,cpp,hpp}', 'source/common/**/*.{h,c,cpp,hpp}'
  # Config the x265 build version string in `x265_config.h`, update when bumped version
  s.prepare_command = <<-CMD
                      ls -lash
                      cp './source/x265_config.h.in' './source/x265_config.h'
                      sed -i 's/${X265_BUILD}/169/g' './source/x265_config.h'
                      CMD
  s.public_header_files = 'source/x265.h', 'source/x265_config.h'
  s.preserve_path = 'source'
  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) X265_DEPTH=8 HAVE_STRTOK_R=1 EXPORT_C_API=1 X265_NS=x265 X265_VERSION=3.0',
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/x265/source'
  }
end
