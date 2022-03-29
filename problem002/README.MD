**en:**
Here's a quick tsask:
Create a ruby program that can be called from the command line as such: `./hiring_test 12 45` or `./hiring_test 42 19`.

The program must print every number between ARGV[0] and ARGV[1], inclusive with the following condition:

If the number is divisible by 5, print Fire.
If the number is divisible by 7, print Water.
If the number is divisible by 35, print FireWater.
Otherwise print the number.
```
<Example>
$ ./interview_response.txt 0 40
FireWater
1
2
3
4
Fire
6
Water
8
9
Fire
11
12
13
Water
Fire
16
17
18
19
Fire
Water
22
23
24
Fire
26
27
Water
29
Fire
31
32
33
34
FireWater
36
37
38
39
Fire
</Example>
```
Please send an email to si@\*\*\*.com with a CC to tc@\*\*\*.com having

subject: Solution to puzzle
body: #the source code to your solution#

Everything in the body of the email will be copypasted into a file called 'hiring_test'.

I will then run the command `chmod +x hiring_test` and then expect commands such as `./hiring_test 21 55` to behave according to spec.