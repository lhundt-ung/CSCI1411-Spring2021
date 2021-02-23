#! /usr/local/bin/bash
#this example file requires the Kennedy Rice Speech which can be retrieved from http://er.jsc.nasa.gov/seh/ricetalk.htm
#artifical line breaks where added throughout the document for demonstration purposes

#escape special characters with \
#this will cause bash to interpret the charaters litterally

#File = KennedyRiceSpeech.txt

# EXAMPLE 1
echo "How many times is the word 'moon' mentioned in Kennedy's Rice University Speech?"
grep -c moon KennedyRiceSpeech.txt



# EXAMPLE 2
echo "How many three letter words appear in the document?"
grep '\<...\>' KennedyRiceSpeech.txt -c



# EXAMPLE 3
echo "Print out the number of lines that contain the word 'space' OR 'earth'"
grep -c -w -e 'space' -e 'earth' KennedyRiceSpeech.txt


# EXAMPLE 4
echo "Print out the number of lines that contain the word 'we' AND 'this'"
grep -w 'we' KennedyRiceSpeech.txt


# EXAMPLE 5
echo "Print the line numbers of all blank lines"

