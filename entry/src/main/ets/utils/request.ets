import axios from '@ohos/axios';
export const request = axios.create({
  baseURL: "http://youker.net:8360",
  timeout: 3000
});

request.interceptors.request.use(config=>config, err=>Promise.reject(err));

request.interceptors.response.use(response=>response, err=>Promise.reject(err));

