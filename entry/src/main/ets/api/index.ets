import { request } from "../utils/request";
import { RequestData } from "../viewmodel/RequestData";

export const GetHome = (): Promise<RequestData> => {
  return request.get("api/index/index")
}