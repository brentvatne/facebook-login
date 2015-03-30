//
//  RCTVideoPlayer.m
//  FacebookLogin
//
//  Created by Brent Vatne on 2015-03-29.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "RCTVideoPlayer.h"

@import MediaPlayer;

@implementation RCTVideoPlayer
{
    MPMoviePlayerController *_player;
}

- (id)init
{
    if ((self = [super init])) {
        _player = [[MPMoviePlayerController alloc] init];
        [self addSubview: _player.view];

    }
    return self;
}

- (void)setSrc:(NSString *)source
{
    NSURL *videoURL = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource:source ofType:@"mp4"]];
    [_player setContentURL:videoURL];
    [_player setControlStyle:MPMovieControlStyleNone];
    [_player setScalingMode:MPMovieScalingModeNone];
    [_player setRepeatMode:MPMovieRepeatModeOne];
    [_player prepareToPlay];
    [_player play];
}

- (void)setResizeMode:(NSInteger)mode
{
    [_player setScalingMode:mode];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _player.view.frame = self.bounds;
}


@end
