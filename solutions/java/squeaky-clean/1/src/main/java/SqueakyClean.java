class SqueakyClean {
    static String clean(String identifier) {
        char[] charArr = identifier.toCharArray();

        for (int i = 0; i < charArr.length; i++) {
            if (Character.isWhitespace(charArr[i])) {
                charArr[i] = '_';
            }
        }

        for (int i = 0; i < charArr.length; i++) {
            switch (charArr[i]) {
                case '4': charArr[i] = 'a'; break;
                case '3': charArr[i] = 'e'; break;
                case '0': charArr[i] = 'o'; break;
                case '1': charArr[i] = 'l'; break;
                case '7': charArr[i] = 't'; break;
            }
        }

        boolean capital = false;
        StringBuilder result = new StringBuilder();
        for (char ch : charArr) {
            if (Character.isLetter(ch) || ch == '_') {
                char c = capital ? Character.toUpperCase(ch) : ch;
                result.append(c);
                capital = false;
            } 
            if (ch == '-') {
                capital = true;
            }
        }

        return result.toString();
    }
}