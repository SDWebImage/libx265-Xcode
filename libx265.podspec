#
# Be sure to run `pod lib lint TestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libx265'
  s.version          = '3.4'
  s.summary          = 'x265 HEVC Encoder.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
x265 is a free software library and application for encoding video streams into the H.265/MPEG-H HEVC compression format.
                       DESC

  s.homepage         = 'http://x265.org/'
  s.license          = { :type => 'GPL' }
  s.author           = 'MulticoreWare'
  s.source           = { :git => 'https://github.com/videolan/x265.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.module_map = 'source/libx265.modulemap'

  s.source_files = 'source/x265.h', 'source/x265_config.h',
  'source/common/*.{h,c,cpp,hpp}',
  'source/input/*.{h,c,cpp,hpp}',
  'source/output/*.{h,c,cpp,hpp}',
  'source/encoder/*.{h,c,cpp,hpp}'
  s.public_header_files = 'source/x265.h', 'source/x265_config.h'

  # config the x265 build version string in `x265_config.h`, update when bumped version
  s.prepare_command = <<-CMD
                      cp './source/x265_config.h.in' './source/x265_config.h'
                      sed -i.bak 's/\\${X265_BUILD}/192/g' './source/x265_config.h'
                      echo -e "framework module libx265 {\n  umbrella header \\"x265.h\\"\n  export *\n  module * { export * }\n}" > ./source/libx265.modulemap
                      CMD
  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) X265_DEPTH=8 HAVE_STRTOK_R=1 EXPORT_C_API=1 X265_NS=x265 X265_VERSION=3.4',
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/libx265/source/ ${PODS_TARGET_SRCROOT}/source/ ${PODS_ROOT}/libx265/source/encoder/ ${PODS_TARGET_SRCROOT}/source/encoder/ ${PODS_ROOT}/libx265/source/common/ ${PODS_TARGET_SRCROOT}/source/common/',
    'USE_HEADERMAP' => 'NO' # This cause header with same name conflict
  }
  s.preserve_path = 'source'
  s.libraries = 'c++'
end
