# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
source 'https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'
source 'https://github.com/WDModulization/WD_PodSpecs.git'

def local_pods
  pod "Business_A_Extension", path: "../Business_A_Extension"
  pod "Business_A",path:"../Business_A"
  pod 'Business_B_Extension', path: '../Business_B_Extension'
end
  
def remote_pods
    pod "Business_A_Extension"
    pod "Business_A"
    pod 'Business_B_Extension'
end

target 'MainProject' do
  # Comment the next line if you don't want to use dynamic frameworks
#  use_frameworks!
  
  use_frameworks! :linkage => :static
#  local_pods
  remote_pods
  
  
end
