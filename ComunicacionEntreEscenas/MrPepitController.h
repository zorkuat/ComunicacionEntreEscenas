//
//  MrPepitController.h
//  ComunicacionEntreEscenas
//
//  Created by cice on 11/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MrPepitDelegate.h"

@interface MrPepitController : UIViewController

@property (nonatomic,weak) id<MrPepitDelegate> delegado;

-(void)recibirSaludo: (NSString*)mensaje;



@end
