//
//  MrPepitDelegate.h
//  ComunicacionEntreEscenas
//
//  Created by cice on 11/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MrPepitDelegate <NSObject>

-(void)recibirSaludo:(NSMutableString *)conversacion;
-(void)recibirInsulto:(NSMutableString *)conversacion;

@end
