class NeedForSpeed {
    private int speed;
    private int batteryDrain;
    private int distance;
    private int battery;
    
    NeedForSpeed(int speed, int batteryDrain) {
        this.speed = speed;
        this.batteryDrain = batteryDrain;
        this.distance = 0;
        this.battery = 100;
    }

    public boolean batteryDrained() {
        return this.battery < this.batteryDrain;
    }

    public int distanceDriven() {
        return distance;
    }

    public void drive() {
        if(this.battery >= this.batteryDrain) {
        this.distance += speed;
        this.battery -= this.batteryDrain;
        }
    }

    public static NeedForSpeed nitro() {
        return new NeedForSpeed(50, 4);
    }
}

class RaceTrack {
    private int distance;
    RaceTrack(int distance) {
        this.distance = distance;
    }

    public boolean canFinishRace(NeedForSpeed car) {
        while(!car.batteryDrained() && car.distanceDriven() < distance) {
            car.drive();
        }

        return car.distanceDriven() >= distance;
    }
}
