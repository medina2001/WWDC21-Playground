setUpLiveView()

import PlaygroundSupport
import AVFoundation

scene.backgroundColor = #colorLiteral(red: 0.3018117249, green: 0.1339289844, blue: 0.7035960555, alpha: 1.0)

let name = Graphic(image: #imageLiteral(resourceName: "Wah.png"))
name.scale = 0.5
scene.place(name, at: Point(x: 0, y: 325))

let pedal = Graphic(image: #imageLiteral(resourceName: "Pedal3.png"))
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

let playButton2 = Graphic(image: #imageLiteral(resourceName: "Playbutton.png"))
playButton2.scale = 0.075
scene.place(playButton2, at: Point(x: -290, y: -180))

let nextButton = Graphic(image: #imageLiteral(resourceName: "SetaF.png"))
nextButton.scale = 0.2
scene.place(nextButton, at: Point(x: 225, y: -425))
nextButton.setHandler(for: .touch){ _ in
    PlaygroundPage.current.navigateTo(page: .next)
}
