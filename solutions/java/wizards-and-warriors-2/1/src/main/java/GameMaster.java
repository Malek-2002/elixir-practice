public class GameMaster {

    public String describe(Character character) {
        int level = character.getLevel();
        int hitPoints = character.getHitPoints();
        String characterClass = character.getCharacterClass();

        return "You're a level " + level + " " + characterClass + " with " + hitPoints + " hit points.";
    }
    
    public String describe(Destination destination) {
        String name = destination.getName();
        int inhabitants = destination.getInhabitants();

        return "You've arrived at " + name + ", which has " + inhabitants + " inhabitants.";
    }
    
    public String describe(TravelMethod method) {
        String travelMethod = method == TravelMethod.WALKING? "by walking." : "on horseback.";
        return "You're traveling to your destination " + travelMethod;
    }

    public String describe(Character character, Destination destination, TravelMethod method) {
        return describe(character) + " " + describe(method) + " " + describe(destination);
    }

    public String describe(Character character, Destination destination) {
        return describe(character) + " " + describe(TravelMethod.WALKING) + " " + describe(destination);
    }
    
}
