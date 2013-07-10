//
//  NIAUTableOfContentsViewController.m
//  New Internationalist Magazine Australia
//
//  Created by Simon Loffler on 26/06/13.
//  Copyright (c) 2013 New Internationalist Australia. All rights reserved.
//

#import "NIAUTableOfContentsViewController.h"

@interface NIAUTableOfContentsViewController ()

@end

@implementation NIAUTableOfContentsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.imageView.image = self.cover;
    
    NSLog(@"TODO: Get the real editor's image.");
    [self.editorImageView setImage:[UIImage imageNamed:@"default_editors_photo.png"]];
    
    // Shadow for the cover
    
    self.imageView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.imageView.layer.shadowOffset = CGSizeMake(0, 2);
    self.imageView.layer.shadowOpacity = 0.3;
    self.imageView.layer.shadowRadius = 3.0;
    self.imageView.clipsToBounds = NO;
    
    // Draw a round mask for the editor's photo
    
    self.editorImageView.layer.masksToBounds = YES;
    self.editorImageView.layer.cornerRadius = self.editorImageView.bounds.size.width / 2.;
    
    // Wrap the text around the editor's photo
    
    CGRect editorImageViewRect = [self.editorsLetterTextView convertRect:self.editorImageView.frame fromView:self.view];
    
    // self.editorsLetterTextView.textContainer.exclusionPaths = @[[UIBezierPath bezierPathWithRoundedRect:editorImageViewRect cornerRadius:self.editorImageView.layer.cornerRadius]];
    // TODO: Work out how to only exclude words not characters. For now I'll just use a square exclusionPath.
    
    self.editorsLetterTextView.textContainer.exclusionPaths = @[[UIBezierPath bezierPathWithRect:editorImageViewRect]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end