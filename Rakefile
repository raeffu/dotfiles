require 'rake'
require 'erb'

task :default => :install

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.md LICENSE misc windows oh-my-zsh].include? file

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

task :emacs do
  replace_all = false
  Dir['.emacs.d/*'].each do |file|

    if File.exist?(File.join(ENV['HOME'], file))
      if File.identical? file, File.join(ENV['HOME'], file)
        puts "identical ~/#{file}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/#{file}"
        end
      end
    else
      link_file(file)
    end
  end
end

task :zsh_git do
  replace_all = false
  Dir.chdir("oh-my-zsh/")

  if File.identical? "git.plugin.zsh", "~/.oh-my-zsh/plugins/git/git.plugin.zsh"
    puts "identical git.plugin.zsh"
  else
    print "overwrite git.plugin.zsh? [ynq] "
    case $stdin.gets.chomp
    when 'y'
      system %Q{rm -f "$HOME/.oh-my-zsh/plugins/git/git.plugin.zsh"}
      system %Q{cp -f "git.plugin.zsh" "$HOME/.oh-my-zsh/plugins/git/"}
    when 'q'
      exit
    else
      puts "skipping git.plugin.zsh"
    end
  end
end

def replace_file(file)
  if file =~ /.emacs.d/
    system %Q{rm -rf "$HOME/#{file}"}
  else
    system %Q{rm -rf "$HOME/.#{file.sub('.erb', '')}"}
  end
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  elsif file =~ /.emacs.d/
    puts "linking ~/#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/#{file}"}
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end
