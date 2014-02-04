Given /^minable is already installed$/ do
  install_minable
end

Given /^I install minable to "([^"]*)"$/ do |path|
end

Then /^the sass directories(?: with "([^"]+)" prefix)? should have been generated$/ do |prefix|
  sass_directories = ["components", "framework", "helpers", "modules", "templates"]
  sass_directories.map!{ |directory| minable_path(prefix, directory) }
  check_directory_presence(sass_directories, true)
end

Then /^the master minable partial should have been generated(?: within "([^"]+)" directory)?$/ do |prefix|
  check_file_presence([minable_path(prefix, '_minable.scss')], true)
end

Then /^minable should not have been generated$/ do
  check_directory_presence(['minable'], false)
end

Then /^the output should contain the current version of Minable$/ do
  step %(the output should contain exactly "Minable #{Minable::VERSION}\n")
end
