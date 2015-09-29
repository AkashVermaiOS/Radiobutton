//
//  ViewController.h
//  Radiobutton
//
//  Created by Medma Infomatix on 8/5/15.
//  Copyright (c) 2015 Medma Infomatix. All rights reserved.
//

#import <UIKit/UIKit.h>

NSMutableArray *array;
@interface ViewController : UIViewController



@property(strong, nonatomic) UIButton *radiobutton1;
@property(strong, nonatomic) UIButton *radiobutton2;


-(void)radiobuttonSelected:(id)sender;

@end

