class String

  def to_persian
    zero = 0x06f0
    str = self.to_s
    (0..9).each do |x|

      begin
        str[x.to_s] = (zero + x).chr("utf-8")
      rescue IndexError
      end

    end
    str
  end

end
