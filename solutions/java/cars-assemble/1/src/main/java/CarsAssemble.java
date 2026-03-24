public class CarsAssemble {

    public double productionRatePerHour(int speed) {
        double successRate;
        
        if(speed <= 4) successRate = 1;
        else if(speed <= 8) successRate = 0.9;
        else if (speed == 9) successRate = 0.8;
        else successRate = 0.77;

        return speed * 221 * successRate;
    }

    public int workingItemsPerMinute(int speed) {
        return (int)(productionRatePerHour(speed) / 60);
    }
}
