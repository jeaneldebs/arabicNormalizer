require "arabicNormalizer/version"

module ArabicNormalizer
  ALEF = "\u0627"
  ALEF_MADDA = "\u0622"
  ALEF_HAMZA_ABOVE = "\u0623"
  ALEF_HAMZA_BELOW = "\u0625"

  WAW = "\u0648"
  WAW_HAMZA = "\u0624"

  YEH = "\u064A"
  YEH_HAMZA = "\u0626"
  DOTLESS_YEH = "\u0649" #ALEF MAKSOURA

  TEH_MARBOUTA = "\u0629"
  HEH = "\u0647"

  TATWEEL = "\u0640"

  FATHATAN = "\u064B"
  DAMMATAN = "\u064C"
  KASRATAN = "\u064D"
  FATHA = "\u064E"
  DAMMA = "\u064F"
  KASRA = "\u0650"
  SHADDA = "\u0651"
  SUKUN = "\u0652"

  def self.normalize(string)
    s = string.split("")

    s.map! do |elem|
      case elem
      when ALEF_MADDA, ALEF_HAMZA_ABOVE, ALEF_HAMZA_BELOW
        ALEF
      when YEH_HAMZA, DOTLESS_YEH
        YEH
      when TEH_MARBOUTA
        HEH
      when WAW_HAMZA
        WAW
      when TATWEEL, FATHATAN, DAMMATAN, KASRATAN, FATHA, DAMMA, KASRA, SHADDA, SUKUN
        ""
      else
        elem
      end
    end
    s.join("")
  end
end
