%let pgm=utl-fun-with-ascii-line-plots-cartoon-character-mickey-mouse;

Fun with ascii line plots cartoon character mickey mouse


  1 plot mickey
  2 dress up mickey

github
https://tinyurl.com/ysr8zm2m
https://github.com/rogerjdeangelis/utl-fun-with-ascii-line-plots-cartoon-character-mickey-mouse

Looks best with old classic editor with
less vertical separation.


/******************************************************************************************************************************/
/*            |                                    |                                                                          */
/* INPUT      |           PROCESS                  |                               OUTPUT                                     */
/*            |                                    |                                                                          */
/* Bunch of   |data para;                          |           *****                                          *****           */
/* circles    | length pltstr $10;                 |      ******   ******        MICKEY MOUSE              ****  ******       */
/* x**2+y**2=1| retain pltstr " ";                 |    ***             ***                            ***           ***      */
/*            | drop yy;                           |  ***                 ***                         ***               ***   */
/*            | do x=-1 to 1 by .001;              | **                     **                       **                   **  */
/*            |   do y=-1 to 1 by .001;            | *                       *                       *                     *  */
/*            |    if  round(x**2+y**2,.0005)=1    | *                       **                     **                     ** */
/*            |        then output;                |*                         *         ***         *                       * */
/*            |    if  round(x**2+y**2,.0005)=.5   |*                         *    *****  ******    *                       * */
/*            |      then do;                      | *                       **  ***           ***  **                     ** */
/*            |           xx=x;x=x+1.5;yy=y; y=y+1;| **                     ** ***               *** **                   **  */
/*            |           output;y=yy;x=xx;        |  **                   *****                   *****                 **   */
/*            |      end;                          |   ***               *****                       *****             ***    */
/*            |      if  round(x**2+y**2,.0005)=.5 |     ****         **** **                         ** ****       ****      */
/*            |      then do;                      |        ***********    *                           *     ********         */
/*            |           xx=x;x=x-1.5;yy=y; y=y+1;|                      **                           **                     */
/*            |           output;y=yy;x=xx;        |                      *                             *                     */
/*            |      end;                          |                      *          SGF 2017 *         *                     */
/*            |   end;                             |                      *                             *                     */
/*            | end;                               |                      **                           **                     */
/*            | x=-.20;                            |                       *                           *                      */
/*            | y=0;                               |                       **                         **                      */
/*            | pltstr="SGF 2017 *";               |                        **                       **                       */
/*            | output;                            |                         ***                   ***                        */
/*            | stop;                              |                           ***               ***                          */
/*            |run;                                |                             ***           ***                            */
/*            |                                    |                               *************                              */
/*            | options ls=100 ps=40;              |                                                                          */
/*            | proc plot data=para;               |                                                                          */
/*            |   plot y*x='*' $ pltstr;           |                                                                          */
/*            | run;quit;                          |                                                                          */
/*            |                                    |                                                                          */
/******************************************************************************************************************************/

/*         _       _               _      _
/ |  _ __ | | ___ | |_   _ __ ___ (_) ___| | _____ _   _
| | | `_ \| |/ _ \| __| | `_ ` _ \| |/ __| |/ / _ \ | | |
| | | |_) | | (_) | |_  | | | | | | | (__|   <  __/ |_| |
|_| | .__/|_|\___/ \__| |_| |_| |_|_|\___|_|\_\___|\__, |
    |_|                                            |___/
 _                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

Just create varous size circles
and postion them where you want them

x**2+y**2=1 (expand and contract

/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

data para;
 length pltstr $10;
 retain pltstr " ";
 drop yy;
 do x=-1 to 1 by .001;
   do y=-1 to 1 by .001;
    if  round(x**2+y**2,.0005)=1
        then output;
    if  round(x**2+y**2,.0005)=.5
      then do;
           xx=x;x=x+1.5;yy=y; y=y+1;
           output;y=yy;x=xx;
      end;
      if  round(x**2+y**2,.0005)=.5
      then do;
           xx=x;x=x-1.5;yy=y; y=y+1;
           output;y=yy;x=xx;
      end;
   end;
 end;
 x=-.20;
 y=0;
 pltstr="SGF 2017 *";
 output;
 stop;
run;

options ls=100 ps=40;
proc plot data=para;
  plot y*x='*' $ pltstr;;
run;quit;


/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/*                               Plot of Y*X$PLTSTR.  Symbol used is '*'.                                                 */
/*                                                                                                                        */
/*      Y |                                                                                                               */
/*  1.670 +            *************                                         *************                                */
/*        |          ***           ***                                     ***           ***                              */
/*        |        ***               ***                                 ***               ***                            */
/*        |       **                   **                               **                   **                           */
/*        |      **                     **                             **                     **                          */
/*  1.225 +      *                       *                             *                       *                          */
/*        |     **                       **                           **                       **                         */
/*        |     *                         *                           *                         *                         */
/*        |     *                         *      ***************      *                         *                         */
/*        |     **                       **   ****             ****   **                       **                         */
/*  0.780 +      *                       *  ***                   ***  *                       *                          */
/*        |      **                     *****                       *****                     **                          */
/*        |       **                   ****                           ****                   **                           */
/*        |        ***               *****                             *****               ***                            */
/*        |          ***           *** **                               ** ***           ***                              */
/*  0.335 +            *************   *                                 *   *************                                */
/*        |                           **                                 **                                               */
/*        |                           *                                   *                                               */
/*        |                           *                                   *                                               */
/*        |                           *             * SGF 2017 *          *                                               */
/*  0.110 +                           *                                   *                                               */
/*        |                           **                                 **                                               */
/*        |                            *                                 *                                                */
/*        |                            **                               **                                                */
/*        |                             *                               *                                                 */
/*  0.555 +                              **                           **                                                  */
/*        |                               **                         **                                                   */
/*        |                                ***                     ***                                                    */
/*        |                                  ***                 ***                                                      */
/*        |                                    *****         *****                                                        */
/*  1.000 +                                        ***********                                                            */
/*        -+--------+--------+--------+--------+--------+--------+--------+--------+--------+--------+-                   */
/*       -2.5     -2.0     -1.5     -1.0     -0.5      0.0      0.5      1.0      1.5      2.0      2.5                   */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*___        _                                            _      _
|___ \    __| |_ __ ___  ___ ___   _   _ _ __   _ __ ___ (_) ___| | _____ _   _
  __) |  / _` | `__/ _ \/ __/ __| | | | | `_ \ | `_ ` _ \| |/ __| |/ / _ \ | | |
 / __/  | (_| | | |  __/\__ \__ \ | |_| | |_) || | | | | | | (__|   <  __/ |_| |
|_____|  \__,_|_|  \___||___/___/  \__,_| .__/ |_| |_| |_|_|\___|_|\_\___|\__, |
                                        |_|                               |___/
*/

The best part of ascii line plots is the ease with which you can edit the plot


                                                                     
           *****                                                 *****      
      ******   ******                                       ******   ******   
    ***             ***                                   ***             ***   
  ***                 ***                               ***                 *** 
 **                     **                             **                    **  
 *         ___           *                             *          ___          *  
**        / _ \           **                           **        / _ \         ** 
*        | (_) |           *         *********         *        | (_) |         *  
*         \___/            *    ******       ******    *         \___/          *  
**                       **  ***                 ***  **                       ** 
 **                     ** ***                     *** **                     ** 
  **                   *****                         *****                   ** 
   ***               *****                             *****               ***  
     ****         **** **                               ** ****         **** 
        ***********    *                                 *    ***********  
                      **    ____   ____ _____   _ ____   ** 
                      *    / ___| / ___|  ___| / | ___|   *  
                      *    \___ \| |  _| |_    | |___ \   *  
                      *     ___) | |_| |  _|   | |___) |  *  
                      **   |____/ \____|_|     |_|____/  ** 
                       *                                 *  
                       **                               ** 
                        **                             ** 
                         ***                         ***  
                           ***                     ***  
                             ***                 ***  
                               ******       ****** 
                                    *********  
 /*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/

















































|
|
|
|
|
|
|
|
|
|
|
|
|






























                                                                 
       *****                                                 *****      
      ******   ******                                       ******   ******   
    ***             ***                                   ***             ***   
  ***                 ***                               ***                 *** 
 **                     **                             **                     **  
 *                       *                             *                       *  
**                       **                           **                       ** 
*                         *         *********         *                         *
*                         *    ******       ******    *                         *
**                       **  ***                 ***  **                       ** 
 **                     ** ***                     *** **                     ** 
  **                   *****                         *****                   ** 
   ***               *****                             *****               ***  
     ****         **** **                               ** ****         **** 
        ***********    *                                 *    ***********  
                      **                                 ** 
                      *                                   *  
                      *             * SGF 2017 *          *  
                      *                                   *  
                      **                                 ** 
                       *                                 *  
                       **                               ** 
                        **                             ** 
                         ***                         ***  
                           ***                     ***  
                             ***                 ***  
                               ******       ****** 
                                      *********  


















data para;
 length pltstr $10;
 retain pltstr " ";
 drop yy;
 do x=-1 to 1 by .001;
   do y=-1 to 1 by .001;
    if  round(x**2+y**2,.0005)=1  then output;
    if  round(x**2+y**2,.0005)=.5 then do;
           xx=x;x=x+1.5;yy=y; y=y+1; output;y=yy;x=xx;
      end;
      if  round(x**2+y**2,.0005)=.5 then do;
           xx=x;x=x-1.5;yy=y; y=y+1; output;y=yy;x=xx;
      end;
   end;
 end;
 x=-.20;
 y=0;
 pltstr="SGF 2017 *";
 output;
 stop;
run;

options ls=100 ps=40;
proc plot data=para;
  plot y*x='*' $ pltstr;;
run;quit;


                                                                     
           *****                                                 *****      
      ******   ******                                       ******   ******   
    ***             ***                                   ***             ***   
  ***                 ***                               ***                 *** 
 **                     **                             **                     **  
 *                       *                             *                       *  
**                       **                           **                       ** 
*                         *         *********         *                         *  
*                         *    ******       ******    *                         *  
**                       **  ***                 ***  **                       ** 
 **                     ** ***                     *** **                     ** 
  **                   *****                         *****                   ** 
   ***               *****                             *****               ***  
     ****         **** **                               ** ****         **** 
        ***********    *                                 *    ***********  
                      **                                 ** 
                      *                                   *  
                      *             * SGF 2017 *          *  
                      *                                   *  
                      **                                 ** 
                       *                                 *  
                       **                               ** 
                        **                             ** 
                         ***                         ***  
                           ***                     ***  
                             ***                 ***  
                               ******       ****** 
                                      *********  

 Doing some easy manual edits

                                                                       
             *****                                                 *****      
        ******   ******                                       ******   ******   
      ***             ***                                   ***             ***   
    ***                 ***                               ***                 *** 
   **                     **                             **                    **  
   *         ___           *                             *          ___          *  
  **        / _ \           **                           **        / _ \         ** 
  *        | (_) |           *         *********         *        | (_) |         *  
  *         \___/            *    ******       ******    *         \___/          *  
  **                       **  ***                 ***  **                       ** 
   **                     ** ***                     *** **                     ** 
    **                   *****                         *****                   ** 
     ***               *****                             *****               ***  
       ****         **** **                               ** ****         **** 
          ***********    *                                 *    ***********  
                        **    ____   ____ _____   _ ____   ** 
                        *    / ___| / ___|  ___| / | ___|   *  
                        *    \___ \| |  _| |_    | |___ \   *  
                        *     ___) | |_| |  _|   | |___) |  *  
                        **   |____/ \____|_|     |_|____/  ** 
                         *                                 *  
                         **                               ** 
                          **                             ** 
                           ***                         ***  
                             ***                     ***  
                               ***                 ***  
                                 ******       ****** 
                                      *********  
