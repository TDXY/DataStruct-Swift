//
//  BubbleSort.swift
//  AllKindsOfSort
//
//  Created by Mr.LuDashi on 16/11/4.
//  Copyright © 2016年 ZeluLi. All rights reserved.
//

import Foundation

/// 冒泡排序：时间复杂度----O(n^2)
class BubbleSort: SortType {
    func sort(items: Array<Int>) -> Array<Int> {
        var list = items
        for i in 0..<list.count {
            print("第\(i + 1)轮冒泡：")
            var j = list.count - 1
            while j > i {
                if list[j - 1] > list[j]  { //前边的大于后边的则进行交换
                    print("\(list[j - 1]) > \(list[j]): 进行交换")
                    let temp = list[j]
                    list[j] = list[j - 1]
                    list[j - 1] = temp
                } else {
                    print("\(list[j - 1]) <= \(list[j]): 不进行交换")
                }
                j = j - 1
            }
            print("第\(i + 1)轮冒泡结束")
            print("当前结果为：\n\(list)\n")
        }
        return list
    }
}


/// 插入排序-O(n^2)
class InsertSort: SortType{
    func sort(items: Array<Int>) -> Array<Int> {
        var list = items
        for i in 1..<list.count {
            print("第\(i)轮插入：")
            print("要选择插入的值为：\(list[i])")
            
            //寻找在有序表中相应插入的位置
            var insertIndex = -1
            for j in 0..<i {
                if list[i] < list[j] {
                    insertIndex = j
                    break
                }
            }
            print("要插入的位置为：\(insertIndex)")
            print("将", separator: "", terminator: " ")
            
            //后移并插入
            if insertIndex != -1 {
                let insertValue = list[i]
                var k = i
                //将插入位置后方的元素平移动，腾出插入的位置
                while k > insertIndex {
                    list[k] = list[k - 1]
                    k = k - 1
                    print("\(list[k])", separator: "", terminator: " ")
                }
                //插入值
                list[insertIndex] = insertValue
                print("依次右移", separator: "", terminator: "\n")
            }
            print("本轮插入完毕, 插入结果为：\n\(list)\n")
        }
        return list
        
    }
}


/// 简单选择排序－O(n^2)
class SimpleSelectionSort: SortType {
    func sort(items: Array<Int>) -> Array<Int> {
        var list = items
        for i in 0..<list.count {
            print("第\(i+1)轮选择，选择下标的范围为\(i)----\(list.count)")
            var j = i + 1
            var minValue = list[i]
            var minIndex = i
            
            //寻找无序部分中的最小值
            while j < list.count {
                if minValue > list[j] {
                    minValue = list[j]
                    minIndex = j
                }
                j = j + 1
            }
            print("在后半部分乱序数列中，最小值为：\(minValue), 下标为：\(minIndex)")
            //与无序表中的第一个值交换，让其成为有序表中的最后一个值
            if minIndex != i {
                print("\(minValue)与\(list[i])交换")
                let temp = list[i]
                list[i] = list[minIndex]
                list[minIndex] = temp
            }
            print("本轮结果为：\(list)\n")
        }
        return list

    }
}


