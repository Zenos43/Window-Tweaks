# Guide configuration CfosSpeed
 
<img width="844" height="434" alt="image" src="https://github.com/user-attachments/assets/d5f86109-dbd9-4759-a62f-8a9a5684cabb" />
<br>
<img width="779" height="1270" alt="image" src="https://github.com/user-attachments/assets/90973a59-e39e-49e2-b9de-2daeaa8576f3" />
<br>
<img width="800" height="601" alt="image" src="https://github.com/user-attachments/assets/70f72789-29b7-41ab-883c-0c6a11a8d1bf" />
<br>

- Within the cfosspedd tool , go to the preferences section and scroll down until you find the limit section , as you see in the screenshot.
- You have to read the values that the tool shows you and you have to drop 20% or 30% less than that values.
- As you can see in the screnshoot i have download value 13912 and upload value 2763; so i've applied 30% limit by writing 9738 for download and 1934 for upload.
- Calculate your limits and apply them.

### Do various tests because i also had problems , i noticed the difference after restarting pc.
### Try bufferbloat test after restarting pc as a precaution.
https://packetlosstest.com/
<br>

### What's a Good Result?

What's a "good" result will largely depend on what you're trying to do online. If you're just browsing reddit or Facebook, none of this likely matters much at all. I can't say what's required for every activity and I am quite fallible, but below are some rough estimations of what you should aim for for some activities:

- Gaming (in general): Under 100ms ping and under 2% actual packet loss
- Gaming (turn-based): None of this matters
- Gaming (shooter): Under 60ms ping and no packet loss
- VoIP: Under maybe 200ms ping and 30ms jitter (Note, if you're using PC voice chat with a bad connection, Mumble's TCP mode is wonderful)
