require 'spec_helper'

describe ArabicNormalizer do
  it 'has a version number' do
    expect(ArabicNormalizer::VERSION).not_to be nil
  end

  it "Normalizer should replace ALEF_HAMZA_ABOVE by ALEF" do
    test = "أسبوع"
    expect(ArabicNormalizer::normalize(test)).to eq "اسبوع"
  end

  it "Normalizer should replace ALEF_HAMZA_BELOW by ALEF" do
    test = "إنسان"
    expect(ArabicNormalizer::normalize(test)).to eq "انسان"
  end

  it "Normalizer should replace ALEF_MADDA by ALEF" do
    test = "الآن"
    expect(ArabicNormalizer::normalize(test)).to eq "الان"
  end

  it "Normalizer should replace WAW_HAMZA by WAW" do
    test = "مسؤول"
    expect(ArabicNormalizer::normalize(test)).to eq "مسوول"
  end

  it "Normalizer should replace YEH_HAMZA by YEH" do
    test = "شيئ"
    expect(ArabicNormalizer::normalize(test)).to eq "شيي"
  end

  it "Normalizer should replace DOTLESS_YEH by YEH" do
    test = "صدى"
    expect(ArabicNormalizer::normalize(test)).to eq "صدي"
  end

  it "Normalizer should replace TEH_MARBOUTA by HEH" do
    test = "عودة"
    expect(ArabicNormalizer::normalize(test)).to eq "عوده"
  end

  it "Normalizer should remove TATWEEL" do
    test = "قــــــال"
    expect(ArabicNormalizer::normalize(test)).to eq "قال"
  end

  it "Normalizer should remove FATHATAN" do
    test = "شهراً"
    expect(ArabicNormalizer::normalize(test)).to eq "شهرا"
  end

  it "Normalizer should remove DAMMATAN" do
    test = "مكتبٌ"
    expect(ArabicNormalizer::normalize(test)).to eq "مكتب"
  end

  it "Normalizer should remove KASRATAN" do
    test = "شهرٍ"
    expect(ArabicNormalizer::normalize(test)).to eq "شهر"
  end

  it "Normalizer should remove FATHA" do
    test = "ولدَ"
    expect(ArabicNormalizer::normalize(test)).to eq "ولد"
  end

  it "Normalizer should remove DAMMA" do
    test = "ولدُ"
    expect(ArabicNormalizer::normalize(test)).to eq "ولد"
  end

  it "Normalizer should remove KASRA" do
    test = "شمسِ"
    expect(ArabicNormalizer::normalize(test)).to eq "شمس"
  end

  it "Normalizer should remove SHADDA" do
    test = "فعّال"
    expect(ArabicNormalizer::normalize(test)).to eq "فعال"
  end

  it "Normalizer should remove SUKUN" do
    test = "كسْر"
    expect(ArabicNormalizer::normalize(test)).to eq "كسر"
  end
end
