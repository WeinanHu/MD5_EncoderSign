//
//  WHMD5.h
//  MD5_EncoderSign
//
//  Created by Wayne on 16/5/6.
//  Copyright © 2016年 WayneHu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WHMD5 : NSObject
+ (NSString *)md5:(NSString *)str;

+(NSString *)caculateMd5WithStrings:(NSString *)str1,...;
@end
