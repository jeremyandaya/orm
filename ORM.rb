class President

	attr_accessor :name
	attr_accessor :took_office
	attr_accessor :left_office
	attr_accessor :birth_year
	attr_accessor :death_year
	attr_accessor :party
	attr_accessor :home_state

	# ALL
	def self.all
		`psql -d postgres -c 'SELECT * FROM presidents;'`
	end

	# FIND
	def self.find(x)
		findPres = `psql -d postgres -c 'SELECT * FROM presidents WHERE id = #{x};'`
		puts findPres
	end

	# WHERE
	def self.where(x)
		wherePres = `psql -d postgres -c "SELECT * FROM presidents WHERE party = #{'x'};"`
		puts wherePres
	end

	# LAST
	def self.last(x)
		lastPres = `psql -d postgres -c "SELECT * FROM presidents ORDER BY #{'x'} DESC LIMIT 1;"`
		puts lastPres
	end

	# FIRST
	def self.first(x)
		firstPres = `psql -d postgres -c "SELECT * FROM presidents ORDER BY #{'x'} ASC LIMIT 1;"`
		puts firstPres
	end

	# CREATE
	def self.create(key, value)
		createPres = `psql -d postgres -c "INSERT INTO presidents #{'key'} VALUES #{'value'};"`
		puts createPres
	end

	# DESTROY
	def self.destroy(id)
		destroyPres = `psql -d postgres -c "DELETE FROM presidents WHERE id = #{id};"`
		puts destroyPres
	end

	# DESTROY ALL
	def self.destroy()
		destroyAllPres = `psql -d postgres -c "DELETE FROM presidents;"`
		puts destroyAllPres
	end
	
end



