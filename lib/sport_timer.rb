class SportTimer
  attr_accessor :people

  @@people = []

  def add_person(firstname, lastname, country)
    size = @@people.size
    id = 0
    id += 1 while id < size && !@@people[id].nil?
    person = Person.new(id, firstname, lastname, country)
    @@people.insert(id, person)
    puts "Added new person to database:
    id- #{@@people[id].id} ,
    firstname- #{@@people[id].firstname} ,
    lastname- #{@@people[id].lastname} ,
    country- #{@@people[id].country}."
  end

  def show_person(id)
    if !@@people.at(id).nil?
      puts "Person on id = #{@@people[id].id}: #{@@people[id]}"
    else
      puts "Person on id = #{id} does not exist in database."
    end
  end

  def edit_person(id, firstname, lastname, country)
    if !@@people.at(id).nil?
      @@people[id].firstname = firstname if firstname != ''
      @@people[id].lastname = lastname if lastname != ''
      @@people[id].country = country if country != ''
      puts "Updated person on id = #{@@people[id].id}."
    else
      puts "Person on id = #{id} does not exist in database."
    end
  end


  def remove_person(id)
    if !@@people.at(id).nil?
      @@people[id] = nil
      puts "Removed person on id = #{id}."
    else
      puts "Person on id = #{id} does not exist in database."
    end
  end
end
