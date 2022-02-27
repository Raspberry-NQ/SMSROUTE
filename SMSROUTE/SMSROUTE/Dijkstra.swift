//
//  Dijkstra.swift
//  SMSROUTE
//
//  Created by Raspberry on 2021/5/30.
//

import Foundation
func Route(startpoint:Int,endpoint:Int,isnoon :Bool)->[Int]{
    let maxlength=179
    let nulldata=9997001
    
    var all=[[Int]]()
    
    
    var dis=[Int]()
    var out=[Bool]()
    var pointnow=nulldata
    var lastpoint=[Int]()
    var backroute=[Int]()
    var route=[Int]()
    
    /*
     func ifallout(outarrey:[Bool])->Bool{
     var x=0
     for i in 0...(maxlength-1){
     if outarrey[i]==false {
     x=1;
     return false
     }
     }
     if x==0 {
     return true
     }
     }
     */
    for _ in 0...(maxlength-1) {
        
        out.append(false)
        dis.append(999)
        lastpoint.append(000)
        //route.append(000)
    }
    dis[startpoint]=0
    out[67]=true
    out[77]=true
    out[80]=true
    out[89]=true
    out[97]=true
    out[138]=true
    out[148]=true
    //none point :67/ 77/ 80/     89/////  97///////////////  138////////////////  148////////////////////
    //-------------------------------------------------------------------------------------------------------
    
    all.append([61,81,91,16,7,56,57,163,16,110,5])//000
    all.append([51,nulldata,nulldata,nulldata,nulldata,35,nulldata,nulldata,nulldata,nulldata,1])
    all.append([31,21,nulldata,nulldata,nulldata,65,55,nulldata,nulldata,nulldata,2])//002
    all.append([0,nulldata,nulldata,nulldata,nulldata,15,nulldata,nulldata,nulldata,nulldata,1])
    all.append([3,11,9,nulldata,nulldata,36,26,70,nulldata,nulldata,3])
    all.append([10,nulldata,nulldata,nulldata,nulldata,15,nulldata,nulldata,nulldata,nulldata,1])//
    all.append([61,41,7,141,nulldata,79,37,40,24,nulldata,4])
    all.append([0,6,161,8,nulldata,110,40,35,127,nulldata,4])
    all.append([7,11,101,10,nulldata,127,26,25,89,nulldata,4])//
    all.append([3,4,nulldata,nulldata,nulldata,72,70,nulldata,nulldata,nulldata,2])
    all.append([8,5,nulldata,nulldata,nulldata,89,15,nulldata,nulldata,nulldata,2])//010//
    all.append([141,4,8,151,12,91,26,26,110,50,5])
    all.append([48,11,13,nulldata,nulldata,11,50,38,nulldata,nulldata,3])
    all.append([160,103,49,nulldata,nulldata,20,49,38,nulldata,nulldata,3])
    all.append([15,175,nulldata,nulldata,nulldata,38,20,nulldata,nulldata,nulldata,2])
    all.append([14,167,nulldata,nulldata,nulldata,38,20,nulldata,nulldata,nulldata,2])//
    all.append([0,91,nulldata,nulldata,nulldata,179,28,nulldata,nulldata,nulldata,2])
    all.append([62,82,nulldata,nulldata,nulldata,46,55,nulldata,nulldata,nulldata,2])
    all.append([52,19,28,nulldata,nulldata,20,38,31,nulldata,nulldata,3])
    all.append([18,62,21,nulldata,nulldata,38,18,47,nulldata,nulldata,3])
    all.append([82,27,nulldata,nulldata,nulldata,41,38,nulldata,nulldata,nulldata,2])//020
    all.append([31,2,4,9,22,54,55,36,72,50,5])//021//19,29,,,,47,19,,,,2-----------------
    all.append([46,21,23,nulldata,nulldata,20,50,38,nulldata,nulldata,3])
    all.append([70,24,nulldata,nulldata,nulldata,25,38,nulldata,nulldata,nulldata,2])
    all.append([25,178,nulldata,nulldata,nulldata,38,10,nulldata,nulldata,nulldata,2])
    all.append([24,170,nulldata,nulldata,nulldata,38,10,nulldata,nulldata,nulldata,2])//
    all.append([82,162,nulldata,nulldata,nulldata,25,33,nulldata,nulldata,nulldata,2])
    all.append([20,36,nulldata,nulldata,nulldata,37,20,nulldata,nulldata,nulldata,2])
    all.append([18,42,nulldata,nulldata,nulldata,31,48,nulldata,nulldata,nulldata,2])
    all.append([42,21,30,nulldata,nulldata,43,19,36,nulldata,nulldata,3])
    all.append([29,162,nulldata,nulldata,nulldata,36,36,nulldata,nulldata,nulldata,2])//030
    all.append([171,2,21,32,nulldata,38,65,54,50,nulldata,4])
    all.append([172,40,31,33,nulldata,33,18,50,38,nulldata,4])
    all.append([69,66,34,nulldata,nulldata,33,34,38,nulldata,nulldata,3])
    all.append([119,126,35,nulldata,nulldata,11,35,38,nulldata,nulldata,2])
    all.append([144,152,34,nulldata,nulldata,11,43,38,nulldata,nulldata,3])//
    all.append([72,27,92,38,nulldata,18,20,42,32,nulldata,4])
    all.append([92,nulldata,nulldata,nulldata,nulldata,37,nulldata,nulldata,nulldata,nulldata,1])
    all.append([36,56,108,nulldata,nulldata,32,32,38,nulldata,nulldata,3])
    all.append([92,122,nulldata,nulldata,nulldata,29,37,nulldata,nulldata,nulldata,2])
    all.append([32,46,nulldata,nulldata,nulldata,18,43,nulldata,nulldata,nulldata,2])//040
    all.append([51,6,171,42,nulldata,89,37,27,50,nulldata,4])//
    all.append([28,19,172,41,43,48,43,32,50,38,5])
    all.append([98,44,nulldata,nulldata,nulldata,38,38,nulldata,nulldata,nulldata,2])
    all.append([45,129,136,nulldata,nulldata,38,16,35,nulldata,nulldata,3])
    all.append([44,172,173,nulldata,nulldata,38,16,36,nulldata,nulldata,3])//
    all.append([22,40,47,nulldata,nulldata,20,43,37,nulldata,nulldata,3])
    all.append([46,48,nulldata,nulldata,nulldata,37,17,nulldata,nulldata,nulldata,2])
    all.append([47,49,12,59,nulldata,17,50,11,38,nulldata,4])
    all.append([48,50,102,58,nulldata,50,39,10,35,nulldata,4])
    all.append([49,132,57,112,nulldata,39,16,32,56,nulldata,4])//050
    all.append([61,41,52,1,nulldata,62,89,50,35,nulldata,4])//
    all.append([18,51,nulldata,nulldata,nulldata,20,38,nulldata,nulldata,nulldata,2])
    all.append([106,54,nulldata,nulldata,nulldata,18,38,nulldata,nulldata,nulldata,2])
    all.append([55,143,nulldata,nulldata,nulldata,38,29,nulldata,nulldata,nulldata,2])
    all.append([54,168,nulldata,nulldata,nulldata,38,29,nulldata,nulldata,nulldata,2])//
    all.append([112,57,122,38,nulldata,15,32,44,32,nulldata,4])
    all.append([56,50,nulldata,nulldata,nulldata,32,32,nulldata,nulldata,nulldata,2])
    all.append([49,nulldata,nulldata,nulldata,nulldata,35,nulldata,nulldata,nulldata,nulldata,1])
    all.append([48,nulldata,nulldata,nulldata,nulldata,38,nulldata,nulldata,nulldata,nulldata,1])
    all.append([70,13,68,nulldata,nulldata,30,20,34,nulldata,nulldata,3])//060
    all.append([0,51,6,62,nulldata,56,62,79,50,nulldata,4])
    all.append([19,17,61,63,nulldata,18,46,50,38,nulldata,4])
    all.append([100,64,nulldata,nulldata,nulldata,17,38,nulldata,nulldata,nulldata,2])
    all.append([65,140,nulldata,nulldata,nulldata,38,19,nulldata,nulldata,nulldata,2])
    all.append([64,176,nulldata,nulldata,nulldata,38,19,nulldata,nulldata,nulldata,2])//
    all.append([113,79,120,108,nulldata,20,21,41,28,nulldata,4])
    all.append([nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,0])//067-
    all.append([60,84,nulldata,nulldata,nulldata,34,23,nulldata,nulldata,nulldata,2])
    all.append([60,33,66,86,nulldata,23,33,27,31,nulldata,4])
    all.append([23,60,nulldata,nulldata,nulldata,25,30,nulldata,nulldata,nulldata,2])//070
    all.append([161,91,14,72,nulldata,35,53,63,50,nulldata,4])
    all.append([162,112,36,71,73,26,64,18,50,38,5])
    all.append([110,74,nulldata,nulldata,nulldata,14,38,nulldata,nulldata,nulldata,2])
    all.append([103,75,nulldata,nulldata,nulldata,23,23,nulldata,nulldata,nulldata,2])//074//all.append([146,147,75,74,,13,13,38,38,,4])
    all.append([78,133,76,74,nulldata,50,10,16,23,nulldata,4])//075//74,160,163,,,38,13,13,,,3--------------------
    all.append([75,nulldata,nulldata,nulldata,nulldata,16,nulldata,nulldata,nulldata,nulldata,1])
    all.append([nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,0])//077-
    all.append([133,79,nulldata,nulldata,nulldata,42,15,nulldata,nulldata,nulldata,2])
    all.append([78,123,113,66,nulldata,15,34,22,21,nulldata,4])
    all.append([nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,0])//080-
    all.append([0,161,82,nulldata,nulldata,57,66,50,nulldata,nulldata,3])
    all.append([17,26,20,81,93,55,25,41,50,38,5])
    all.append([117,116,82,84,nulldata,39,44,38,38,nulldata,4])
    all.append([150,38,nulldata,nulldata,nulldata,85,83,nulldata,nulldata,nulldata,2])
    all.append([84,166,nulldata,nulldata,nulldata,38,49,nulldata,nulldata,nulldata,2])//
    all.append([69,88,nulldata,nulldata,nulldata,31,32,nulldata,nulldata,nulldata,2])
    all.append([88,85,84,nulldata,nulldata,33,34,28,nulldata,nulldata,3])
    all.append([87,86,96,nulldata,nulldata,33,32,31,nulldata,nulldata,3])//---------------------------------------------------------------------------------------------ERROR:89/////
    all.append([nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,0])//89-
    all.append([109,nulldata,nulldata,nulldata,nulldata,28,nulldata,nulldata,nulldata,nulldata,1])//090//-----------------------------------------------------------ERROR:89//////////
    all.append([0,71,16,121,92,163,53,28,62,50,5])
    all.append([36,37,39,91,93,42,31,29,50,38,5])//
    all.append([110,92,94,nulldata,nulldata,42,38,38,nulldata,nulldata,3])
    all.append([145,95,93,nulldata,nulldata,21,38,38,nulldata,nulldata,3])
    all.append([94,164,nulldata,nulldata,nulldata,38,21,nulldata,nulldata,nulldata,2])//
    all.append([88,nulldata,nulldata,nulldata,nulldata,31,nulldata,nulldata,nulldata,nulldata,1])//----------------------------------------------------------------ERROR:97//////////
    all.append([nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,0])//97-
    all.append([43,99,nulldata,nulldata,nulldata,38,30,nulldata,nulldata,nulldata,2])
    all.append([98,88,100,nulldata,nulldata,30,37,24,nulldata,nulldata,3])
    all.append([99,106,63,nulldata,nulldata,24,37,17,nulldata,nulldata,3])//100
    all.append([141,151,8,131,102,110,94,25,44,50,5])
    all.append([49,101,103,nulldata,nulldata,10,50,38,nulldata,nulldata,3])
    all.append([13,74,104,nulldata,nulldata,49,23,38,nulldata,nulldata,3])
    all.append([127,105,103,nulldata,nulldata,32,38,38,nulldata,nulldata,3])
    all.append([154,104,nulldata,nulldata,nulldata,32,38,nulldata,nulldata,nulldata,2])//
    all.append([100,53,98,nulldata,nulldata,37,18,31,nulldata,nulldata,3])
    all.append([108,nulldata,nulldata,nulldata,nulldata,30,nulldata,nulldata,nulldata,nulldata,1])
    all.append([118,107,38,nulldata,nulldata,17,30,38,nulldata,nulldata,3])
    all.append([90,110,nulldata,nulldata,nulldata,27,28,nulldata,nulldata,nulldata,2])
    all.append([112,73,109,116,nulldata,14,14,43,37,nulldata,4])//110
    all.append([71,151,121,131,112,63,45,55,53,50,5])
    all.append([72,56,50,111,113,64,15,56,50,38,5])
    all.append([79,66,114,nulldata,nulldata,22,20,38,nulldata,nulldata,3])
    all.append([139,142,115,113,nulldata,14,11,38,38,nulldata,4])
    all.append([114,158,157,nulldata,nulldata,38,11,14,nulldata,nulldata,3])//
    all.append([110,83,nulldata,nulldata,nulldata,37,44,nulldata,nulldata,nulldata,2])
    all.append([83,116,nulldata,nulldata,nulldata,39,17,nulldata,nulldata,nulldata,2])
    all.append([120,108,110,nulldata,nulldata,40,27,19,nulldata,nulldata,3])
    all.append([34,126,nulldata,nulldata,nulldata,11,43,nulldata,nulldata,nulldata,2])
    all.append([66,118,nulldata,nulldata,nulldata,41,40,nulldata,nulldata,nulldata,2])//120
    all.append([91,111,122,nulldata,nulldata,62,55,50,nulldata,nulldata,2])
    all.append([56,37,121,123,nulldata,44,37,50,38,nulldata,4])
    all.append([79,124,nulldata,nulldata,nulldata,34,38,nulldata,nulldata,nulldata,2])
    all.append([137,125,123,nulldata,nulldata,22,38,38,nulldata,nulldata,3])
    all.append([124,159,nulldata,nulldata,nulldata,38,22,nulldata,nulldata,nulldata,2])//
    all.append([119,34,174,nulldata,nulldata,43,35,36,nulldata,nulldata,3])
    all.append([104,128,nulldata,nulldata,nulldata,32,18,nulldata,nulldata,nulldata,2])
    all.append([127,134,130,nulldata,nulldata,18,14,34,nulldata,nulldata,2])
    all.append([44,136,nulldata,nulldata,nulldata,16,49,nulldata,nulldata,nulldata,2])
    all.append([128,134,139,nulldata,nulldata,34,24,34,nulldata,nulldata,3])//130
    all.append([111,101,132,nulldata,nulldata,53,44,50,nulldata,nulldata,3])
    all.append([50,131,133,nulldata,nulldata,16,50,38,nulldata,nulldata,3])
    all.append([75,78,134,nulldata,nulldata,10,42,38,nulldata,nulldata,3])
    all.append([128,130,135,133,nulldata,14,24,38,38,nulldata,4])
    all.append([134,155,156,nulldata,nulldata,38,14,24,nulldata,nulldata,3])//
    all.append([44,129,nulldata,nulldata,nulldata,35,49,nulldata,nulldata,nulldata,2])//---------------------------------------------------------------ERROR:138/////////////
    all.append([139,124,nulldata,nulldata,nulldata,24,22,nulldata,nulldata,nulldata,2])
    all.append([nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,0])//138-
    all.append([130,137,114,142,nulldata,34,24,14,21,nulldata,4])
    all.append([64,143,nulldata,nulldata,nulldata,19,33,nulldata,nulldata,nulldata,2])//140//----------------------------------------------------------ERROR:138/////////
    all.append([6,171,11,101,143,24,47,91,110,88,5])
    all.append([114,139,nulldata,nulldata,nulldata,11,21,nulldata,nulldata,nulldata,2])
    all.append([54,140,nulldata,nulldata,nulldata,29,33,nulldata,nulldata,nulldata,2])
    all.append([35,152,nulldata,nulldata,nulldata,11,43,nulldata,nulldata,nulldata,2])
    all.append([94,146,nulldata,nulldata,nulldata,21,25,nulldata,nulldata,nulldata,2])//
    all.append([145,147,74,149,nulldata,25,21,13,40,nulldata,4])
    all.append([146,74,nulldata,nulldata,nulldata,21,13,nulldata,nulldata,nulldata,2])
    all.append([nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,nulldata,0])//148-
    all.append([146,150,nulldata,nulldata,nulldata,40,21,nulldata,nulldata,nulldata,2])
    all.append([149,84,nulldata,nulldata,nulldata,21,49,nulldata,nulldata,nulldata,2])//150
    all.append([161,11,101,111,163,30,110,94,45,88,5])
    all.append([144,35,153,nulldata,nulldata,43,35,36,nulldata,nulldata,3])
    all.append([167,152,nulldata,nulldata,nulldata,33,36,nulldata,nulldata,nulldata,2])
    all.append([105,155,nulldata,nulldata,nulldata,32,18,nulldata,nulldata,nulldata,2])
    all.append([154,135,156,nulldata,nulldata,18,14,34,nulldata,nulldata,3])//
    all.append([155,135,157,nulldata,nulldata,34,24,34,nulldata,nulldata,3])
    all.append([156,159,158,115,nulldata,34,24,21,14,nulldata,4])
    all.append([157,115,nulldata,nulldata,nulldata,21,11,nulldata,nulldata,nulldata,2])
    all.append([157,125,nulldata,nulldata,nulldata,24,22,nulldata,nulldata,nulldata,2])
    all.append([75,nulldata,nulldata,nulldata,nulldata,13,nulldata,nulldata,nulldata,nulldata,1])//160
    all.append([81,7,71,151,162,66,35,35,30,50,5])
    all.append([30,26,72,161,163,36,33,26,50,38,5])
    all.append([164,160,75,165,nulldata,25,21,13,40,nulldata,4])
    all.append([95,nulldata,nulldata,nulldata,nulldata,163,nulldata,nulldata,nulldata,nulldata,1])
    all.append([166,163,nulldata,nulldata,nulldata,21,40,nulldata,nulldata,nulldata,2])//
    all.append([165,85,nulldata,nulldata,nulldata,21,49,nulldata,nulldata,nulldata,2])
    all.append([153,15,169,nulldata,nulldata,33,20,24,nulldata,nulldata,3])
    all.append([55,176,nulldata,nulldata,nulldata,29,33,nulldata,nulldata,nulldata,2])
    all.append([167,170,nulldata,nulldata,nulldata,24,28,nulldata,nulldata,nulldata,2])
    all.append([25,169,nulldata,nulldata,nulldata,10,28,nulldata,nulldata,nulldata,2])//170
    all.append([41,141,31,172,nulldata,27,42,38,50,nulldata,4])
    all.append([45,173,nulldata,nulldata,nulldata,16,49,nulldata,nulldata,nulldata,2])//172//32,42,171,173,,33,32,50,38,,4---------------------
    all.append([45,172,nulldata,nulldata,nulldata,35,49,nulldata,nulldata,nulldata,2])//------------------------------------------------------------------ERROR:148/////
    all.append([175,126,nulldata,nulldata,nulldata,33,36,nulldata,nulldata,nulldata,2])
    all.append([174,14,177,nulldata,nulldata,33,20,24,nulldata,nulldata,3])//
    all.append([65,168,nulldata,nulldata,nulldata,19,33,nulldata,nulldata,nulldata,2])//-------------------------------------------------------------------ERROR:148/////
    all.append([175,178,nulldata,nulldata,nulldata,24,28,nulldata,nulldata,nulldata,2])
    all.append([24,177,nulldata,nulldata,nulldata,10,28,nulldata,nulldata,nulldata,2])
    
    //180
    //none point :67/ 77/ 80/     89/////  97///////////////  138////////////////  148////////////////////
    
    
    
    //
    
    
    
    //190
    //----------------------------------------------------------------------------------------------------------
    /*
     all.append([001,002,nulldata,nulldata,nulldata,2,10,nulldata,nulldata,nulldata,2])//000
     all.append([000,002,nulldata,nulldata,nulldata,2,7,nulldata,nulldata,nulldata,2])//001
     all.append([000,001,nulldata,nulldata,nulldata,10,7,nulldata,nulldata,nulldata,2])//002
     */
    //
    
    
    var allout_bool=false
    var outcount=0
    var pointnowdis=0
    pointnow=startpoint
    while allout_bool==false
    {
        if all[pointnow][10]==1 {
            if pointnowdis+all[pointnow][5] < dis[all[pointnow][0]] {
                dis[all[pointnow][0]]=pointnowdis+all[pointnow][5]
                lastpoint[all[pointnow][0]]=pointnow
            }
        } else {
            
            for i in 0...(all[pointnow][10]-1) {
                if pointnowdis+all[pointnow][i+5]<dis[all[pointnow][i]] && (out[all[pointnow][i]]==false) {
                    dis[all[pointnow][i]]=pointnowdis+all[pointnow][i+5]
                    lastpoint[all[pointnow][i]]=pointnow
                }
            }
            
        }
        out[pointnow]=true
        
        
        
        
        pointnowdis=9999
        for i in 0...(maxlength-1){
            
            if dis[i]<pointnowdis && out[i]==false{
                pointnow=i
                pointnowdis=dis[i]
                
            }
        }
        
        
        outcount=0
        for c in 0...(maxlength-1){
            if out[c]==false{
                allout_bool=false
            }
            else{
                outcount+=1
            }
        }
        if outcount==maxlength {
            allout_bool=true
        }
        
        
        
    }
    var route_pointnow=endpoint
    var route_backpoint:Int
    var route_allcount=1
    while route_pointnow != startpoint
    {
        route_backpoint=lastpoint[route_pointnow]
        backroute.append(route_pointnow)
        route_pointnow=route_backpoint
        route_allcount+=1;
    }
    backroute.append(startpoint)
    //print(route)
    for d in 1...route_allcount {
        route.append(backroute[route_allcount-d])
    }
    return route
}


func affect(arg: [[Int]],crg: [Int])->[[Int]] {
    
    
    
    return arg
}

/*
for i in 0...(all[pointnow][10]-1) {
    if (pointnowdis+all[pointnow][i+5]-dis[all[pointnow][i]]) <= -8 && (out[all[pointnow][i]]==false) {
        let seed=arc4random_uniform(3)
        if seed==0 {//三分之一概率更改路线
            dis[all[pointnow][i]]=pointnowdis+all[pointnow][i+5]
            lastpoint[all[pointnow][i]]=pointnow
        }
        else {
            break
        }
    }
}
*/
