//#-hidden-code
setUpLiveView()

scene.backgroundColor = #colorLiteral(red: 0.3018117249, green: 0.1339289844, blue: 0.7035960555, alpha: 1.0)

let wwdc = Graphic(image: #imageLiteral(resourceName: "WWDC.png"))
wwdc.scale = 0.5
scene.place(wwdc, at: Point(x: 0, y: 300))

let thankYou = Graphic(image: #imageLiteral(resourceName: "labelThank.png"))
thankYou.scale = 0.8
scene.place(thankYou, at: Point(x: 0, y: 0))

let eu = Graphic(image: #imageLiteral(resourceName: "MedinaGuitarrista.png"))
eu.scale = 0.3
scene.place(eu, at: Point(x: 0, y: -300))
//#-end-hidden-code
/*:
 
# Thank you very much for playing!
 
Music is one of the best things in the world and be able to create is even better, I hope you have learned something from this Playground and stay awesome!!!
 
Credits:
 
 > Audio: All of the 3 musics played were recorded by me as cover from the following musics:
- Voodoo Child - Jimi Hendrix
- Like a Stone - Audioslave
- Everlong - Foo Fighters
 
 > Fonts: "Pixel-Art" by Parasite
*/
