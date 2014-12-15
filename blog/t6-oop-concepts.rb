class Party

    def initialize(year, birth_year)
      @party_year = year
      @birth_year = birth_year
      puts "Let's party like it's #{@party_year}!"
    end

    def drinking_year
      @party_year = @birth_year + 21
      puts "The best year was #{@party_year} when I turned 21!"
    end
  end


  genX = Party.new(2000, 1986)
  genX.drinking_year