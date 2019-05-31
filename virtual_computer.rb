  # TODO
  
  =begin
    What if you add a method that updates 
    files? Or deletes them? What if you want 
    to add additional parameters to initialize or create?
  =end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
 		
    puts "The #{filename} was created by the #{@name} at #{time}"
  end
  
  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("oly","12345")
