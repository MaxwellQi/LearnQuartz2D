//
//  ViewController.m
//  DownloadProgress
//
//  Created by 张旗 on 8/27/16.
//  Copyright (c) 2016 Maxwell. All rights reserved.
//

#import "ViewController.h"
#import "DownloadProgressView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *progressValueLab;

@property (weak, nonatomic) IBOutlet DownloadProgressView *progressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slideProgress:(UISlider *)slider {
    self.progressValueLab.text = [NSString stringWithFormat:@"%.2f%%",slider.value * 100];
    self.progressView.progress = slider.value;
}


@end
