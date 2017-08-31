# Introduction

Access specifiers are really important when it comes to maintaining data encapsulation in object oriented programming. It is an easy pitfall if not taken seriously during unit tests and may result in code smell. 

# Problem

A class should have one and only one entry point, i.e., if a class needs any data, it has to be injected to it. If the data that is being injected confirms to a protocol, unit testing becomes really simple as you can inject a mock data object and test for different unit tests cases. But there are cases like ViewControllers in iOS where you will not want to expose the UI controls to unit test them. For example: If a UILabel is being set to some value, to unit test this labal's text property, you will have to make this label public, so that the unit tests can access the label. But this also means that some other class or code has the opportunity to access the publically available label and there might be cases where you will end up changing the label's text from some other part of the code as well and the expected output is incorrect. 

# Solution

There are couple of ways to solve this problem, but a swifty elegant way of unit testing the view controllers is using the protocols. Create a protocol for a viewcontroller with properties and let the UI controls use the value of this protocol properties to set the text value. What happens in this case is, while unit testing, you will have the protocol being mocked with any type of data for edge cases and the single entry point to the application is still maintained. 
