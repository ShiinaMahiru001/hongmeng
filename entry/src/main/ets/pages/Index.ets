import { banner } from "../viewmodel/RequestData"
import { GetHome } from "../api/index";
@Entry
@Component
struct Index {
  //配置响应的数据
  //装饰器 : 对功能加强
  @State banner: Array<banner> = [];
  @State selectedIndex: number = 0;

  @Builder bar_item(index: number, txt: string, icon: Resource) {
    Column() {
      Row() {
        Image(icon).width(20).fillColor(this.selectedIndex === index ? 'red' : Color.Black)
      }

      Row() {
        Text(txt).fontColor(this.selectedIndex === index ? 'red' : Color.Black)
      }
    }
  }
  //Index组件,加载就获取最新的数据
  async aboutToAppear() {
    const {data:{ banner }} = await GetHome(); //获取数据
    this.banner = banner
  }

  build() {
    Column() {
      Row() {
        Search({
          placeholder:"请输入搜索关键字"
        });
      }

      Row() {
        Tabs({ barPosition: BarPosition.End, index: this.selectedIndex }) {
          TabContent() {
            Column(){
              Row(){
                Swiper(){
                  // ForEach(this.banner,(item:banner)=>{
                  //     Image(item.image_url).width("100%")
                  // },(item:banner)=>item.id.toString())
                  Image(this.banner[0].image_url).width("100%")
                }.width("100%").height(208)
              }
            }
          }.tabBar(this.bar_item(0, "首页", $r("app.media.address")))

          TabContent() {
            Text("专题")
          }.tabBar(this.bar_item(1, "专题", $r("app.media.tab_home")))

          TabContent() {
            Text("分类")
          }.tabBar(this.bar_item(2, "分类", $r("app.media.tab_my")))

          TabContent() {
            Text("购物车")
          }.tabBar(this.bar_item(3, "购物车", $r("app.media.icon")))

          TabContent() {
            Text("我的")
          }.tabBar(this.bar_item(4, "我的", $r("app.media.icon")))
        }.scrollable(false)
        .onChange((index) => {
          this.selectedIndex = index;
        })
      }
      .layoutWeight(1)
    }.width("100%").height("100%")

  }
}