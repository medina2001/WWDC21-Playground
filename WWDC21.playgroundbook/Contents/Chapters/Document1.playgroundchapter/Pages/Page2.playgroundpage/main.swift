//#-hidden-code
setUpLiveView()

import PlaygroundSupport
import AVFoundation

scene.backgroundColor = #colorLiteral(red: 0.3018117249, green: 0.1339289844, blue: 0.7035960555, alpha: 1.0)

var everlongE: AVAudioPlayer?
var everlongN: AVAudioPlayer?

let name = Graphic(image: #imageLiteral(resourceName: "Distortion.png"))
name.scale = 0.5
scene.place(name, at: Point(x: 0, y: 325))

let pedal = Graphic(image: #imageLiteral(resourceName: "Pedal1.png"))
pedal.scale = 0.4
scene.place(pedal, at: Point(x: 0, y: 0))

let effect = Graphic(image: #imageLiteral(resourceName: "effect.png"))
effect.scale = 0.35
scene.place(effect, at: Point(x: 290, y: -25))

let no = Graphic(image: #imageLiteral(resourceName: "no.png"))
no.scale = 0.35
scene.place(no, at: Point(x: -290, y: 20))

let effect2 = Graphic(image: #imageLiteral(resourceName: "effect.png"))
effect2.scale = 0.35
scene.place(effect2, at: Point(x: -290, y: -25))

let playButton = Graphic(image: #imageLiteral(resourceName: "Playbutton.png"))
playButton.scale = 0.075
scene.place(playButton, at: Point(x: 290, y: -180))

playButton.setHandler(for: .touch){ _ in
    let path = Bundle.main.path(forResource: "EverlongEffect.mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)
    do {
        everlongN?.stop()
        everlongE = try AVAudioPlayer(contentsOf: url)
        everlongE?.play()
    } catch {
    }
}

let playButton2 = Graphic(image: #imageLiteral(resourceName: "Playbutton.png"))
playButton2.scale = 0.075
scene.place(playButton2, at: Point(x: -290, y: -180))

playButton2.setHandler(for: .touch){ _ in
    let path = Bundle.main.path(forResource: "EverlongNoEffect.mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)
    do {
        everlongE?.stop()
        everlongN = try AVAudioPlayer(contentsOf: url)
        everlongN?.play()
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
 # Distortion Pedal
 
 Welcome to our studio here we can try some of the best effect pedals !! First, let's get to know the most famous of all: The Distortion Pedal, well known for its use in genres such as Rock and Metal, it presents an aggressive and very noisy style !!
 
 > To hear the part of the song with the effect activated, just select the right button and to listen without effect, select the left button. Listen carefully to each separate audio to understand the effect that the pedal has on the sound of the guitar.
*/
