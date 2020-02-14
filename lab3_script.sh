#!/bin/bash
# Authors : Brian Teklits
# Date : 2/7/20

#Problem 1 Code:
# match any email:"@.+\.com"
# matches @, at least one character, then .com
# match 303 phone numbers:
# "^303-[0-9]{3}-[0-9]{4}"
# matches literal 303, literal -, any 3 digits, literal -, any 4 digits

echo "Input a filename: "
read fileName
echo "Input a regex string: "
read regex
grep -E $regex $fileName
echo "Number of Phone Numbers: "
grep -E -c "^[0-9]{3}-[0-9]{3}-[0-9]{4}" regex_practice.txt
echo "Number of emails: "
grep -E -c "@.+\.com" regex_practice.txt
echo "Phone Numbers beginning with 303 area code: "
grep -E "^303-[0-9]{3}-[0-9]{4}" regex_practice.txt
grep -E "@geocities.com" regex_practice.txt >> email_results.txt

