//
//  main.m
//  MD5_EncoderSign
//
//  Created by Wayne on 16/5/6.
//  Copyright © 2016年 WayneHu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WHMD5.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSArray *arr;// = [[NSArray alloc]init];
        NSLog(@"%ld",arr.count);
        NSArray *md5Arr = [WHMD5 caculateMd5WithStrings:@"http:////",@"chaweizhang.eclicks.cn//combine_violation/carno_viols?",@"appid=1",@"cityList=xingtai",@"openUDID=d7269b6845a5dc9891103bfc0118a303870b2cbd",@"vcode=0747",@"os=iOS",@"cartype=02",@"app=QueryViolations",@"systemVersion=9.0.2",@"carno=冀EDS997",@"appChannel=App Store",@"jb=1",@"cUDID=308C4EE2-34EF-417B-9D6D-EA9A797197A6",@"appVersion=5.8.2",@"model=iPhone6 2"];
        NSLog(@"%@",md5Arr);
    }
    return 0;
}
