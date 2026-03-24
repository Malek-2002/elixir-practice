class Fighter {

    boolean isVulnerable() {
        return true;
    }

    int getDamagePoints(Fighter fighter) {
        return 1;
    }
}

class Warrior extends Fighter{
    @Override
    public boolean isVulnerable(){
        return false;
    }

    @Override
    public int getDamagePoints(Fighter fighter) {
        if(fighter.isVulnerable()) return 10;
        else return 6;
    }

    @Override
    public String toString(){
        return "Fighter is a Warrior";
    }
}

class Wizard extends Fighter {
    boolean spellPrepared = false;
    
    @Override
    boolean isVulnerable(){
        return !spellPrepared;
    }
    
    @Override
    int getDamagePoints(Fighter fighter) {
        if(spellPrepared) return 12;
        else return 3;
    } 

    void prepareSpell() {
        spellPrepared = true;
    }

    @Override
    public String toString(){
        return "Fighter is a Wizard";
    }
}