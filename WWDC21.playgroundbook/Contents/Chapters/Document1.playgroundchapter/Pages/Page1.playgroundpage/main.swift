//#-hidden-code
setUpLiveView()
import PlaygroundSupport
import SpriteKit

var cont = 0
scene.backgroundColor = #colorLiteral(red: 0.8335304856300354, green: 0.9257245659828186, blue: -0.21252688765525818, alpha: 1.0)

let label = Graphic(image: #imageLiteral(resourceName: "label1.png"))
scene.place(label, at: Point(x: 0, y: 300))

let label2 = Graphic(image: #imageLiteral(resourceName: "label2.png"))
scene.place(label2, at: Point(x: 1000, y: 300))

let label3 = Graphic(image: #imageLiteral(resourceName: "label3.png"))
scene.place(label3, at: Point(x: 1000, y: 300))

let label4 = Graphic(image: #imageLiteral(resourceName: "label4-1.png"))
scene.place(label4, at: Point(x: 1000, y: 250))

let label42 = Graphic(image: #imageLiteral(resourceName: "label4-2.png"))
scene.place(label42, at: Point(x: 1000, y: 200))

let label5 = Graphic(image: #imageLiteral(resourceName: "label5.png"))
scene.place(label5, at: Point(x: 1000, y: 300))

let label6 = Graphic(image: #imageLiteral(resourceName: "label6.png"))
scene.place(label6, at: Point(x: 1000, y: 250))

let label7 = Graphic(image: #imageLiteral(resourceName: "label7.png"))
label7.scale = 0.9
scene.place(label7, at: Point(x: 1000, y: 300))

let guitarist = Graphic(image: #imageLiteral(resourceName: "MedinaGuitarrista.png"))
guitarist.scale = 0.35
scene.place(guitarist, at: Point(x: 0, y: -75))

let nextButton = Graphic(image: #imageLiteral(resourceName: "SetaF.png"))
nextButton.scale = 0.2
scene.place(nextButton, at: Point(x: 225, y: -425))

let moveText = SKAction.moveBy(x: -1000, y: 0, duration: 1.5)
nextButton.setHandler(for: .touch){ _ in
    switch cont {
    case 0:
        label.run(moveText)
        label2.run(moveText)
        case 1:
            label2.run(moveText)
            label3.run(moveText)
            label4.run(moveText)
            label42.run(moveText)
            case 2:
                label3.run(moveText)
                label4.run(moveText)
                label5.run(moveText)
                label6.run(moveText)
                label42.run(moveText)
                case 3:
                    label5.run(moveText)
                    label6.run(moveText)
                    label7.run(moveText)
                    case 4:
                        PlaygroundPage.current.navigateTo(page: .next)
    default:
        break
    }
    cont += 1
}

//#-end-hidden-code
/*:
 # Why is this so important?
 
 Well, all of us, in a certain way, wish for the long-awaited financial independence, some of them yearn a lot for it and others not so much, the fact is that money is one of the central parts of our life and has great importance for both our present and our future. Through the journey of learning more about finances we come across several information that can lead us to a trap, and that's where financial education comes in. My country, Brazil, has a great difficulty in this type of education, which makes the average Brazilian, a people well uninformed in relation to the rest of the world when it comes to finances, that was another great motivational to choose this theme. I did some research and found some data that reflect a little of that reality.
 
 Give it a play and check out an 'ambima' research comparing the population of several countries investing in variable income.
 
 
 
 */
