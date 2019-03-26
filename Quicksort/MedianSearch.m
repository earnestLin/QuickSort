//
//  MedianSearch.m
//  Quicksort
//
//  Created by 林睿强 on 2019/3/26.
//  Copyright © 2019年 林睿强. All rights reserved.
//

#import "MedianSearch.h"

@implementation MedianSearch

/**
 找中位数方法
 
 @param originData 原始数据
 @param dataLen 数据长度（数组包含数据数量）
 @return 中位数
 */
int searchMedian(int originData[], int dataLen) {
    int low = 0;
    int high = dataLen - 1;
    
    int mid = (dataLen - 1) / 2;
    int div = partSort(originData, low, high);
    
    while (div != mid) {
        if (mid < div) {
            // 左半区间找
            div = partSort(originData, low, div - 1);
        } else {
            // 右半区间找
            div = partSort(originData, div + 1, high);
        }
    }
    // 找到了
    return originData[mid];
}


/**
 快排思想

 @param a 排序数组
 @param start 起始数据
 @param end 终止数据
 @return 节点结果
 */
int partSort(int a[], int start, int end) {
    int low = start;
    int high = end;
    
    // 选取关键字
    int key = a[end];
    while (low < high) {
        // 左边找比key大的值
        while (low < high && a[low] <= key) {
            ++low;
        }
        
        // 右边找比key小的值
        while (low < high && a[high] >= key) {
            --high;
        }
        
        if (low < high) {
            // 找到之后交换左右的值
            int temp = a[low];
            a[low] = a[high];
            a[high] = temp;
        }
    }
        
    int temp = a[high];
    a[high] = a[end];
    a[end] = temp;
    
    return low;
}

@end
