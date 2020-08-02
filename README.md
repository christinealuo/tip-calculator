# Pre-work - Christine's Tip Calculator 💖

Christine's Tip Calculator 💖 is a tip calculator application for iOS.

Submitted by: Christine Ai Luo

Time spent: 4 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if less than 10 minutes)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/OG9FHnlNLc.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

The main challenge I faced was understanding the flow of building some functionality of the application. For instance, let's say that I wanted to do something as simple as change the titles of the segment control when the user saves new default percentages. First, you have to make sure that the text fields are connected to the appropriate view controller. Next, you have to make sure that the button that I created to save changes is connected to the same view controller and that you are storing the saved values via UserDefaults. Afterwards, in the view controller that displays the segment control, you have to access the values set in UserDefaults and then finally modify the segment control titles. Although the task is simple, there are many steps along the way that can be not only difficult to remember, but also difficult to debug on your own as a beginner. There were many times where I got confused on what exactly was wrong, so I would just delete everything and go back to step one. I think with time and practice all of this will become second nature, but as a beginner it can be hard to grasp at first 🤗

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
