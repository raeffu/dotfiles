require 'rake'
require 'erb'

task default: :install

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.md LICENSE misc windows oh-my-zsh .emacs.d nvim].include? file

    if File.exist?(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file.sub('.erb', '')}")
        puts "identical ~/.#{file.sub('.erb', '')}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub('.erb', '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file.sub('.erb', '')}"
        end
      end
    else
      link_file(file)
    end
  end
end

desc 'link oh-my-zsh files from ~/projects/dotfiles/oh-my-zsh to ~/.oh-my-zsh. dotfiles overwrites .oh-my-zsh for given files.'
task :zsh do
  Dir['oh-my-zsh/*'].each do |file|
    traverse_omz(file)
  end
end

desc 'link lazyvim config'
task :lazyvim do
  puts "\e[32mlinking\e[0m ~/.config/nvim/lua to dotfiles/nvim/lua"
  system %(ln -s "$PWD/nvim/lua" "$HOME/.config/nvim/")
end

def traverse_omz(path)
  if File.directory?(path)
    Dir[path + '/*'].each do |file|
      traverse_omz(file)
    end
  else
    replace_file(path)
  end
end

def replace_file(file)
  system %(rm -rf "$HOME/.#{file.sub('.erb', '')}")
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "\e[32mlinking\e[0m ~/.#{file}"
    system %(ln -s "$PWD/#{file}" "$HOME/.#{file}")
  end
end
