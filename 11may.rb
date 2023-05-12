RSpec.describe 'Fri, May 12 Warmup' do
  it 'turn a sentence into an array, capitalize each word, and return the new sentence' do
    string = "Think of a Class like a blueprint for a house and an Instance as an actual house."
    new_string = string.split(' ').to_a.map do |word|
      word.capitalize
    end.join(' ')

    expect(new_string).to eq("Think Of A Class Like A Blueprint For A House And An Instance As An Actual House.")
  end
end