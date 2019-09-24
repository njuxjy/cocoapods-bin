require 'cocoapods'
require 'cocoapods-bin/config/config'

module Pod
  class Source
    class Manager
    	# 源码 source
    	def code_source
    		source_with_name_or_url(CBin.config.code_repo_url)
		end
		
    	# 备用源码 source 列表
		def code_source_backups
			CBin.config.code_repo_url_backups.split(',').map { |url| source_with_name_or_url(url) }
    	end

    	# 二进制 source
    	def binary_source
    		source_with_name_or_url(CBin.config.binary_repo_url)
    	end
    end
  end
end