require('minitest/autorun')
require('minitest/reporters')
require_relative('../a.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeclanStudent < Minitest::Test
    

    def test_get_student_name
        cc_student = CcStudent.new("James Brown", "E18")
        assert_equal("James Brown", cc_student.full_name)
    end

    def test_get_student_cohort
        cc_student = CcStudent.new("James Brown", "E18")
        assert_equal("E18", cc_student.cohort)
    end

    def test_update_student_name
        cc_student = CcStudent.new("James Brown", "E18")
        cc_student.full_name = "James Broon"
        assert_equal("James Broon", cc_student.full_name)
    end

    def test_update_student_cohort
        cc_student = CcStudent.new("James Brown", "E18")
        cc_student.cohort = "G18"
        assert_equal("G18", cc_student.cohort)
    end

    def test_can_student_talk
        cc_student = CcStudent.new("James Brown", "E18")
        assert_equal("Hello lads", cc_student.talk())
    end
    
    def test_student_can_say_fav_language
        cc_student = CcStudent.new("James Brown", "E18")
        phrase= cc_student.say_fav_language("Ruby")
        assert_equal("I love Ruby", phrase)
    end

end