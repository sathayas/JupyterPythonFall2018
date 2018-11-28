def PigLatin(inWord):
    # list of vowels
    vowels = 'aeiou'

    # converting the input to lower case
    inWord = inWord.lower()
    
    # find the first vowel, and save the consonant
    indFirst = 0     # index for the first vowel
    consonant = ''   # consonant preceding the first vowel
    while inWord[indFirst] not in vowels:
        consonant += inWord[indFirst]  # save the letter
        indFirst += 1  # advance the index for the first vowel

    # finally, the conversion
    if indFirst==0:  # i.e., the first letter is a vowel
        outWord = inWord + 'yay'
    else:   # i.e., otherwise
        outWord = inWord[indFirst:] + consonant + 'ay'

    return outWord

        
    
