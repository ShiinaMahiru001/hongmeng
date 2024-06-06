
export  class RequestData{
  errno:number;
  errmsg:string;
  data:{
    banner:Array<banner>
  }
}

export interface banner{
  id:number,
  ad_position_id: number,
  media_type: number,
  name: string,
  link: string,
  image_url: string,
  content: string,
  end_time: number,
  enabled: number
}