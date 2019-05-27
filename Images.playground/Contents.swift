import UIKit

var str = "Hello, playground"
#imageLiteral(resourceName: "download.jpeg")

let inputImg = UIImage(named: "dog.jpeg")!


let rawImg = CIImage(image: inputImg)

//let sepiaParams: [String : Any] = [kCIInputImageKey : rawImg  ]

let cropParams: [String : Any] = [kCIInputImageKey : rawImg, "inputSize" : CIVector(string:"[100 100]") , "inputCropAmount" : 1 , "inputCenterStretchAmount" : 1]


let sepiaFilter = CIFilter(name: "CIStretchCrop", parameters: cropParams)

let context = CIContext(options: nil)

if let output = sepiaFilter?.outputImage{
    
    if let ciImg = context.createCGImage(output, from: output.extent){
        
        let filnalResult = UIImage(cgImage: ciImg)
    }
}
