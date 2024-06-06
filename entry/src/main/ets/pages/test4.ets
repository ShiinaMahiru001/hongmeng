@Entry
@Component
struct Test4 {
  @State a : Array<String> = ["长沙", "常德","治州", "长沙", "广西"]
  build() {

      Column(){
        List({space: 10, initialIndex: 3}){
          ForEach(this.a,(item, index)=>{
            ListItem(){
              Row(){
                Text(item)
              }.width("100%").height(300)
            }.border({
              width: "1px",
              style: BorderStyle.Dashed,
              color: Color.White
            })
          })
        }
      }
    .width("100%").height("100%")
  }
}