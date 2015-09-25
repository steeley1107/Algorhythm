//
//  Playlist.m
//  Algorhythm
//
//  Created by Steele on 2015-09-13.
//  Copyright (c) 2015 Steele. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

-(instancetype)initWithIndex:(NSUInteger)index {
    self = [super init];
    if (self) {
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        NSArray *library = musicLibrary.library;
        
        NSDictionary *playlistDictionary = library[index];
        
        
        _playListTitle = [playlistDictionary objectForKey:kTitle];
        _playListDescription = [playlistDictionary objectForKey:kDescription];
        
        NSString *iconName = [playlistDictionary objectForKey:kIcon];
        _playListIcon = [UIImage imageNamed:iconName];
        
        NSString *largeIconName = [playlistDictionary objectForKey:kLargeIcon];
        _playListIconLarge = [UIImage imageNamed:largeIconName];

        
        _playListArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
        
        
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictionary:colorDictionary] ;
        
        
        
    }
    return self;
    
}

- (UIColor *)rgbColorFromDictionary: (NSDictionary *)colorDictionary {
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255 green:green/255 blue:blue/255 alpha:alpha];
    
}


@end
