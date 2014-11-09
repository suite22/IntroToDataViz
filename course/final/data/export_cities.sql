/ *  
 D o w n l o a d e d   d a t a   f r o m :   h t t p : / / g e o n a m e s . u s g s . g o v / d o c s / s t a t e g a z / N a t i o n a l F i l e _ 2 0 1 4 1 0 0 5 . z i p  
 D e f i n t i o n s   a t :   h t t p : / / g e o n a m e s . u s g s . g o v / d o m e s t i c / s t a t e s _ f i l e f o r m a t . h t m  
 * /  
  
 S E T   N O C O U N T   O N  
  
 D E C L A R E   @ c i t i e s   t a b l e  
 (  
 	 i d   i n t ,  
 	 c i t y   v a r c h a r ( 1 0 0 ) ,  
 	 [ s t a t e ]   v a r c h a r ( 2 ) ,  
 	 l a t i t u d e   d e c i m a l ( 1 2 , 7 ) ,  
 	 l o n g i t u d e   d e c i m a l ( 1 3 , 7 )  
 )  
 D E C L A R E   @ j s o n   n v a r c h a r ( m a x )  
  
 ; W I T H   c i t i e s   A S  
 	 (  
 	 S E L E C T    
 	 	 [ i d ] ,  
 	 	 c i t y ,  
 	 	 [ s t a t e ] ,  
 	 	 l a t i t u d e ,  
 	 	 l o n g i t u d e  
 	 F R O M  
 	 	 ( 	  
 	 	 S E L E C T    
 	 	 	 [ i d ] ,  
 	 	 	 p r i n c i p a l _ n a m e   a s   c i t y ,  
 	 	 	 f e a t u r e _ n a m e ,  
 	 	 	 [ s t a t e ] ,  
 	 	 	 l a t i t u d e ,  
 	 	 	 l o n g i t u d e ,  
 	 	 	 - -   r a n k   c i t i e s   h i g h e r   t h a t   h a v e   t h e   s a m e   f e a t u r e _ n a m e   a s   p r i n c i p a l   n a m e  
 	 	 	 R O W _ N U M B E R ( )   O V E R   ( P A R T I T I O N   B Y   p r i n c i p a l _ n a m e ,   c o u n t y ,   [ s t a t e ]   O R D E R   B Y   i s _ p r i n c i p a l   D E S C )   a s   [ r a n k ]  
 	 	 F R O M  
 	 	 	 (  
 	 	 	 S E L E C T    
 	 	 	 	 F E A T U R E _ I D   a s   [ i d ] ,  
 	 	 	 	 M A P _ N A M E   a s   p r i n c i p a l _ n a m e ,  
 	 	 	 	 F E A T U R E _ N A M E   a s   f e a t u r e _ n a m e ,  
 	 	 	 	 C O U N T Y _ N A M E   a s   c o u n t y ,  
 	 	 	 	 S T A T E _ A L P H A   a s   [ s t a t e ] ,  
 	 	 	 	 P R I M _ L A T _ D E C   a s   l a t i t u d e ,  
 	 	 	 	 P R I M _ L O N G _ D E C   a s   l o n g i t u d e ,  
 	 	 	 	 C A S E  
 	 	 	 	 	 W H E N   F E A T U R E _ N A M E   =   M A P _ N A M E   T H E N   1  
 	 	 	 	 	 E L S E   0  
 	 	 	 	 E N D   a s   i s _ p r i n c i p a l  
 	 	 	 F R O M   u s _ a r e a s _ l a t l o n g  
 	 	 	 W H E R E  
 	 	 	 	 F E A T U R E _ C L A S S   I N   ( ' P o p u l a t e d   P l a c e ' )  
 	 	 	 )   d t  
 	 	 )   d t  
 	 W H E R E   [ r a n k ]   =   1  
 	 )  
  
 - -   i n s e r t   i n t o   a   t e m p   t a b l e  
 I N S E R T   I N T O   @ c i t i e s   ( [ i d ] ,   c i t y ,   [ s t a t e ] ,   l a t i t u d e ,   l o n g i t u d e )  
 	 S E L E C T   T O P   1 0 0 0    
 	 	 [ i d ] ,  
 	 	 c i t y ,  
 	 	 [ s t a t e ] ,  
 	 	 l a t i t u d e ,  
 	 	 l o n g i t u d e  
 	 F R O M   c i t i e s  
 	 O R D E R   B Y  
 	 	 c i t y ,   [ s t a t e ]  
  
 - -   c o m m e n t   o u t   t h e   b e l o w   l i n e   i f   y o u   o n l y   w a n t   J S O N   o u t p u t  
 S E L E C T   [ i d ] ,  
 	 c i t y ,  
 	 [ s t a t e ] ,  
 	 l a t i t u d e   a s   l a t i t u d e ,  
 	 l o n g i t u d e   a s   l o n g i t u d e  
 F R O M   @ c i t i e s  
  
 - -   c o n v e r t   t o   j s o n  
 S E L E C T   @ j s o n   =   ' [ '   +   S T U F F ( (  
                 S E L E C T    
                         ' , { " i d " : '   +   C A S T ( [ i d ]   a s   v a r c h a r ( 1 0 ) )  
                         +   ' , " c i " : " '   +   c i t y   +   ' " '  
                         +   ' , " s t " : " '   +   s t a t e   +   ' " '  
                         +   ' , " l a " : " '   +   C A S T ( l a t i t u d e   a s   v a r c h a r ( 1 2 ) )   +   ' " '  
                         +   ' , " l o " : " '   +   C A S T ( l o n g i t u d e   a s   v a r c h a r ( 1 3 ) )   +   ' " '  
                         + ' } '  
                 F R O M   @ c i t i e s   t 1  
                 F O R   X M L   P A T H ( ' ' ) ,   t y p e  
         ) . v a l u e ( ' . ' ,   ' v a r c h a r ( m a x ) ' ) ,   1 ,   1 ,   ' ' )   +   ' ] '  
  
 - -   o u t p u t   l o n g   s t r i n g  
 D E C L A R E   @ c o u n t e r   i n t   =   0 ,  
 	 @ t o t a l _ p r i n t s   i n t   =   ( L E N ( @ j s o n )   /   4 0 0 0 )   +   1  
 	  
 W H I L E   @ c o u n t e r   <   @ t o t a l _ p r i n t s  
 B E G I N  
         p r i n t   S U B S T R I N G ( @ j s o n ,   @ c o u n t e r   *   4 0 0 0 ,   4 0 0 0 )    
         S E T   @ c o u n t e r   =   @ c o u n t e r   +   1  
 E N D 