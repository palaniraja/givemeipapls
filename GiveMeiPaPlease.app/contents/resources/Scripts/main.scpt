FasdUAS 1.101.10   ��   ��    k             l     ��  ��    6 0Applescript Droplet to create ipa from xarchive.     � 	 	 ` A p p l e s c r i p t   D r o p l e t   t o   c r e a t e   i p a   f r o m   x a r c h i v e .   
  
 l     ��������  ��  ��        l     ��  ��    n hIt is basically a tinkered version of my passarchive droplet - https://github.com/palaniraja/PassArchive     �   � I t   i s   b a s i c a l l y   a   t i n k e r e d   v e r s i o n   o f   m y   p a s s a r c h i v e   d r o p l e t   -   h t t p s : / / g i t h u b . c o m / p a l a n i r a j a / P a s s A r c h i v e      l     ��������  ��  ��     ��  i         I     �� ��
�� .aevtodocnull  �    alis  l      ����  o      ���� 0 theitems theItems��  ��  ��    l    �     k     �       I    ��  
�� .sysodlogaskr        TEXT  m          � ! ! ( E n t e r   i p a   f i l e   n a m e    �� " #
�� 
dtxt " m     $ $ � % %  a r c h i v e . i p a # �� & '
�� 
btns & J     ( (  )�� ) m     * * � + +  O K��   ' �� ,��
�� 
dflt , m    	���� ��     - . - r     / 0 / n     1 2 1 J     3 3  4�� 4 1    ��
�� 
ttxt��   2 1    ��
�� 
rslt 0 o      ���� 0 destipaname destIpaName .  5 6 5 t    � 7 8 7 Q    � 9 : ; 9 O    � < = < k   " � > >  ? @ ? l  " "�� A B��   A G Arepeat the command to compress each item as an individual archive    B � C C � r e p e a t   t h e   c o m m a n d   t o   c o m p r e s s   e a c h   i t e m   a s   a n   i n d i v i d u a l   a r c h i v e @  D�� D X   " � E�� F E k   2 � G G  H I H l  2 2�� J K��   J 7 1used to extract the name and location of the file    K � L L b u s e d   t o   e x t r a c t   t h e   n a m e   a n d   l o c a t i o n   o f   t h e   f i l e I  M N M r   2 7 O P O n   2 5 Q R Q 1   3 5��
�� 
pALL R o   2 3���� 0 oneitem oneItem P o      ���� 0 itemprop itemProp N  S T S l  8 8�� U V��   U  display dialog itemProp    V � W W . d i s p l a y   d i a l o g   i t e m P r o p T  X Y X l  8 8�� Z [��   Z  where the file is    [ � \ \ " w h e r e   t h e   f i l e   i s Y  ] ^ ] r   8 C _ ` _ n   8 A a b a 1   = A��
�� 
strq b n   8 = c d c 1   9 =��
�� 
psxp d o   8 9���� 0 oneitem oneItem ` o      ���� 0 itempath itemPath ^  e f e l  D D�� g h��   g - 'where the compressed file should end up    h � i i N w h e r e   t h e   c o m p r e s s e d   f i l e   s h o u l d   e n d   u p f  j k j r   D S l m l n   D Q n o n 1   M Q��
�� 
psxp o l  D M p���� p c   D M q r q n   D I s t s m   E I��
�� 
ctnr t o   D E���� 0 itemprop itemProp r m   I L��
�� 
alis��  ��   m o      ���� 0 destfold destFold k  u v u r   T [ w x w n   T Y y z y 1   U Y��
�� 
pnam z o   T U���� 0 oneitem oneItem x o      ���� 0 itemname itemName v  { | { l  \ \�� } ~��   }  do it, do it now    ~ �     d o   i t ,   d o   i t   n o w |  � � � r   \ a � � � b   \ _ � � � o   \ ]���� 0 destfold destFold � o   ] ^���� 0 itemname itemName � o      ���� 0 archivename archiveName �  � � � l  b b�� � ���   � 2 ,display dialog "archivename: " & archiveName    � � � � X d i s p l a y   d i a l o g   " a r c h i v e n a m e :   "   &   a r c h i v e N a m e �  � � � l  b b��������  ��  ��   �  � � � l  b b�� � ���   � I Cdisplay dialog "destFold itemName.xcarchive " & destFold & itemName    � � � � � d i s p l a y   d i a l o g   " d e s t F o l d   i t e m N a m e . x c a r c h i v e   "   &   d e s t F o l d   &   i t e m N a m e �  � � � l  b b�� � ���   � � �set cmd to "cd " & destFold & ";xcodebuild -exportArchive -exportFormat ipa -archivePath \"" & destFold & itemName & "\" -exportPath \"" & destIpaName & "\""    � � � �: s e t   c m d   t o   " c d   "   &   d e s t F o l d   &   " ; x c o d e b u i l d   - e x p o r t A r c h i v e   - e x p o r t F o r m a t   i p a   - a r c h i v e P a t h   \ " "   &   d e s t F o l d   &   i t e m N a m e   &   " \ "   - e x p o r t P a t h   \ " "   &   d e s t I p a N a m e   &   " \ " " �  � � � l  b b�� � ���   � > 8display dialog "Command to execute" default answer (cmd)    � � � � p d i s p l a y   d i a l o g   " C o m m a n d   t o   e x e c u t e "   d e f a u l t   a n s w e r   ( c m d ) �  � � � l  b b��������  ��  ��   �  � � � O   b � � � � k   h � � �  � � � Z  h  � ����� � H   h s � � l  h r ����� � I  h r�� ���
�� .coredoexnull���     obj  � 4   h n�� �
�� 
cwin � m   l m���� ��  ��  ��   � I  v {������
�� .aevtrappnull��� ��� null��  ��  ��  ��   �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  ��� � I  � ��� ���
�� .coredoscnull��� ��� ctxt � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  c d   � o   � ����� 0 destfold destFold � m   � � � � � � � v ; x c o d e b u i l d   - e x p o r t A r c h i v e   - e x p o r t F o r m a t   i p a   - a r c h i v e P a t h   " � o   � ����� 0 destfold destFold � o   � ����� 0 itemname itemName � m   � � � � � � �  "   - e x p o r t P a t h   " � o   � ����� 0 destipaname destIpaName � m   � � � � � � �  "��  ��  ��  ��   � m   b e � ��                                                                                      @ alis    l  Macintosh HD               �eX2H+   �U�Terminal.app                                                    �2�5s�        ����  	                	Utilities     �e
�      �5&h     �U� �U�  2Macintosh HD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  do shell script �    � � � � " d o   s h e l l   s c r i p t   � �  ��� � l  � ��� � ���   � � �("cd " & destFold & ";xcodebuild -exportArchive -exportFormat ipa -archivePath " & destFold & itemName & " -exportPath " & destIpaName & "")    � � � � ( " c d   "   &   d e s t F o l d   &   " ; x c o d e b u i l d   - e x p o r t A r c h i v e   - e x p o r t F o r m a t   i p a   - a r c h i v e P a t h   "   &   d e s t F o l d   &   i t e m N a m e   &   "   - e x p o r t P a t h   "   &   d e s t I p a N a m e   &   " " )��  �� 0 oneitem oneItem F o   % &���� 0 theitems theItems��   = m     � ��                                                                                  MACS  alis    t  Macintosh HD               �eX2H+   �U;
Finder.app                                                      Ԭ��C.�        ����  	                CoreServices    �e
�      �B�     �U; �U/ �U.  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   : R      �� ���
�� .ascrerr ****      � **** � o      ���� 
0 errmsg  ��   ; k   � � � �  � � � l  � ��� � ���   � 0 *should anything go wrong let the user know    � � � � T s h o u l d   a n y t h i n g   g o   w r o n g   l e t   t h e   u s e r   k n o w �  ��� � I  � ��� ���
�� .sysodlogaskr        TEXT � o   � ����� 
0 errmsg  ��  ��   8 m    ����  B@ 6  ��� � l  � ��� � ���   �   display dialog "Completed"    � � � � 4 d i s p l a y   d i a l o g   " C o m p l e t e d "��    2 ,receive items dropped onto droplet as a list     � � � X r e c e i v e   i t e m s   d r o p p e d   o n t o   d r o p l e t   a s   a   l i s t��       �� � ���   � ��
�� .aevtodocnull  �    alis � �� ���� � ���
�� .aevtodocnull  �    alis�� 0 theitems theItems��   � 	�������������������� 0 theitems theItems�� 0 destipaname destIpaName�� 0 oneitem oneItem�� 0 itemprop itemProp�� 0 itempath itemPath�� 0 destfold destFold�� 0 itemname itemName�� 0 archivename archiveName�� 
0 errmsg   � !  �� $�� *������������ ���~�}�|�{�z�y�x�w ��v�u�t�s � � � ��r�q�p
�� 
dtxt
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt��  B@
� 
kocl
�~ 
cobj
�} .corecnte****       ****
�| 
pALL
�{ 
psxp
�z 
strq
�y 
ctnr
�x 
alis
�w 
pnam
�v 
cwin
�u .coredoexnull���     obj 
�t .aevtrappnull��� ��� null
�s .miscactvnull��� ��� null
�r .coredoscnull��� ��� ctxt�q 
0 errmsg  �p  �� ������kv�k� O�[�,\ZkvE�O�n �� � ��[��l kh ��,E�O�a ,a ,E�O�a ,a &a ,E�O�a ,E�O��%E�Oa  ;*a k/j  
*j Y hO*j Oa �%a %�%�%a %�%a %j UOP[OY��UW X   �j oOPascr  ��ޭ