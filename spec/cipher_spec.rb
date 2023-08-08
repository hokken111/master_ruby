require "cipher"
describe Cipher do
  describe "#encrypt" do
    it "does something" do
      #Arrange
      string = "abc"
      shift_value = 3
      #Act
      encrypted_text = Cipher.encrypt(string, shift_value)
      #Assert
      expect(encrypted_text).not_to eq(string)
    end
    it "shifts a string properly" do
      string = "abc"
      shift_value = 1

      encrypted_text = Cipher.encrypt(string, shift_value)

      expect(encrypted_text).to eq("bcd")

    end
    it "goes around the z" do
      string = "zanzibar"
      shift_value = 6
      encrypted_text = Cipher.encrypt(string, shift_value)
      expect(encrypted_text).to eq("fgtfohgx")
    end

    it "goes around the whitespace" do
      string = "ZZ Top"
      shift_value = 6
      encrypted_text = Cipher.encrypt(string, shift_value)
      expect(encrypted_text).to eq("ffzuv")
    end
    it "can decrypt text to" do
      string = "ckriuskzusecuxrjznkcuxrjulcjo"
      shift_value = -6
      encrypted_text = Cipher.encrypt(string, shift_value)
      expect(encrypted_text).to eq("welcometomyworldtheworldofwdi")
    end



  end
end
