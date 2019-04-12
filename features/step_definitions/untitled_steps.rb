Given(/^Ingreso a la aplicacion$/) do
    visit '/'
end

Then(/^Veo una imagen$/) do
    expect(page).to have_css("img")
end

Then(/^Veo un campo para ingresar la palabra$/) do
    expect(page).to have_css("input")
end

When(/^Veo la imagen "([^"]*)"$/) do |imageWord|
    visit "/?force=#{imageWord}"
end

When(/^Ingreso la palabra "([^"]*)"$/) do |word|
    @points = 0
    fill_in("word", with: word)
    click_button("Ingresar Palabra")
end

Then(/^Mi puntaje aumenta$/) do
    @resultPoints =  page.first('.Score span').text.to_i
    expect(@points).to eq @resultPoints - 1
end

Then(/^Mi puntaje decrece$/) do
    @resultPoints =  page.first('.Score span').text.to_i
    expect(@points).to eq @resultPoints + 1
end




Then(/^Veo un boton para reiniciar el juego$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^Hago click en reiniciar juego$/) do
    pending # Write code here that turns the phrase above into concrete actions
end

Then(/^El juego termina y vuelve a comenzar$/) do
    pending # Write code here that turns the phrase above into concrete actions
end
