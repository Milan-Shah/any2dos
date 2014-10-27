//
//  MyMapViewController.h
//  Any.2DO
//
//  Created by Milan Shah on 8/3/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MyMapViewController : UIViewController <MKMapViewDelegate>

@property (nonatomic,strong) IBOutlet MKMapView *mapView;

@end
