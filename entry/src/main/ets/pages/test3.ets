import Prompt from '@system.prompt'


@Entry
@Component
struct Test3 {
  @State num: number = 0;
  @State tmpIndex:number=0;
  @State flag:boolean=false;
  @State list:Array<string>=[
    "Ipad2",
    "24小时计时器",
    "10Q币",
    "10000欢乐豆",
    "七天",
    "魅力值",
    "七天蓝钻",
    "九阳豆浆机"
  ].reverse()
  build(){
    Stack({alignContent: Alignment.Center}){


    Column(){

    }.height("100%").width("100%")
    Image($rawfile("icon/panzi.webp"))
      .width(300).height(300)
      .rotate({
        z: 1,
        angle: this.num
      })
      .animation({
        duration: 1000,
        curve: Curve.EaseInOut,
        onFinish: ()=>{
          if(!this.flag)return;
          this.tmpIndex = Math.floor((this.num-22.5+360) % 360 / 45);
          let str = this.list[this.tmpIndex];
          Prompt.showToast({
            message: `恭喜中将${str}`,
            bottom: 300
          })
          }
        })
      Image($rawfile("icon/Setting.png")).width(50)
        .onClick(()=>{
          this.num = this.num + 360 * 2 + Math.ceil(Math.random() * 360);
          this.flag = true;
        })
    }
  }
}