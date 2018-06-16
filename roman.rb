class Fixnum
  def to_roman
    if self >= 1 && self <= 3
      return "I" * self
    elsif self == 4
      return "IV"
    elsif self >= 5 && self <= 8
      return "V" + "I" * (self - 5)
    elsif self == 9
      return "IX"
    elsif self >= 10 && self <= 13
      return "X" + "I" * (self - 10)
    elsif self == 14
      return "XIV"
    elsif self >= 15 && self <= 18
      return "XV" + "I" * (self - 15)
    elsif self == 19
      return "XIX"
    elsif self >= 20 && self <= 23
      return "XX" + "I" * (self - 20)
    elsif self == 24
      return "XXIV"
    elsif self >= 25 && self <= 28
      return "XXV" + "I" * (self - 25)
    elsif self == 29
      return "XXIX"
    elsif self >= 30 && self <= 33
      return "XXX" + "I" * (self - 30)
    elsif self == 34
      return "XXXIV"
    elsif self >= 35 && self <= 38
      return "XXXV" + "I" * (self - 35)
    elsif self == 39
      return "XXXIX"
    elsif self >= 40 && self <= 43
      return "XL" + "I" * (self - 40)
    elsif self == 44
      return "XLIV"
    elsif self >= 45 && self <= 48
      return "XLV" + "I" * (self - 45)
    elsif self == 49
      return "XLIX"
    elsif self >= 50 && self <= 53
      return "L" + "I" * (self - 50)
    elsif self == 54
      return "LIV"
    elsif self >= 55 && self <= 58
      return "LV" + "I" * (self - 55)
    elsif self == 59
      return "LIX"
    elsif self >= 60 && self <= 63
      return "LX" + "I" * (self - 60)
    elsif self == 64
      return "LXIV"
    elsif self >= 65 && self <= 68
      return "LXV" + "I" * (self - 65)
    elsif self == 69
      return "LXIX"
    elsif self >= 70 && self <= 73
      return "LXX" + "I" * (self - 70)
    elsif self == 74
      return "LXXIV"
    elsif self >= 75 && self <= 78
      return "LXXV" + "I" * (self - 75)
    elsif self == 79
      return "LXXIX"
    elsif self >= 80 && self <= 83
      return "LXXX" + "I" * (self - 80)
    elsif self == 84
      return "LXXXIV"
    elsif self >= 85 && self <= 88
      return "LXXXV" + "I" * (self - 85)
    elsif self == 89
      return "LXXXIX"
    elsif self >= 90 && self <= 93
      return "XC" + "I" * (self - 90)
    elsif self == 94
      return "XCIV"
    elsif self >= 95 && self <= 98
      return "XCV" + "I" * (self - 95)
    elsif self == 99
      return "XCIX"
    elsif self == 100
      return "C"
    end
    return ""
  end
end

