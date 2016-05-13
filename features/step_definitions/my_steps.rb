Given(/^El jugador ingresa al juego$/) do
	visit '/'
end

When(/^Ingresar (\d+),(\d+) como posicion$/) do |arg1, arg2|
	fill_in("x", :with => arg1)
	fill_in("y", :with => arg2)
	click_button("Pinchar")
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

Then(/^Debe verse el puntaje "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end

Then(/^la celda "(.*?)" debe mostrar "(.*?)"$/) do |pos, valorCelda|
	

  	last_response.should have_xpath( "//td[@id=\"#{pos}\"]") do |td|
    td.should contain( valorCelda )
  end
end



