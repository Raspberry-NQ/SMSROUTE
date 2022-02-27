//
//  jump.swift
//  SMSROUTE
//
//  Created by Raspberry on 2021/6/6.
//
//[126, 174, 175, 14, 15, 167, 153]
/*

import SwiftUI

struct jump: View {
    @State var isok=false
    
    @Binding var start: Int
    @Binding var end: Int
    @State var detailname=["126","174","175","14","15","167","153"]
    @State var detailiamge=["126","174","175","14","15","167","153"]
    @State var detailcount=7
    
    @State var Routeid=[Int]()
    
    var body: some View {

  
        Button(action: {
            self.isok=true
            
            Routeid=Route(startpoint: start, endpoint: end)
            
            
            
        }, label: {
            HStack{
            Image(systemName: "swift")
                .font(.system(size: 40))
                .foregroundColor(.orange)
            Text("RUN ! ! !")
                .font(.system(size: 30))
                .foregroundColor(.orange)
                
            }})

        .sheet(isPresented: $isok, onDismiss: {
            print("Detail View Dismissed")
        }) {
            
            detail(routeid: $Routeid)
        
        }
   
        
        
    }
}
/*
struct jump_Previews: PreviewProvider {
    static var previews: some View {
        jump(isok: false, start: 126, end: 153)
    }
}
*/


struct detail: View {
    @Binding var routeid: [Int]
    @State var detailname=["C四楼饮水区","生物实验室","高一11班","C四楼东南楼梯","C五楼东南楼梯","高一4班","物理实验室",""]
    @State var detailiamge=["126","174","175","14","15","167","153",""]
    var body: some View {
        ScrollView{
        VStack{
            Text("路线详情")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0x00/256, green: 0xAD/256, blue: 0xB5/256, opacity: 1.0))//00ADB5
            eachdetail(eachdetailid: $routeid[0], eachdetailname: $detailname[0], eachdetailimage: $detailiamge[0])
            eachdetail(eachdetailid: $routeid[1], eachdetailname: $detailname[1], eachdetailimage: $detailiamge[1])
            eachdetail(eachdetailid: $routeid[2], eachdetailname: $detailname[2], eachdetailimage: $detailiamge[2])
            eachdetail(eachdetailid: $routeid[3], eachdetailname: $detailname[3], eachdetailimage: $detailiamge[3])
            eachdetail(eachdetailid: $routeid[4], eachdetailname: $detailname[4], eachdetailimage: $detailiamge[4])
            eachdetail(eachdetailid: $routeid[5], eachdetailname: $detailname[5], eachdetailimage: $detailiamge[5])
            eachdetail(eachdetailid: $routeid[6], eachdetailname: $detailname[6], eachdetailimage: $detailiamge[6])
            
            
            
        }
    }
    }
}


struct eachdetail: View {
    @Binding var eachdetailid: Int
    @Binding var eachdetailname: String
    @Binding var eachdetailimage: String
    /*
     @State var isstartpoint=false
     @State var isendpoint=false
     */
    var body: some View {
        ZStack{
        HStack
        {
            
            Image(eachdetailimage)
                .resizable()//设置为可调
                .cornerRadius(10)
                .scaledToFit()//保持比例
                .frame(width:230,height:140)//调整框架大小
            Text("ID : \(eachdetailid) : "+eachdetailname)
            
        }
    }
        Image(systemName: "chevron.down")
            .font(.system(size: 40))
            .foregroundColor(.orange)
    }
}

 
 
 */
