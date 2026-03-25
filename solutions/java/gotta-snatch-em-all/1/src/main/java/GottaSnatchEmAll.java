import java.util.List;
import java.util.Set;
import java.util.HashSet;
    
class GottaSnatchEmAll {

    static Set<String> newCollection(List<String> cards) {
        Set<String> set = new HashSet<String>(cards);
        return set;
    }

    static boolean addCard(String card, Set<String> collection) {
        return collection.add(card);
    }

    static boolean canTrade(Set<String> myCollection, Set<String> theirCollection) {
        boolean iHaveSomethingTheyDont = myCollection.stream()
                                                     .anyMatch(card -> !theirCollection.contains(card));
        boolean theyHaveSomethingIDont = theirCollection.stream()
                                                        .anyMatch(card -> !myCollection.contains(card));
        return iHaveSomethingTheyDont && theyHaveSomethingIDont;
    }

    static Set<String> commonCards(List<Set<String>> collections) {
            if (collections.isEmpty()) return Set.of();
    
            Set<String> common = new HashSet<>(collections.get(0));
    
            for (Set<String> col : collections) {
                common.retainAll(col);
            }
    
            return common;
        }

    static Set<String> allCards(List<Set<String>> collections) {
        Set<String> all = new HashSet<>();
        for (Set<String> col : collections) {
            all.addAll(col); // add all cards from this collection
        }
        return all;
    }
}
