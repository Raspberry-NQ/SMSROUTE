//
//  pointcard.swift
//  SMSROUTE
//
//  Created by Raspberry on 2021/5/29.
//
/*
import SwiftUI

struct pointcard: View {
    @Binding var pointname:String
    @Binding var pointid:Int
    @Binding var pointimage:String
    
    var body: some View {
        VStack(alignment: .leading){
            Text("\(pointid)")//编号
                .font(.subheadline)
                .foregroundColor(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.0))
                //red: 128.0/255, green: 222.0/255, blue: 234.0/255, opacity: 1.0)
                .multilineTextAlignment(.leading)
            Image(pointimage)
                .resizable()//设置为可调
                .cornerRadius(10)
                .scaledToFit()//保持比例
                .frame(width:230,height:140)//调整框架大小
            
            Text(pointname)//名称
                .font(.title2)
            Text("附近：C栋向STAEM桥，高一23班，楼梯")//详情
                .font(.caption)
            HStack{
                Button(action: {
                    
                }, label: {
                    Text("设为起点")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                })
                Button(action: {
                    
                }, label: {
                    Text("设为终点")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                })
            }
            
            
        }
        //RGB (209,238,225)浅青色
    }
    
}
*/

/*
struct pointcard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            pointcard(pointname: <#Binding<String>#>, pointid: <#Binding<Int>#>, pointimage: <#Binding<String>#>)
        }
    }
}
*/
