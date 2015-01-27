class TipCalculator
	attr_accessor :bill, :tip, :num_people
	attr_reader :total_bill, :my_share

	def initialize
		#get user data
		get_the_bill
		get_the_tip_amount
		get_party_size
	end
	def start
		total_bill
		my_share
	end
	def total_bill
		@total = @bill * (1+ (@tip/100.00))
		puts "The total bill is #{@total}"
	end
	def my_share
		puts "My share of the bill is #{@total/@num_people}"
	end
	def get_the_bill
		@bill = get_a_float "Please enter the bill amount"
	end
	def get_the_tip_amount
		@tip = get_a_float "Enter the tip amount"
	end
	def get_party_size
		@num_people = get_a_float "Please enter the number of people in your party" 
	end

	private
	def get_a_float(request)
		puts request
		gets.to_f
	end
end

#collecting user input
tip_cal = TipCalculator.new
tip_cal.start
