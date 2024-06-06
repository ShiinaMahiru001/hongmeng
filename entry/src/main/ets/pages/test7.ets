import router from '@ohos.router'
@Entry
@Component
struct Test7 {
  @State message: string = 'Hello World'
  onPageShow(){
    console.log("该页面被创建");
    let name :string = router.getParams()["name"]
    let state :string = router.getParams()["state"]
    console.log("name:" + name + "\n" + "state:" + state);
  }
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button("back")
          .onClick(()=>{
            router.back()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}