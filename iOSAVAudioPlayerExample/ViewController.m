//
//  ViewController.m
//  iOSAVAudioPlayerExample
//
//  Created by Chris Milne on 12/5/14.
//  Copyright (c) 2014 ideo. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
    @property (strong, nonatomic) AVAudioPlayer *audioPlayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Construct URL to sound file
    NSString *path = [NSString stringWithFormat:@"%@/drum01.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    // Create audio player object and initialize with URL to sound
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    [self.audioPlayer prepareToPlay];
}

-(IBAction)pressButton {
    [self.audioPlayer play];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
