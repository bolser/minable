module MinableSupport
  def install_minable(path = nil)
    if path
      run_simple("bundle exec minable install --path '#{path}'")
    else
      run_simple("bundle exec minable install")
    end
  end

  def minable_path(prefix, path)
    if prefix
      File.join(prefix, 'minable', path)
    else
      File.join('minable', path)
    end
  end
end

World(MinableSupport)
