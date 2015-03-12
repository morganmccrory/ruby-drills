require_relative('pig-latin.rb')

describe 'Converting to Pig Latin' do
  it "should return input if input starts with vowel" do
    expect(pig_latin("igloo")).to eq("igloo")
  end

  it "should return pig latin if input starts with consonant" do
    expect(pig_latin("television")).to eq("elevisiontay")
  end
end

describe 'Converting an English sentence to Pig Latin' do
  it "should return array of every word in sentence converted to pig latin" do
    expect(convert_sentence("this is a sentence")).to eq(["isthay", "is", "a", "entencesay"])
  end
end