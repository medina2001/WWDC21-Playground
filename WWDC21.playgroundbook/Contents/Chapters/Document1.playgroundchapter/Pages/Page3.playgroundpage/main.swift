//#-hidden-code
setUpLiveView()

import PlaygroundSupport
import AVFoundation

scene.backgroundColor = #colorLiteral(red: 0.3018117249, green: 0.1339289844, blue: 0.7035960555, alpha: 1.0)

var likeAStoneE: AVAudioPlayer?
var likeAStoneN: AVAudioPlayer?

let name = Graphic(image: #imageLiteral(resourceName: "Pitch.png"))
name.scale = 0.5
scene.place(name, at: Point(x: 0, y: 325))

let pedal = Graphic(image: #imageLiteral(resourceName: "Pedal2.png"))
pedal.scale = 0.4
scene.place(pedal, at: Point(x: 0, y: 0))

let effect = Graphic(image: #imageLiteral(resourceName: "effect.png"))
effect.scale = 0.35
scene.place(effect, at: Point(x: 300, y: -25))

let no = Graphic(image: #imageLiteral(resourceName: "no.png"))
no.scale = 0.35
scene.place(no, at: Point(x: -295, y: 20))

let effect2 = Graphic(image: #imageLiteral(resourceName: "effect.png"))
effect2.scale = 0.35
scene.place(effect2, at: Point(x: -295, y: -25))

let playButton = Graphic(image: #imageLiteral(resourceName: "Playbutton.png"))
playButton.scale = 0.075
scene.place(playButton, at: Point(x: 295, y: -180))

playButton.setHandler(for: .touch){ _ in
    let path = Bundle.main.path(forResource: "LikeEffect.mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)
    do {
        likeAStoneN?.stop()
        likeAStoneE = try AVAudioPlayer(contentsOf: url)
        likeAStoneE?.play()
    } catch {
    }
}

let playButton2 = Graphic(image: #imageLiteral(resourceName: "Playbutton.png"))
playButton2.scale = 0.075
scene.place(playButton2, at: Point(x: -295, y: -180))

playButton2.setHandler(for: .touch){ _ in
    let path = Bundle.main.path(forResource: "LikeNoEffect.mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)
    do {
        likeAStoneE?.stop()
        likeAStoneN = try AVAudioPlayer(contentsOf: url)
        likeAStoneN?.play()
    } catch {
    }
}

let nextButton = Graphic(image: #imageLiteral(resourceName: "SetaF.png"))
nextButton.scale = 0.2
scene.place(nextButton, at: Point(x: 225, y: -425))
nextButton.setHandler(for: .touch){ _ in
    PlaygroundPage.current.navigateTo(page: .next)
}
//#-end-hidden-code
/*:
 # Pitch Shift Pedal
 
 This one is very different, also being controlled by the movement of the guitarist's foot, he changes between extremely high or low sounds, causing a "mixing" effect. It is widely used in styles such as Psychedelic Rock and Indie.
 
 > To hear the part of the song with the effect activated, just select the right button and to listen without effect, select the left button. Listen carefully to each separate audio to understand the effect that the pedal has on the sound of the guitar.
 
 */
