require 'cipher'

describe 'encrypt' do

	context "given 'a' and a cipher of 5" do
		it "returns 'f'" do
			expect(encrypt("a", 5)).to eql("f")
		end
	end

	context "given 'Z' and a cipher of 3" do
		it "returns 'C'" do
			expect(encrypt("Z", 3)).to eql("C")
		end
	end

	context "given 'foobar' and a cipher of 5" do
		it "returns 'kttgfw'" do
			expect(encrypt("foobar", 5)).to eql("kttgfw")
		end
	end

	context "given 'What a string!' and a cipher of 3" do
		it "returns 'Zkdw d vwulqj!'" do
			expect(encrypt("What a string!", 3)).to eql("Zkdw d vwulqj!")
		end
	end

	context "given 'What a string!' and a cipher of -3" do
		it "returns 'Texq x pqofkd!'" do
			expect(encrypt("What a string!", -3)).to eql("Texq x pqofkd!")
		end
	end
end
