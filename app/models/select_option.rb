class SelectOption
	attr_accessor :id,:name

	def initialize(id,name)
		@id=id
		@name=name
	end	

  def to_html_option
    "<option value=\"#{self.id}\">#{self.name}</option>"
  end
end
