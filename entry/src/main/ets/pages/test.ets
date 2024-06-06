@Entry
@Component
struct Test{
  build(){
    // Text("heloo")
    Column(){
      Row(){
        Image($rawfile("icon/back.png"))
          .height(40)
        Text("标题")
          .textAlign(TextAlign.Center)
          .layoutWeight(1)
          .fontColor(Color.White)
        Image($rawfile("icon/Setting.png"))
          .height(40)
      }
      .backgroundColor(Color.Red)
      .width("100%")
      .height(40)
    }
    .backgroundColor(Color.Green)
    .height("100%")
    .width("100%")
  }
}