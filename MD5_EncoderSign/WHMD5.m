//
//  WHMD5.m
//  MD5_EncoderSign
//
//  Created by Wayne on 16/5/6.
//  Copyright © 2016年 WayneHu. All rights reserved.
//

#import "WHMD5.h"
#import <CommonCrypto/CommonDigest.h>
#import "PaiLie.h"
@interface WHMD5()

@end
static NSMutableArray *strings;
@implementation WHMD5


+ (NSString *) md5:(NSString *)str
{
    const char *cStr = [str UTF8String];
    unsigned char result[16];
    CC_MD5( cStr, (CC_LONG)strlen(cStr), result );
    return [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}
+(NSArray *)caculateMd5WithStrings:(NSString *)fistPara,...{
    va_list arguments;
    id eachObject;
    
    NSMutableArray *mutaArr = [NSMutableArray array];
    
    if (fistPara) {
        NSLog(@"%@",fistPara);
        [mutaArr addObject:fistPara];
        va_start(arguments, fistPara);
        
        while ((eachObject = va_arg(arguments, id))) {
            NSLog(@"%@",eachObject);
            [mutaArr addObject:eachObject];
        }
        va_end(arguments);
    }
    ;
    return [self caculateMd5WithArray:mutaArr];
}
+(NSArray*)caculateMd5WithArray:(NSArray*)arr{
    return  [PaiLie getPaiLieArrayWithArray:[arr copy] withCount:arr.count];
    
}
@end
