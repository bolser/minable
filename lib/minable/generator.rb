require 'minable/version'
require 'fileutils'
require 'thor'

module Minable
  class Generator < Thor
    map ['-v', '--version'] => :version

    desc 'install', 'Install Minable into your project'
    method_options path: :string, force: :boolean
    def install
      if minable_files_already_exist? && !options[:force]
        puts 'Minable files already installed, doing nothing.'
      else
        install_files
        puts 'Minable files installed to #{install_path}/'
      end
    end

    desc 'update', 'Update Minable'
    method_options path: :string
    def update
      if minable_files_already_exist?
        remove_minable_directory
        install_files
        puts 'Minable files updated.'
      else
        puts 'No existing minable installation. Doing nothing.'
      end
    end

    desc 'version', 'Show Minable version'
    def version
      say 'Minable #{Minable::VERSION}'
    end

    private

    def minable_files_already_exist?
      install_path.exist?
    end

    def install_path
      @install_path ||= if options[:path]
          Pathname.new(File.join(options[:path], '.'))
        else
          Pathname.new('.')
        end
    end

    def install_files
      make_install_directory
      copy_in_scss_files
    end

    def remove_minable_directory
      FileUtils.rm_rf('minable')
    end

    def make_install_directory
      FileUtils.mkdir_p(install_path)
    end

    def copy_in_scss_files
      FileUtils.cp_r(all_stylesheets, install_path)
    end

    def all_stylesheets
      Dir['#{stylesheets_directory}/*']
    end

    def stylesheets_directory
      File.join(top_level_directory, 'app', 'assets', 'stylesheets')
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
  end
end
