require 'rspec'
require 'pig_latin_one'

describe 'pig_latin_one' do
  it 'translates a vowel word simply' do
    pig_latin_one('uno').should eq 'unoway'
  end

  it 'translates a single consonant simply' do
    pig_latin_one('card').should eq 'ardcay'
  end

  it 'translates multiple consonants simply' do
    pig_latin_one('christmas').should eq 'istmaschray'
  end

  it 'translates qu and squ simply' do
    pig_latin_one('squirrel').should eq 'irrelsquay'
    pig_latin_one('queen').should eq 'eenquay'
  end

  it 'translates whole sentences' do
    pig_latin_one('squirrel chose one book').should eq 'irrelsquay osechay oneway ookbay'
  end
end
