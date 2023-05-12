RSpec.describe 'Convert and fix prices' do
  it 'returns array of strings in format $xx.xx' do
    prices = %w[$2.50 32.35$ 3$.25 9.$50 75.98]
    updated_prices = []
    prices.map do |price|
      adjusted_price = price.delete("$").rjust(5, "0")
      updated_prices << "$#{adjusted_price}"
    end

    expect(updated_prices).to eq(["$02.50", "$32.35", "$03.25", "$09.50", "$75.98"])
  end
end

