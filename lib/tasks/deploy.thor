
class Deploy < Thor
	desc 'master', 'Deploy the master branch to production server'
	def master
		`ssh webadmin@web2.phibox.com '/home/webadmin/bin/bchagas.master.sh'`
	end
end

