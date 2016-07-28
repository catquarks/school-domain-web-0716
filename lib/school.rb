class School

	attr_reader :school_name

	require 'pry'

	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end

	def roster
		@roster		
	end

	def add_student(*student_names, grade_level)
		@student_names = student_names
		if @roster[grade_level] == nil
			@roster[grade_level] = []
			@roster[grade_level] << student_names
			@roster[grade_level].flatten!
		else
			@roster[grade_level] << student_names
			@roster[grade_level].flatten!

		end
	end


	def grade(grade_level)
		@roster[grade_level.to_i]

	end

	def sort

		@roster.collect do |grade_level, student_array|
			student_array.sort!
		end

		@roster

	end

	# binding.pry

end
