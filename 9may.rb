RSpec.describe 'reverse' do
  it "reverses a string" do
    def reverse(string)
      string.reverse
    end

    phrase = "Hello World!"
    expect(reverse(phrase)).to eq("!dlroW olleH")
  end

  it "reverses without using enumerable" do 
    def reverse(string)
      new_string = []
      split_string = string.split("") # splitting each character in the string and becomes array
      string.length.times do # repeat process for each character in the string
        new_string << split_string.pop # adds last character (element) of the array to the empty array 
      end 
      new_string.join # returns new_string array joined back together as string
    end
      
    phrase = "Hello World!"
    expect(reverse(phrase)).to eq("!dlroW olleH")
  
    # Still works with longer sentences?
    phrase2 = "Hello, my name is Weston and I love my cats Sen and Marmalade."
    expect(reverse(phrase2)).to eq(phrase2.reverse)
  end


  it "works with longer sentences" do
    def reverse(string)
      new_string = []
      split_string = string.split("") # splitting each character in the string and becomes array
      string.length.times do # repeat process for each character in the string
        new_string << split_string.pop # adds last character (element) of the array to the empty 
      end 
      new_string.join # returns new_string array joined back together as string
    end

  end
end