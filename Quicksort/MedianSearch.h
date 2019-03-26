//
//  MedianSearch.h
//  Quicksort
//
//  Created by 林睿强 on 2019/3/26.
//  Copyright © 2019年 林睿强. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MedianSearch : NSObject

/**
 找中位数方法

 @param originData 原始数据
 @param dataLen 数据长度（数组包含数据数量）
 @return 中位数
 */
int searchMedian(int originData[], int dataLen);

@end

NS_ASSUME_NONNULL_END
