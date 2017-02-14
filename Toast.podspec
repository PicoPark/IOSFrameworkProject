Pod::Spec.new do |spec|
  spec.name = "ToastESGI"
  spec.version = "1.0"
  spec.summary = "Simple Framework pour afficher des toasts personnalisés."
  spec.homepage = "https://github.com/PicoPark/IOSFrameworkProject"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Salomé" => 'salome.russier@gmail.com' ,"Romain" => 'brunie.romain@outlook.fr', "David" => 'fournierdavid49@yahoo.fr'}

  spec.platform = :ios, "10.1"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/PicoPark/IOSFrameworkProject/Toast.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "IOSFrameworkProject/**/*.{h,swift}"

end
