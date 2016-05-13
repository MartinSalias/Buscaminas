Given(/^El jugador ingresa al juego$/) do
	visit '/'
end

When(/^Ingresar (\d+),(\d+) como posicion$/) do |arg1, arg2|
	visit '/'
	fill_in("x", :with => arg1)
	fill_in("y", :with => arg2)
end	

When(/^presionar "(.*?)"$/) do |pinchar|
	click_button(pinchar)
end

Then(/^Debe verse una carita feliz "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end

Then(/^Debe decir "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end
