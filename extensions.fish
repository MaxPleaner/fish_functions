function extensions
  ruby -e "
    path = %{$argv}
    path = %{./*} if path.empty?
    Dir.glob(path)
    .map { |x| x.split(%{.})[-1] }
    .uniq
    .reject(&:empty?)
    .each &method(:puts)
  "
end
