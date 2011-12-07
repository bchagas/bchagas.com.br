require 'net/ssh'

class Deploy < Thor
	desc 'master', 'Deploy the master branch to production server'
	def master
		Net::SSH.start('web2.phibox.com', 'webadmin') do |ssh|
			ssh.exec!('/home/webadmin/bin/bchagas.master.sh') do |channel, stream, data|
				print data
			end
		end
	end
end

