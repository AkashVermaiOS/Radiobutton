//
//  ViewController.m
//  Radiobutton
//
//  Created by Medma Infomatix on 8/5/15.
//  Copyright (c) 2015 Medma Infomatix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _radiobutton1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 80, 75, 75)];
    [_radiobutton1 setTag:0];
    [_radiobutton1 setBackgroundImage:[UIImage imageNamed:@"radioButtonDisabled.png"] forState:UIControlStateNormal];
    [_radiobutton1 setBackgroundImage:[UIImage imageNamed:@"radioButtonActiveHover"] forState:UIControlStateSelected];
    [_radiobutton1 addTarget:self action:@selector(radiobuttonSelected:) forControlEvents:UIControlEventTouchUpInside];
    
    _radiobutton2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 80, 75, 75)];
    [_radiobutton2 setTag:1];
    [_radiobutton2 setBackgroundImage:[UIImage imageNamed:@"radioButtonDisabled.png"] forState:UIControlStateNormal];
    [_radiobutton2 setBackgroundImage:[UIImage imageNamed:@"radioButtonActiveHover"] forState:UIControlStateSelected];
    [_radiobutton2 addTarget:self action:@selector(radiobuttonSelected:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self.view addSubview:_radiobutton1];
    [self.view addSubview:_radiobutton2];
    
}


-(void)radiobuttonSelected:(id)sender
{
    switch ([sender tag])
    {
        case 0:
            if([_radiobutton1 isSelected]==YES)
            {
                [_radiobutton1 setSelected:NO];
                [_radiobutton2 setSelected:YES];
            }
            else{
                [_radiobutton1 setSelected:YES];
                [_radiobutton2 setSelected:NO];
            }
            
            break;
        case 1:
            if([_radiobutton2 isSelected]==YES)
            {
                [_radiobutton2 setSelected:NO];
                [_radiobutton1 setSelected:YES];
            }
            else{
                [_radiobutton2 setSelected:YES];
                [_radiobutton1 setSelected:NO];
            }
            
              default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
