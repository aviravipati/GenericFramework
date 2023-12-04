# GenericFramework
Generic Framework intended for any one to quickly iterate on iOS projects

## Why? 
If you ever pushed an app through apple review process, you'd understand the pain a developer goes through. You shall have basic building blocks ready that are with in Apple review guidelines that will never get you in trouble with review process, so that you can iterate fast. 

## Functionality
Many apps have some common functionality like paywalls, welcome screens, email sign ups etc, which we are going to code here, that any one can use as they see fit.

### Welcome Screen
![Untitled design](https://github.com/aviravipati/GenericFramework/assets/10014614/e3cb18e2-10d3-4dac-a8e0-631e3340d6f9)

#### Steps
Customize the functionality by replacing assets with the background images of the app you are working on
and replacing the values of the below variable

<pre>
 var titlesAndSubtitles: [(title: String, subtitle: String)] = 
 [("Discover Inner Peace", "Experience Tranquility Through Meditation"),("Stress Relief Anytime, Anywhere","Find Calmness in the Midst of Chaos"),
 ("Guided Meditations for All","Journey to Mindfulness with Expert Instructors") ]
</pre>

### Dynamic Paywalls.

![Untitled design-2](https://github.com/aviravipati/GenericFramework/assets/10014614/8491ee3e-576b-422a-be14-b03bf3ac067c)

We will be using https://superwall.com/ to build dynamic paywalls that are like few lines of code , and voila you have dynamic paywalls that you can change in a snap, without pushing app update.

#### Environment Variable Configuration: 
Ensure that you have correctly set the API_KEY environment variable for your app in Xcode. You can set environment variables in Xcode by going to "Product" > "Scheme" > "Edit Scheme" > "Run" > "Arguments" > "Environment Variables." Make sure that the key matches exactly with "API_KEY" and the value is set to your API key.

