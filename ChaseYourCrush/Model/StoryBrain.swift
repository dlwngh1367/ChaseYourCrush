import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "You are on your first shift in a cafe as a barista, and one Korean boy is working there. What are your first words?",
            choice1: "Hi, I am Olena. What is your name?", choice1Destination: 1,
            choice2: "Just stay in silence", choice2Destination: 2
        ),
        Story(
            title: "\"Hi, I am Juho Lee. Welcome to the cafe!\"",
            choice1: "I think you are really cute. Do you want to go on a date soon?", choice1Destination: 8,
            choice2: "Thank you so much, I am excited to work here with you. You seem like a nice person", choice2Destination: 3
        ),
        Story(
            title: "\"You know what, why don't you talk at all? You seem like a really boring person.\"",
            choice1: "Oh, I am sorry. I am a sort of shy person. What is your name, by the way?", choice1Destination: 1,
            choice2: "Why are you so rude? I don't want to work here anymore", choice2Destination: 4
        ),
        Story(
            title: "\"Thank you so much. We are about to close soon, I will teach you how to close the cafe\"",
            choice1: "Sure, I am glad to learn it from you, Juho.", choice1Destination: 6,
            choice2: "Not now, I want to know more about you", choice2Destination: 5
        ),
        Story(
            title: "Unfortunately, Juho has gone away from you because of your attitude",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "You have crossed the line too early. Juho wanted to take his time to get to know each other",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "You have finished your first shift with Juho successfully.",
            choice1: "Juho, I will go to the shopping mall tomorrow. Wanna come?", choice1Destination: 8,
            choice2: "Thank you for teaching me. Bye, see you next time.", choice2Destination: 7
        ),
        Story(
            title: "You forgot to get his phone number, you would never see him again",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "\"Sure, let's hang out sometimes together. Do you want to go to Bayshore Shopping mall tomorrow at 5 pm?\"",
            choice1: "Sure, let's go shopping together tomorrow. See you tomorrow!", choice1Destination: 9,
            choice2: "I think I like you and you seem like you like me too, so do you want to date me?", choice2Destination: 5
        ),
        Story(
            title: "You guys are at the shopping mall and it is snowing outside. Juho seems to like you so much now.",
            choice1: "Huh... why is my life so complicated?", choice1Destination: 4,
            choice2: "Do you want to go for a night walk under the snow outside?", choice2Destination: 10
        ),
        Story(
            title: "You guys are walking around under the romantic vibe with falling snow, and he asked you to be his girlfriend finally.",
            choice1: "No, it is too early for us! What are you talking about?", choice1Destination: 4,
            choice2: "Sure, I would love to be your girlfriend", choice2Destination: 11
        ),
        Story(
            title: "Finally, you have chased your crush. Juho is yours now. Congratulations!",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}
