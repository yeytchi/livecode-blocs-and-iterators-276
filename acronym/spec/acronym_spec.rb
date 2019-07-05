# Ce qui est renvoyé est une string
# si on rentre un texte en min on récupère un acronym maj
# si on rentre un texte en maj on récupère un acronym maj
# sin on rentre une string vide on récupère une string vide

require_relative '../acronym.rb'

describe '#acronymize' do
  it 'I want an emty string to render an empty string' do
    actual = acronymize('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it 'I want an downcase string to render an upcase acronym' do
    actual = acronymize('alternative current direct current')
    expected = 'ACDC'
    expect(actual).to eq(expected)
  end

  it 'I want an upcase string to render an upcase acronym' do
    actual = acronymize('READ THE FUCKING MANUAL')
    expected = 'RTFM'
    expect(actual).to eq(expected)
  end
end
