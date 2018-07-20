


# def moodChange(mood)

#     if mood == "Happy"
#         return erb :happy
#     end
    
#     if mood == "Sad"
#         return erb :sad
#     end
    
#     if mood == "Angry"
#         return erb :angry
#     end
# end

def questionOne(frustration)
    if frustration == "Yes"
        return 3
    end 
    
    if frustration == "Not at all"
        return 1
    end 
    
    if frustration == "I can't tell"
        return 2
    end
end


def questionTwo(energy)
    if energy == "Yes"
        return 2
    end
    
    if energy == "Not at all"
        return 1
    end
    
    if energy == "I can't tell"
        return 3
    end
end

def questionThree(anxiety)
    if anxiety == "Yes"
        return 3
    end 
    
    if anxiety == "Not at all"
        return 1
    end 
    
    if anxiety == "I can't tell"
        return 2
    end 
end

def questionFour(great)
    if great == "Totally"
        return 1
    end 
    
    if great == "Hell no"
        return 2
    end 
    
    if great == "I'm not feeling my best"
        return 3
    end 
end

def questionFive(color)
    if color == "Blue"
        return 2
    end 
    
    if color == "Red"
        return 3
    end 
    
    if color == "Yellow"
        return 1
    end 
end

def questionSix(laugh)
    if laugh == "More than I can count"
        return 1
    end 
    
    if laugh == "A couple times"
        return 3
    end 
    
    if laugh == "Maybe once"
        return 2
    end 
end

# hash = {
#     :a = 0,
#     :b = 1,
    