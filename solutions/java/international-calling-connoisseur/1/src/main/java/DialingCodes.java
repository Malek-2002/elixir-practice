import java.util.Map;
import java.util.HashMap;

public class DialingCodes {
    Map<Integer, String> codes = new HashMap<>();
    
    public Map<Integer, String> getCodes() {
        return codes;
    }

    public void setDialingCode(Integer code, String country) {
        codes.put(code, country);
    }

    public String getCountry(Integer code) {
        return codes.get(code);
    }

    public void addNewDialingCode(Integer code, String country) {
        if (!codes.containsKey(code) && !codes.containsValue(country)) {
            codes.put(code, country);
        }        
    }

    public Integer findDialingCode(String country) {
        Integer foundKey = null;
        
        for (Map.Entry<Integer, String> entry : codes.entrySet()) {
            if (entry.getValue().equals(country)) {
                foundKey = entry.getKey();
                break;
            }
        }
        return foundKey;
    }

    public void updateCountryDialingCode(Integer newCode, String country) {
        Integer oldCode = findDialingCode(country);
    
        if (oldCode != null) {
            codes.remove(oldCode);
            codes.put(newCode, country);
        }
    }
}
