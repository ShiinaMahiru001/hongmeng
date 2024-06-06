@Entry
@Component
struct Test2 {
  build() {
    Column({space: 20}){
      Image($rawfile("icon/login.png"))
        .height(90)
        .width(100)
      Text("WelCome")
      Row() {
        TextInput({placeholder: "用户名"})
      }
      .width('80%')
      Row() {
        TextInput({placeholder: "密码"})
          .type(InputType.Password)
      }
      .width('80%')
      Row() {
        Button("登录")
          .width("60%")
      }
      .margin({top: "40px"})
    }
    .height("100%")
    .width("100%")
    .justifyContent(FlexAlign.Center)
  }
}