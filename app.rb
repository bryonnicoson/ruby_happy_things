require 'bundler'
Bundler.require

before '/*' do
	puts Rainbow('Request ------').send(:aqua)
	puts Rainbow('Host: ' + request.host + request.path).send(:cyan)
	puts Rainbow('Params: ' + params.to_s).send(:cyan)
end

after '/*' do
	puts Rainbow('Response ------').send(:green)
	puts Rainbow('Response Body: ' + response.body.to_s).send(:yellow)
end

get '/' do
	{
		:name => 'indigo montoya',
		:purpose => 'avenge my father',
		:quote => 'prepare to die'
	}.to_json
end