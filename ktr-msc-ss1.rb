class Character 

attr_accessor :name
attr_accessor :life
attr_accessor :agility
attr_accessor :strength
attr_accessor :wit


  def initialize(name_to_save, rpgclass_to_save)
    @name = name_to_save
    @rpgclass = rpgclass_to_save
  end


  



end


class Warrior < Character


def initialize(name_to_save)

    @name = name_to_save
    @life = 100
    @strength = 10
    @agility = 8
    @wit = 3
    @weapon_state = 0
    
    puts("#{name} : My name will go down in history !")

  end


  def attack(weapon, player)
    
    if weapon == "hammer" or weapon == "sword" and @weapon_state == 1 then
            puts("#{player.name} : Rrrrrrrr....")
            puts("#{name} : I'll crush you with my #{weapon} !")
    else
        puts("#{name} : I need to unsheathe my weapon first...")

    end

 end

 def MoveRight()
    puts("#{name} : moves right like a bad boy")
  end

  def MoveLeft()
    puts("#{name} : moves left like a bad boy")
  end

  def MoveBack()
    puts("#{name} : moves back like a bad boy")
  end

  def MoveForward()
    puts("#{name} : moves forward like a bad boy")
  end

 def unsheathe()
    puts("#{name} : unsheathes his weapon")
    @weapon_state = 1
 end


end


class Mage < Character



    def initialize(name_to_save)
    
        @name = name_to_save
        @life = 70
        @strength = 3
        @agility = 10
        @wit = 10
        @weapon_state = 0

        puts("#{name} : May the gods be with me !")

      end
    
        def attack(weapon, player)
    
            

            if weapon == "magic" or weapon == "wand" and @weapon_state == 1 then
                puts("#{player.name} : Rrrrrrrr....")
                puts("#{name} : Feel the power of my #{weapon} !")
            else
                puts("#{name} : I need to unsheathe my weapon first...")
        
            end
     end


     def MoveRight()
        puts("#{name} : moves right furtively")
      end
    
      def MoveLeft()
        puts("#{name} : moves left furtively")
      end
    
      def MoveBack()
        puts("#{name} : moves back furtively")
      end
    
      def MoveForward()
        puts("#{name} : moves forward furtively")
      end


     def unsheathe()
        puts("#{name} : unsheathes his weapon")
        @weapon_state = 1
     end
    
    
    end


Eric = Warrior.new("Eric")
Juliette = Mage.new("Juliette")
puts("-----------------------")

Eric.MoveForward
Eric.attack("sword", Juliette)
puts("-----------------------")

Juliette.unsheathe
Juliette.MoveBack
Juliette.attack("wand", Eric)
puts("-----------------------")
Eric.MoveForward
Eric.unsheathe
Eric.attack("sword", Juliette)
puts("-----------------------")




