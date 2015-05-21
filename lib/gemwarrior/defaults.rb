# lib/gemwarrior/constants.rb
# List of constant values

module Gemwarrior
  PROGRAM_NAME = 'Gem Warrior'
  SPLASH_MESSAGE = 'Welcome to Gem Warrior, where randomized fortune is just as likely as mayhem.'
  QUIT_MESSAGE = 'Thanks for playing the game. Until next time...'
  RESUME_MESSAGE = 'Back to adventuring!'
  SEPARATOR = '==========================================================='
  CHANGE_PARAMS = 'Options: name'
  
  DANGER_LEVEL = {:none => 0, :low => 15, :moderate => 30, :high => 55, :assured => 100}
      
  module Errors
    ERROR_COMMAND_INVALID = 'That\'s not something the game yet understands.'
    ERROR_INVENTORY_EMPTY = '...and find you currently have diddly-squat, which is nothing.'
    ERROR_INVENTORY_REMOVE_INVALID = 'Your inventory does not contain that item, so you can\'t drop it.'
    ERROR_ITEM_LOC_INVALID = 'You don\'t see that there.'
    ERROR_ITEM_INVENTORY_INVALID = 'You don\'t possess that.'
    ERROR_TAKE_PARAM_MISSING = 'You can\'t just take. You gotta choose something.'
    ERROR_TAKE_ITEM_UNTAKEABLE = 'That would be great if you could take that thing, wouldn\'t it? Well, it\'s not so great for you right now.'
    ERROR_TAKE_ITEM_INVALID = 'That item doesn\'t exist here.'
    ERROR_DROP_PARAM_MISSING = 'You can\'t just drop indiscriminately. You gotta choose something.'
    ERROR_GO_DIR_MISSING = 'Just wander aimlessly? A direction would be nice.'
    ERROR_GO_DIR_INVALID = 'The place in that direction is far, far, FAR too dangerous. You should try a different way.'
    ERROR_CHANGE_PARAM_MISSING = 'Ch-ch-changes...aren\'t happening because you didn\'t specify what to change.'
    ERROR_CHANGE_PARAM_INVALID = 'You can\'t change that...yet.'
  end
    
  module AttributePools
    # character pools
    CHAR_UPPER_POOL = (65..90).map{ |i| i.chr }
    CHAR_LOWER_POOL = (97..122).map{ |i| i.chr }
    CHAR_LOWER_VOWEL_POOL = ['a','e','i','o','u','y']
      
    # attribute pools
    FACE_DESC  = ['smooth', 'tired', 'ruddy', 'moist', 'shocked']
    HANDS_DESC = ['worn', 'balled into fists', 'relaxed', 'cracked', 'tingly', 'mom\'s spaghetti']
    MOOD_DESC  = ['calm', 'excited', 'depressed', 'tense', 'lackadaisical', 'angry', 'positive']

    PLYR_DESC_DEFAULT = 'Picked to do battle against a wizened madman for a shiny something or other for world-saving purposes, you\'re actually fairly able, as long as you\'ve had breakfast first.'
  
    PLYR_LEVEL_DEFAULT = 1
    PLYR_XP_DEFAULT = 0
    PLYR_HP_CUR_DEFAULT = 10
    PLYR_HP_MAX_DEFAULT = 10
    PLYR_STAM_CUR_DEFAULT = 20
    PLYR_STAM_MAX_DEFAULT = 20
    PLYR_ATK_LO_DEFAULT = 1
    PLYR_ATK_HI_DEFAULT = 2
    PLYR_ROX_DEFAULT = 0
  end
      
  module Entities
    module Locations
      LOC_ID_HOME = 0
      LOC_NAME_HOME = 'Home'
      LOC_DESC_HOME = 'The little, unimportant, decrepit hut that you live in.'
      LOC_CONNECTIONS_HOME = {:north => 4, :east => 1, :south => nil, :west => 3}
    
      LOC_ID_CAVE_ENTRANCE = 1
      LOC_NAME_CAVE_ENTRANCE = 'Cave (Entrance)'
      LOC_DESC_CAVE_ENTRANCE = 'A nearby, dank cavern\'s entrance, surely filled with stacktites, stonemites, and rocksites.'
      LOC_CONNECTIONS_CAVE_ENTRANCE = {:north => nil, :east => 2, :south => nil, :west => 0}
      
      LOC_ID_CAVE_ROOM1 = 2
      LOC_NAME_CAVE_ROOM1 = 'Cave (Room1)'
      LOC_DESC_CAVE_ROOM1 = 'Now inside the first cavernous room, you confirm that there are stacktites, stonemites, rocksites, and even one or two pebblejites.'
      LOC_CONNECTIONS_CAVE_ROOM1 = {:north => nil, :east => nil, :south => nil, :west => 1}
  
      LOC_ID_FOREST = 3
      LOC_NAME_FOREST = 'Forest'
      LOC_DESC_FOREST = 'Trees exist here, in droves.'
      LOC_CONNECTIONS_FOREST = {:north => nil, :east => 0, :south => nil, :west => nil}
  
      LOC_ID_SKYTOWER = 4
      LOC_NAME_SKYTOWER = 'Emerald\'s Sky Tower'
      LOC_DESC_SKYTOWER = 'The craziest guy that ever existed is around here somewhere amongst the cloud floors, snow walls, and ethereal vibe.'
      LOC_CONNECTIONS_SKYTOWER = {:north => nil, :east => nil, :south => 0, :west => nil}
    end
    
    module Monsters
      MOB_ID_ALEXANDRAT = 0
      MOB_NAME_ALEXANDRAT = 'Alexandrat'
      MOB_DESC_ALEXANDRAT = 'Tiny, but fierce, color-changing rodent.'
      MOB_LEVEL_ALEXANDRAT = 1..2
      
      MOB_ID_AMBEROO = 1
      MOB_NAME_AMBEROO = 'Amberoo'
      MOB_DESC_AMBEROO = 'Fossilized and jumping around like an adorably dangerous threat from the past.'
      MOB_LEVEL_AMBEROO = 1..2
      
      MOB_ID_AMETHYSTLE = 2
      MOB_NAME_AMETHYSTLE = 'Amethystle'
      MOB_DESC_AMETHYSTLE = 'Sober and contemplative, it moves with purplish tentacles swaying in the breeze.'
      MOB_LEVEL_AMETHYSTLE = 1..3
      
      MOB_ID_AQUAMARINE = 3
      MOB_NAME_AQUAMARINE = 'Aquamarine'
      MOB_DESC_AQUAMARINE = 'It is but one of the few, the proud, the underwater.'
      MOB_LEVEL_AQUAMARINE = 2..4
      
      MOB_ID_APATIGER = 4
      MOB_NAME_APATIGER = 'Apatiger'
      MOB_DESC_APATIGER = 'Apathetic about most everything as it lazes around, save for eating you.'
      MOB_LEVEL_APATIGER = 3..5
      
      MOB_ID_BLOODSTORM = 5
      MOB_NAME_BLOODSTORM = 'Bloodstorm'
      MOB_DESC_BLOODSTORM = 'A literal swirling, maniacal vortex of human hemoglobin.'
      MOB_LEVEL_BLOODSTORM = 5..6
      
      MOB_ID_CITRINAGA = 6
      MOB_NAME_CITRINAGA = 'Citrinaga'
      MOB_DESC_CITRINAGA = 'Refreshing in its shiny, gleaming effectiveness at ending your life.'
      MOB_LEVEL_CITRINAGA = 3..4
      
      MOB_ID_CORALIZ = 7
      MOB_NAME_CORALIZ = 'Coraliz'
      MOB_DESC_CORALIZ = 'Small blue lizard that slithers around, nipping at your ankles.'
      MOB_LEVEL_CORALIZ = 2..3
      
      MOB_ID_CUBICAT = 8
      MOB_NAME_CUBICAT = 'Cubicat'
      MOB_DESC_CUBICAT = 'Perfectly geometrically cubed feline, fresh from its woven enclosure, claws at the ready.'
      MOB_LEVEL_CUBICAT = 4..5
      
      MOB_ID_DIAMAN = 9
      MOB_NAME_DIAMAN = 'Diaman'
      MOB_DESC_DIAMAN = 'Crystalline structure in the form of a man, lumbering toward you, with outstretched, edged pincers.'
      MOB_LEVEL_DIAMAN = 6..7
  
      MOB_NAME_DEFAULT = 'Rocky'
      MOB_DESC_DEFAULT = 'It\'s a monster, and it\'s not happy.'
    end

    module Items
      ITEM_ID_STONE = 0
      ITEM_NAME_STONE = 'stone'
      ITEM_DESC_STONE = 'A small, sharp mega pebble, suitable for tossing in amusement, and perhaps combat.'
      ITEM_ID_BED = 1
      ITEM_NAME_BED = 'bed'
      ITEM_DESC_BED = 'The place where you sleep when you\'re not adventuring.'
      ITEM_ID_STALACTITE = 2
      ITEM_NAME_STALACTITE = 'stalactite'
      ITEM_DESC_STALACTITE = 'Long protrusion of cave adornment, broken off and fallen to the ground, where the stalagmites sneer at it from.'
      ITEM_ID_FEATHER = 3
      ITEM_NAME_FEATHER = 'feather'
      ITEM_DESC_FEATHER = 'Soft and tender, unlike the craven bird that probably shed it.'
      ITEM_ID_GUN = 4
      ITEM_NAME_GUN = 'gun'
      ITEM_DESC_GUN = 'Pew pew goes this firearm you wield, ifn\'t it weren\'t unloaded.'
  
      ITEM_NAME_DEFAULT = 'thing'
      ITEM_DESC_DEFAULt = 'Something truly interesting and worth your time to look at and possess.'
    end
  end
end