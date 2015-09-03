//
//  main.m
//  06-Foundation_NSString的创建
//
//  Created by Mac on 14-8-28.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark string的简单创建
void stringCreate(){
     NSString *str1  =  @"A string!";//相当于直接快捷创建字符串，不需要释放内存
     
	 NSLog(@"%@",str1);
     
	 NSString *str2 =[[NSString alloc] init];
    
       str2 = @"A string!";
    
    
    NSString *str3 =[NSString stringWithUTF8String:"A string!"];
    NSLog(@"%@",str3);
    
    NSString *str4 =[[NSString alloc] initWithFormat:@"I create a string!"];
     NSLog(@"%@",str4);
    NSString *str5 =[NSString stringWithFormat:@"I create a string!"];
     NSLog(@"%@",str5);
}

#pragma  mark string从文件中读取出来并创建
void stringCreateFromFiles(){
    
    NSString *path = [NSString stringWithFormat:@"/Users/Mac/Desktop/IOS开发学习/06-Foundation_NSString的创建/abc.txt"];
    
    NSError *error;
    NSString *str6 = [NSString stringWithContentsOfFile: path  encoding: NSUTF8StringEncoding error:&error];
    if(error==nil){
        
      NSLog(@"文件读取成功-------%@",str6);
    }else{
      NSLog(@"文件读取失败-------%@",error);
      }
}
#pragma mark  string从URL中读取出来并创建

void stringCreateFromUrl(){
        
    NSURL *url =[NSURL URLWithString:@"http://www.baidu.com"];
    NSError *error;
    NSString *str = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    if(error==nil){
        
        NSLog(@"文件读取成功-------%@",str);
    }else{
        NSLog(@"文件读取失败-------%@",error);
    }
    
    
    }
    
   

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        stringCreateFromUrl();

    }
    return 0;
}
