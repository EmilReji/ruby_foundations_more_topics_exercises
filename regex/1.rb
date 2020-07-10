=begin
Write a method that returns true if its argument looks like a URL, false if it does not.

PEDAC:
Understand the problem:
Input: String representing potential url
Output: boolean value for whether or not input is a url
Mental model:
Takes string and verifies using regex if criteria for url is present
Based on that returns true/false

Examples/Test Cases and Algorithm:
Can be start with http or https
Needs :// after
Then needs main domain followed by period (one or more of any character)
Then needs final domain (com for now)
Can be followed by forward slash then any series of text (one or more of any character)
Exception is spaces; none allowed in url

extras:
https://www.cnet.com/forums/discussions/what-special-characters-can-you-use-in-a-domain-name-271485/
domain name can contain letters, numbers, and hyphens; nothing else
domain name excluding TLD and period can be up to 63 characters long
TLD types: http://data.iana.org/TLD/tlds-alpha-by-domain.txt
=end

def url?(str)
  str.match?(/\Ahttp(s)?\:\/\/[A-Za-z0-9-]+.com(\/[A-Za-z0-9-]+)*\Z/)
  #str.match?(/\Ahttps?:\/\/\S+\z/) # given answer
end