//
//  ContentView.swift
//  SMSROUTE
//
//  Created by Raspberry on 2021/5/29.
//

import SwiftUI

struct ContentView: View {
    @State var startpoint=0
    @State var endpoint=0
    @State var ifsetstart=true
    @State var ifsetend=true
    
    @State var pointnameA=["120","103","74","75","79"]
    @State var pointidA=[120,103,74,75,79]
    @State var pointimageA=["120","103","74","75","79"]
    @State var pointdetailA=["A-D草坪楼梯","A3楼西南楼梯","高二4班","A309","A栋3楼饮水区"]
    
    @State var pointnameB=["153","24","126","175","14","174"]
    @State var pointidB=[153,24,126,175,14,174]
    @State var pointimageB=["153","24","126","175","14","174"]
    @State var pointdetailB=["物理实验室","高一9班门口楼梯","茶水间","高一11班"]
    
    @State var pointnameC=["19","18","28","75"]
    @State var pointidC=[19,28,28,75,79]
    @State var pointimageC=["19","18","28","75"]
    @State var pointdetailC=["高一23班","高一22班","C2楼走廊","A309"]
    
    @State var pointnameD=["107","108","110","75"]
    @State var pointidD=[107,108,110,75,79]
    @State var pointimageD=["107","108","110","75"]
    @State var pointdetailD=["通悦园大桥","通二楼楼梯","D3楼饮水区","A309","A栋3楼饮水区"]
    
    
    var body: some View {
        ScrollView{
            /*
             hscroll(pointname: $pointname, pointid: $pointid, pointimage: $pointimage, pointdetail: $pointdetail)
             hscroll(pointname: $pointname, pointid: $pointid, pointimage: $pointimage, pointdetail: $pointdetail)
             hscroll(pointname: $pointname, pointid: $pointid, pointimage: $pointimage, pointdetail: $pointdetail)
             */
            hscroll(startpoint: $startpoint, endpoint: $endpoint, pointname: $pointnameA, pointid: $pointidA, pointimage: $pointimageA, pointdetail: $pointdetailA)
            hscroll(startpoint: $startpoint, endpoint: $endpoint, pointname: $pointnameB, pointid: $pointidB, pointimage: $pointimageB, pointdetail: $pointdetailB)
            hscroll(startpoint: $startpoint, endpoint: $endpoint, pointname: $pointnameC, pointid: $pointidC, pointimage: $pointimageC, pointdetail: $pointdetailC)
            hscroll(startpoint: $startpoint, endpoint: $endpoint, pointname: $pointnameD, pointid: $pointidD, pointimage: $pointimageD, pointdetail: $pointdetailD)
            jump(isok: false, start: $startpoint, end: $endpoint)
            
        }
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}









struct hscroll: View {
    /*
     @State var pointname=["000","002"]
     @State var pointid=[000,001]
     @State var pointimage=["000","003"]
     @State var pointdetail=["附近：C栋向STAEM桥，高一23班，楼梯"]
     */
    @Binding var startpoint:Int
    @Binding var endpoint:Int
    @Binding var pointname:[String]
    @Binding var pointid: [Int]
    @Binding var pointimage: [String]
    @Binding var pointdetail: [String]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                Image(systemName: "diamond")
                    .font(.system(size: 20))
                    .foregroundColor(.orange)
                /*
                 pointcard(pointname: $pointname[0], pointid: $pointid[0], pointimage: $pointimage[0], pointdetail: $pointdetail[0])
                 pointcard(pointname: $pointname[0], pointid: $pointid[0], pointimage: $pointimage[1], pointdetail: $pointdetail[0])
                 pointcard(pointname: $pointname[0], pointid: $pointid[0], pointimage: $pointimage[1], pointdetail: $pointdetail[0])
                 pointcard(pointname: $pointname[0], pointid: $pointid[0], pointimage: $pointimage[1], pointdetail: $pointdetail[0])
                 */
                pointcard(startpoint: $startpoint, endpoint: $endpoint,pointname: $pointname[0], pointid: $pointid[0], pointimage: $pointimage[0], pointdetail: $pointdetail[0])
                pointcard(startpoint: $startpoint, endpoint: $endpoint,pointname: $pointname[1], pointid: $pointid[1], pointimage: $pointimage[1], pointdetail: $pointdetail[1])
                pointcard(startpoint: $startpoint, endpoint: $endpoint,pointname: $pointname[2], pointid: $pointid[2], pointimage: $pointimage[2], pointdetail: $pointdetail[2])
                pointcard(startpoint: $startpoint, endpoint: $endpoint,pointname: $pointname[3], pointid: $pointid[3], pointimage: $pointimage[3], pointdetail: $pointdetail[3])
            }
        }
    }
}


struct pointcard: View {
    @Binding var startpoint:Int
    @Binding var endpoint:Int
    @Binding var pointname:String
    @Binding var pointid:Int
    @Binding var pointimage:String
    @Binding var pointdetail:String
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
            Text(pointdetail)//详情
                .font(.caption)
            HStack{
                Button(action: {
                    self.startpoint=self.pointid
                }, label: {
                    Text("设为起点")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                })
                Button(action: {
                    self.endpoint=self.pointid
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



struct jump: View {
    @State var isok=false
    @State var time=12.0
    @Binding var start: Int
    @Binding var end: Int
    @State var detailname=["126","174","175","14","15","167","153"]
    @State var detailiamge=["126","174","175","14","15","167","153"]
    @State var detailcount=7
    @State var isnoon=false
    @State var Routeid=[Int]()
    
    var body: some View {
        
        
        Button(action: {
            self.isok=true
            if time>=12.3 && time<=13.0 {//中午时调整参数
                isnoon=true
            }
            
            Routeid=Route(startpoint: start, endpoint: end,isnoon: isnoon)
            
            
            
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
