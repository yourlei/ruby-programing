module TestModule
	Version = 1.0
	def sayHello
		p 'hello, world.'
	end
	# module_function :sayHello
end

class Perl
	include TestModule
end

perl = Perl.new
perl.sayHello
# p TestModule::Version
# TestModule.sayHello