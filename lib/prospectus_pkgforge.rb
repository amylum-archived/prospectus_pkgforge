require 'prospectus'
require 'pkgforge'

module ProspectusPkgforge
  ##
  # Helper for automatically adding pkgforge deps
  module DepItems
    def self.extended(other) # rubocop:disable Metrics/MethodLength
      other.deps do
        PkgForge.load_from_file.deps.each do |dep_name, current_hash|
          current_version = current_hash[:version]
          item do
            name dep_name

            expected do
              github_release
              repo "amylum/#{dep_name}"
            end

            actual do
              static
              set current_version
            end
          end
        end
      end
    end
  end
end
