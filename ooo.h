//
//  ooo.h
//  茶百科
//
//  Created by 王一成 on 15/11/5.
//  Copyright © 2015年 liuning. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ooo : NSObject

/**
 * gets singleton object.
 * @return singleton
 */
+ (ooo*)sharedInstance;

@end
