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
    expect(page).to have_css("img[src='/image']")
end

When(/^Ingreso la palabra "([^"]*)"$/) do |word|
    fill_in("word", with: word)
    click_button("Ingresar Palabra")
end

Then(/^Veo el mensaje "([^"]*)"$/) do |resultMessage|
  expect(page.has_content?resultMessage).to eq true
end

When(/^Hago click en reiniciar juego$/) do
    pending # Write code here that turns the phrase above into concrete actions
end

Then(/^El juego termina y vuelve a comenzar$/) do
    pending # Write code here that turns the phrase above into concrete actions
end
