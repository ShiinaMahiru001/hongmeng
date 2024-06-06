@Entry
@Component
struct Test5 {
  @State message: string = 'Hello World'
  @State curIndex: number = 1;
  @Builder tabItem(a:string, icon:Resource, index:number){
    Column(){
      Row(){
        Image(icon).width(20).fillColor(this.curIndex == index ? Color.Red : Color.Black)
      }
      Row(){
        Text(a).fontColor(this.curIndex == index ? Color.Red : Color.Black)
      }
      Row(){
        if(this.curIndex == index)
        Divider().strokeWidth(2).color(Color.Red).width(20).vertical(false)
      }
    }
  }
  build() {

    Column() {
      Tabs({barPosition:BarPosition.End, index:this.curIndex}){
        TabContent(){

          Text("11111111111111")
        }
        .tabBar(this.tabItem("首页", $r("app.media.tab_home"), 0))
        TabContent(){
          Text("2222")
        }
        .tabBar(this.tabItem("专题", $r("app.media.tab_my"), 1))
        TabContent(){
          Text("11111111111111")
        }
        .tabBar(this.tabItem("购物", $rawfile("icon/address.svg"), 2))
        TabContent(){
          Text("11111111111111")
        }
        .tabBar(this.tabItem("分类", $r("app.media.pop_success"), 3))
      }.vertical(false)
      .onChange((val)=>{
        this.curIndex = val;
      })
    }
    .width('100%')


  }
}