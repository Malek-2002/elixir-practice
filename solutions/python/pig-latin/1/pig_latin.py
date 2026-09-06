def translate(text):
    words = text.split()
    result = []

    vowels = "aeiou"

    for word in words:
        # Rule 1
        if word[0] in vowels or word.startswith(("xr", "yt")):
            result.append(word + "ay")
            continue

        i = 0

        while i < len(word):
            # Rule 3: qu
            if word[i:i+2] == "qu":
                i += 2
                break

            # Rule 4: y acts as the boundary,
            # but only after at least one consonant
            if word[i] == "y" and i > 0:
                break

            # Rule 2: stop at the first vowel
            if word[i] in vowels:
                break

            i += 1

        result.append(word[i:] + word[:i] + "ay")

    return " ".join(result)