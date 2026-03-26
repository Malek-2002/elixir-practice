public class Twofer {
    public String twofer(String name) {
        String out = name == null? "you" : name;

        return "One for " + out + ", one for me.";
    }
}
