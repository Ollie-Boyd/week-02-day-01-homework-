class CcStudent
    attr_reader :full_name, :cohort 
    attr_writer :full_name, :cohort
    def initialize (full_name, cohort)
        @full_name = full_name
        @cohort = cohort
    end

    def talk
        return "Hello lads"
    end

    def say_fav_language(language)
        
        return "I love #{language}"
    end
end