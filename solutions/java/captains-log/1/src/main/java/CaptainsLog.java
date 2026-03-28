import java.util.Random;

public class CaptainsLog {

    private Random random;

    public CaptainsLog(Random random) {
        this.random = random;
    }

    public char randomPlanetClass() {
        char[] classes = {'D', 'H', 'J', 'K', 'L', 'M', 'N', 'R', 'T', 'Y'};
        return classes[random.nextInt(classes.length)];
    }

    public String randomShipRegistryNumber() {
        int number = 1000 + random.nextInt(9000); // 1000–9999
        return "NCC-" + number;
    }

    public double randomStardate() {
        return 41000.0 + (random.nextDouble() * 1000.0);
    }
}