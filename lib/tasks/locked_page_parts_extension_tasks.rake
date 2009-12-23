namespace :radiant do
  namespace :extensions do
    namespace :locked_page_parts do
      
      desc "Runs the migration of the Locked Page Parts extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          LockedPagePartsExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          LockedPagePartsExtension.migrator.migrate
        end
      end
      
      desc "Copies public assets of the Locked Page Parts to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        puts "Copying assets from LockedPagePartsExtension"
        Dir[LockedPagePartsExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(LockedPagePartsExtension.root, '')
          directory = File.dirname(path)
          mkdir_p RAILS_ROOT + directory, :verbose => false
          cp file, RAILS_ROOT + path, :verbose => false
        end
      end  
    end
  end
end
