RSpec.describe SimpleMagicCurrency do
	describe "Without default" do
		it "USD" do
			res = 10.00.to_currency(SimpleMagicCurrency::USD)
			expect(res).to eq("US$ 10.00")
		end

		it "USD - million" do
			res = 1000000.90.to_currency(SimpleMagicCurrency::USD)
			expect(res).to eq("US$ 1,000,000.90")
		end

		it "BRL" do
			res = 10.00.to_currency(SimpleMagicCurrency::BRL)
			expect(res).to eq("R$ 10,00")
		end

		it "BRL - million" do
			res = 1000000.90.to_currency(SimpleMagicCurrency::BRL)
			expect(res).to eq("R$ 1.000.000,90")
		end

		it "BTC" do
			res = 10.00.to_currency(SimpleMagicCurrency::BTC)
			expect(res).to eq("10.000000 BTC")
		end
	end	

	describe "With default" do
		it "USD" do
			SimpleMagicCurrency::DEFAULT = SimpleMagicCurrency::USD
			res = 10.00.to_currency
			expect(res).to eq("US$ 10.00")
		end

		it "USD - million" do
			res = 1000000.90.to_currency
			expect(res).to eq("US$ 1,000,000.90")
		end

		it "BRL" do
			res = 10.00.to_currency(SimpleMagicCurrency::BRL)
			expect(res).to eq("R$ 10,00")
		end

		it "BRL - million" do
			res = 1000000.90.to_currency(SimpleMagicCurrency::BRL)
			expect(res).to eq("R$ 1.000.000,90")
		end

		it "USD" do
			res = 10.00.to_currency
			expect(res).to eq("US$ 10.00")
		end
	end	

	describe "With custom options" do
		it "ETH" do
			res = 10.00.to_currency(SimpleMagicCurrency::BTC, {unit: "ETH"})
			expect(res).to eq("10.000000 ETH")
		end
	end
end