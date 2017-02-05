//
//  DetailViewController.h
//  Project You
//
//  Created by Justin Rowe on 2/4/17.
//  Copyright © 2017 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Project_You+CoreDataModel.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Event *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

