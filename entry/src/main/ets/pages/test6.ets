import router from '@ohos.router'
@Entry
@Component
struct Test6 {
  @State message: string = 'Hello World'
  aboutToAppear(){

  }
  aboutToDisappear(){

  }
  build() {
    Column(){
      Button("跳转至下个页面")
        .onClick(()=>{
          //路由表最多 32 条
          //pushUrl 推入一个路由
          //replaceUrl  跳转后销毁上个页面
          router.pushUrl({
            url: "pages/test7",
            params:{
              name:"哥哥",
              state: "背带裤"
            }
          })
        })
    }
  }
}