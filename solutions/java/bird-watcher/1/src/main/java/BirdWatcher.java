
class BirdWatcher {
    private final int[] birdsPerDay;

    public BirdWatcher(int[] birdsPerDay) {
        this.birdsPerDay = birdsPerDay.clone();
    }

    public int[] getLastWeek() {
        return birdsPerDay;
    }

    public int getToday() {
        return birdsPerDay[6];
    }

    public void incrementTodaysCount() {
        birdsPerDay[6]++;
    }

    public boolean hasDayWithoutBirds() {
        for(int i = 0; i < 7; i++) {
            if(birdsPerDay[i] == 0) return true;
        }

        return false;
    }

    public int getCountForFirstDays(int numberOfDays) {
        int birdsCount = 0;
        numberOfDays = numberOfDays > 7? 7 : numberOfDays;
        
        for(int i = 0; i < numberOfDays; i++) {
            birdsCount += birdsPerDay[i];
        }

        return birdsCount;
    }

    public int getBusyDays() {
        int countBusyDays = 0;
        for(int i = 0; i < 7; i++) {
            if(birdsPerDay[i] >= 5) countBusyDays++;
        }

        return countBusyDays;
    }
}
