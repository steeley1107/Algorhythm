//
//  playListDetailViewController.m
//  Algorhythm
//
//  Created by Steele on 2015-09-13.
//  Copyright (c) 2015 Steele. All rights reserved.
//

#import "playListDetailViewController.h"
#import "Playlist.h"

@interface playListDetailViewController ()

@end

@implementation playListDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.playlist) {
        self.playlistCoverImage.image = self.playlist.playListIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playListTitle;
        self.playlistDescription.text = self.playlist.playListDescription;
        self.playlistArtist0.text = self.playlist.playListArtists[0];
        self.playlistArtist1.text = self.playlist.playListArtists[1];
        self.playlistArtist2.text = self.playlist.playListArtists[2];
        
        
        
        
    }
   
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
