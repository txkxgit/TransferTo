FasdUAS 1.101.10   ��   ��    k             l     ��  ��    G A#################################################################     � 	 	 � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   
  
 l     ��  ��      TransferTo     �      T r a n s f e r T o      l     ��������  ��  ��        l     ��  ��    B < Transfer selected Finder items to a user-selectable target.     �   x   T r a n s f e r   s e l e c t e d   F i n d e r   i t e m s   t o   a   u s e r - s e l e c t a b l e   t a r g e t .      l     ��  ��    d ^ - Droplet mode: When items are dragged to the Droplet , the user is asked for a target folder     �   �   -   D r o p l e t   m o d e :   W h e n   i t e m s   a r e   d r a g g e d   t o   t h e   D r o p l e t   ,   t h e   u s e r   i s   a s k e d   f o r   a   t a r g e t   f o l d e r      l     ��������  ��  ��        l     ��   ��    5 / - TransferTo uses rsync to perform the actions      � ! ! ^   -   T r a n s f e r T o   u s e s   r s y n c   t o   p e r f o r m   t h e   a c t i o n s   " # " l     ��������  ��  ��   #  $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   (   Timo Kahle    ) � * *    T i m o   K a h l e '  + , + l     �� - .��   -   2015-04-25    . � / /    2 0 1 5 - 0 4 - 2 5 ,  0 1 0 l     ��������  ��  ��   1  2 3 2 l     �� 4 5��   4   Changes    5 � 6 6    C h a n g e s 3  7 8 7 l     �� 9 :��   9   1.0 : Initial version    : � ; ; ,   1 . 0   :   I n i t i a l   v e r s i o n 8  < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @ 
  1.1    A � B B    1 . 1 ?  C D C l     �� E F��   E ` Z + Merged Applet Operating Mode functionality (when the app is started by double-clicking)    F � G G �   +   M e r g e d   A p p l e t   O p e r a t i n g   M o d e   f u n c t i o n a l i t y   ( w h e n   t h e   a p p   i s   s t a r t e d   b y   d o u b l e - c l i c k i n g ) D  H I H l     �� J K��   J ? 9 + Changed default Transfer Mode selection to UI_OPT_COPY    K � L L r   +   C h a n g e d   d e f a u l t   T r a n s f e r   M o d e   s e l e c t i o n   t o   U I _ O P T _ C O P Y I  M N M l     �� O P��   O    o Changed to ScriptBundle    P � Q Q 4   o   C h a n g e d   t o   S c r i p t B u n d l e N  R S R l     ��������  ��  ��   S  T U T l     �� V W��   V 
  1.2    W � X X    1 . 2 U  Y Z Y l     �� [ \��   [ ] W + Added timeout for shell script execution to prevent timeouts on large file transfers    \ � ] ] �   +   A d d e d   t i m e o u t   f o r   s h e l l   s c r i p t   e x e c u t i o n   t o   p r e v e n t   t i m e o u t s   o n   l a r g e   f i l e   t r a n s f e r s Z  ^ _ ^ l     ��������  ��  ��   _  ` a ` l     �� b c��   b   2.0 (2015-01-17)    c � d d "   2 . 0   ( 2 0 1 5 - 0 1 - 1 7 ) a  e f e l     �� g h��   g   o Complete refactoring    h � i i .   o   C o m p l e t e   r e f a c t o r i n g f  j k j l     �� l m��   l ( " - Reduced to single transfer mode    m � n n D   -   R e d u c e d   t o   s i n g l e   t r a n s f e r   m o d e k  o p o l     �� q r��   q + % - Removed Applet mode for simplicity    r � s s J   -   R e m o v e d   A p p l e t   m o d e   f o r   s i m p l i c i t y p  t u t l     �� v w��   v , & + Added Min OS X Version check (10.7)    w � x x L   +   A d d e d   M i n   O S   X   V e r s i o n   c h e c k   ( 1 0 . 7 ) u  y z y l     �� { |��   { 8 2 + Added support for Notification Center (>= 10.9)    | � } } d   +   A d d e d   s u p p o r t   f o r   N o t i f i c a t i o n   C e n t e r   ( > =   1 0 . 9 ) z  ~  ~ l     �� � ���   � @ : + Added support for native Progress Indication (>= 10.10)    � � � � t   +   A d d e d   s u p p o r t   f o r   n a t i v e   P r o g r e s s   I n d i c a t i o n   ( > =   1 0 . 1 0 )   � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   2.0.1 (2015-03-29)    � � � � &   2 . 0 . 1   ( 2 0 1 5 - 0 3 - 2 9 ) �  � � � l     �� � ���   � [ U - Removed "display progress" as it doesn't reliably work and only disturbs the user;    � � � � �   -   R e m o v e d   " d i s p l a y   p r o g r e s s "   a s   i t   d o e s n ' t   r e l i a b l y   w o r k   a n d   o n l y   d i s t u r b s   t h e   u s e r ; �  � � � l     �� � ���   � L F we'll instead rely on messages when starting and stopping the process    � � � � �   w e ' l l   i n s t e a d   r e l y   o n   m e s s a g e s   w h e n   s t a r t i n g   a n d   s t o p p i n g   t h e   p r o c e s s �  � � � l     �� � ���   � 4 . + Added notification when starting a Transfer    � � � � \   +   A d d e d   n o t i f i c a t i o n   w h e n   s t a r t i n g   a   T r a n s f e r �  � � � l     �� � ���   �       � � � �    �  � � � l     �� � ���   �   2.0.2 (2015-04-25)    � � � � &   2 . 0 . 2   ( 2 0 1 5 - 0 4 - 2 5 ) �  � � � l     �� � ���   �   o Unified constant names    � � � � 2   o   U n i f i e d   c o n s t a n t   n a m e s �  � � � l     �� � ���   � 5 / o Extended IsValidMinOS() for more flexibility    � � � � ^   o   E x t e n d e d   I s V a l i d M i n O S ( )   f o r   m o r e   f l e x i b i l i t y �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   3.0 (2016-07-12)    � � � � "   3 . 0   ( 2 0 1 6 - 0 7 - 1 2 ) �  � � � l     �� � ���   � ( " o Added property for button texts    � � � � D   o   A d d e d   p r o p e r t y   f o r   b u t t o n   t e x t s �  � � � l     �� � ���   � ? 9 o Added "cancel button" functionality to display dialogs    � � � � r   o   A d d e d   " c a n c e l   b u t t o n "   f u n c t i o n a l i t y   t o   d i s p l a y   d i a l o g s �  � � � l     �� � ���   � * $ o Updated Min OS X version to 10.10    � � � � H   o   U p d a t e d   M i n   O S   X   v e r s i o n   t o   1 0 . 1 0 �  � � � l     �� � ���   � #  - Removed obsolete functions    � � � � :   -   R e m o v e d   o b s o l e t e   f u n c t i o n s �  � � � l     �� � ���   � h b - Removed obsolete check for Notification Center support & changed dialogs to Notification Center    � � � � �   -   R e m o v e d   o b s o l e t e   c h e c k   f o r   N o t i f i c a t i o n   C e n t e r   s u p p o r t   &   c h a n g e d   d i a l o g s   t o   N o t i f i c a t i o n   C e n t e r �  � � � l     �� � ���   � !  + Prepared logging support    � � � � 6   +   P r e p a r e d   l o g g i n g   s u p p o r t �  � � � l     �� � ���   � 4 . + Added refactored OS X minimum version check    � � � � \   +   A d d e d   r e f a c t o r e d   O S   X   m i n i m u m   v e r s i o n   c h e c k �  � � � l     �� � ���   � s m + Added dialog to enter custom rsync parameters with basic validation (at least one parameter must be given)    � � � � �   +   A d d e d   d i a l o g   t o   e n t e r   c u s t o m   r s y n c   p a r a m e t e r s   w i t h   b a s i c   v a l i d a t i o n   ( a t   l e a s t   o n e   p a r a m e t e r   m u s t   b e   g i v e n ) �  � � � l     �� � ���   �   + Updated icon    � � � �    +   U p d a t e d   i c o n �  � � � l     �� � ���   � 4 . + Added icon states for warning, info & error    � � � � \   +   A d d e d   i c o n   s t a t e s   f o r   w a r n i n g ,   i n f o   &   e r r o r �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   # 3.0.1 (2016-07-16)    � � � � *   #   3 . 0 . 1   ( 2 0 1 6 - 0 7 - 1 6 ) �  � � � l     �� � ���   �   + Added basic logging    � � � � ,   +   A d d e d   b a s i c   l o g g i n g �  � � � l     �� � ���   � 6 0 + Add plist to store/restore LastUsedTargetPath    � � � � `   +   A d d   p l i s t   t o   s t o r e / r e s t o r e   L a s t U s e d T a r g e t P a t h �  � � � l     �� � ���   �   + Add rsync logging    � � � � (   +   A d d   r s y n c   l o g g i n g �  � � � l     �� � ���   � %  + Added rsync default excludes    � �   >   +   A d d e d   r s y n c   d e f a u l t   e x c l u d e s �  l     ����   2 , + Add basic support for native progress bar    � X   +   A d d   b a s i c   s u p p o r t   f o r   n a t i v e   p r o g r e s s   b a r  l     ��	��     o Improved logging   	 �

 &   o   I m p r o v e d   l o g g i n g  l     ��������  ��  ��    l     ����     3.0.2 (2016-07-24)    � &   3 . 0 . 2   ( 2 0 1 6 - 0 7 - 2 4 )  l     ����   p j o Fixed a bug which led to an unrecoverable error if the path specified inside the plist wasn't available    � �   o   F i x e d   a   b u g   w h i c h   l e d   t o   a n   u n r e c o v e r a b l e   e r r o r   i f   t h e   p a t h   s p e c i f i e d   i n s i d e   t h e   p l i s t   w a s n ' t   a v a i l a b l e  l     ��������  ��  ��    l     ����     3.0.3 (2016-08-08)    � &   3 . 0 . 3   ( 2 0 1 6 - 0 8 - 0 8 )  l     �� !��    v p o Bugfix: Added "quoted form" for aSource when logging, otherwise paths with whitespaces lead to logging errors   ! �"" �   o   B u g f i x :   A d d e d   " q u o t e d   f o r m "   f o r   a S o u r c e   w h e n   l o g g i n g ,   o t h e r w i s e   p a t h s   w i t h   w h i t e s p a c e s   l e a d   t o   l o g g i n g   e r r o r s #$# l     ��������  ��  ��  $ %&% l     ��'(��  '   3.0.4 (2017-03-30)   ( �)) &   3 . 0 . 4   ( 2 0 1 7 - 0 3 - 3 0 )& *+* l     ��,-��  , / ) + Removed dialog to display used options   - �.. R   +   R e m o v e d   d i a l o g   t o   d i s p l a y   u s e d   o p t i o n s+ /0/ l     ��������  ��  ��  0 121 l     ��34��  3   ToDo   4 �55 
   T o D o2 676 l     ��89��  8 t n + PRIO 1: Handle errors to set "theTargetPathRoot" if the directory defined inside the plist doesn't exist!!!   9 �:: �   +   P R I O   1 :   H a n d l e   e r r o r s   t o   s e t   " t h e T a r g e t P a t h R o o t "   i f   t h e   d i r e c t o r y   d e f i n e d   i n s i d e   t h e   p l i s t   d o e s n ' t   e x i s t ! ! !7 ;<; l     ��=>��  = ? 9 + Add rsync options/profiles for the user to select from   > �?? r   +   A d d   r s y n c   o p t i o n s / p r o f i l e s   f o r   t h e   u s e r   t o   s e l e c t   f r o m< @A@ l     ��BC��  B J D + Handle issues when source gets unavailable during active Transfer   C �DD �   +   H a n d l e   i s s u e s   w h e n   s o u r c e   g e t s   u n a v a i l a b l e   d u r i n g   a c t i v e   T r a n s f e rA EFE l     ��������  ��  ��  F GHG l     ��IJ��  I G A#################################################################   J �KK � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #H LML l     ��������  ��  ��  M NON l     ��������  ��  ��  O PQP l     ��������  ��  ��  Q RSR l     ��TU��  T 6 0 ===============================================   U �VV `   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =S WXW l     ��YZ��  Y   User Config   Z �[[    U s e r   C o n f i gX \]\ l     ��^_��  ^ 6 0 ===============================================   _ �`` `   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =] aba j     ��c�� 0 	cmd_rsync 	CMD_RSYNCc m     dd �ee  r s y n c  b fgf j    ��h�� *0 cmd_profile_default CMD_PROFILE_DEFAULTh m    ii �jj 
 - r a u Eg klk l     ��������  ��  ��  l mnm l     ��������  ��  ��  n opo l     �qr�  q 6 0 ===============================================   r �ss `   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =p tut l     �~vw�~  v = 7 System Config, don't change anything beyond this point   w �xx n   S y s t e m   C o n f i g ,   d o n ' t   c h a n g e   a n y t h i n g   b e y o n d   t h i s   p o i n tu yzy l     �}{|�}  { 6 0 ===============================================   | �}} `   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =z ~~ l     �|�{�z�|  �{  �z   ��� l     �y���y  �   Variables and Constants   � ��� 0   V a r i a b l e s   a n d   C o n s t a n t s� ��� j    �x��x 0 app_name APP_NAME� m    �� ���  T r a n s f e r T o� ��� j   	 �w��w 0 app_version APP_VERSION� m   	 
�� ���    3 . 0 . 4� ��� l     ���� j    �v��v 0 timeout_sec TIMEOUT_SEC� m    �u�u�   60 minutes   � ���    6 0   m i n u t e s� ��� j    �t��t 0 app_details APP_DETAILS� b    ��� b    ��� b    ��� o    �s�s 0 app_name APP_NAME� m    �� ���    (� o    �r�r 0 app_version APP_VERSION� m    �� ���  )� ��� j    �q��q "0 osx_version_min OSX_VERSION_MIN� m    �� ��� 
 1 0 . 1 0� ��� l     �p�o�n�p  �o  �n  � ��� l     �m���m  �   Errors   � ���    E r r o r s� ��� j    �l��l B0 dlg_info_osversion_check_failed dlg_Info_OSVersion_Check_Failed� m    �� ��� � Y o u r   O S   X   V e r s i o n   n o t   s u p p o r t e d .   T h i s   a p p   r e q u i r e s   a t   l e a s t   O S   X   1 0 . 1 0   ( Y o s e m i t e ) .� ��� j    "�k��k *0 err_transfer_failed ERR_TRANSFER_FAILED� m    !�� ��� | E R R O R :   C o u l d   n o t   t r a n s f e r   t h e   s e l e c t e d   i t e m .   P l e a s e   t r y   a g a i n .� ��� j   # '�j��j (0 ui_result_noerrors UI_RESULT_NOERRORS� m   # &�� ��� >$�   F i n i s h e d   j o b s   w i t h o u t   e r r o r s .� ��� j   ( ,�i��i $0 ui_result_errors UI_RESULT_ERRORS� m   ( +�� ��� @$�   T r a n s f e r   f i n i s h e d   w i t h   e r r o r s .� ��� j   - 1�h��h &0 dlg_select_target DLG_SELECT_TARGET� m   - 0�� ��� @ P l e a s e   s e l e c t   t h e   T a r g e t   f o l d e r .� ��� j   2 6�g��g (0 ui_txt_droplet_use UI_TXT_DROPLET_USE� m   2 5�� ��� � T h i s   i s   a   d r o p l e t .   D r o p   f i l e s   o r   f o l d e r s   f r o m   F i n d e r   o n t o   t h e   a p p s   i c o n   f o r   t r a n s f e r .� ��� j   7 ;�f��f "0 ui_txt_transfer UI_TXT_TRANSFER� m   7 :�� ��� L$�   T r a n s f e r r i n g   y o u r   i t e m s .   S t a n d   b y . . .� ��� j   < p�e��e *0 ui_enter_parameters UI_ENTER_PARAMETERS� b   < o��� b   < k��� b   < g��� b   < c��� b   < _��� b   < ]��� b   < Y��� b   < U��� b   < Q��� b   < O��� b   < K��� b   < G��� b   < C��� m   < ?�� ��� z A t   l e a s t   o n e   r s y n c   p a r a m e t e r   m u s t   b e   g i v e n   f o r   r s y n c   t o   w o r k .� o   ? B�d
�d 
ret � m   C F�� ��� L P a r a m e t e r s   m u s t   s t a r t   w i t h   a   d a s h   ( - ) .� o   G J�c
�c 
ret � o   K N�b
�b 
ret � o   O P�a�a 0 app_name APP_NAME� m   Q T�� ��� B   w i l l   u s e   a   s a f e   d e f a u l t   i n s t e a d  � 1   U X�`
�` 
tab � m   Y \�� ���  (� o   ] ^�_�_ *0 cmd_profile_default CMD_PROFILE_DEFAULT� m   _ b�� ���  ) .� o   c f�^
�^ 
ret � o   g j�]
�] 
ret � m   k n�� ��� t S e l e c t   ' O K '   t o   c o n f i r m   o r   ' C a n c e l '   t o   c a n c e l   t h e   t r a n s f e r .� ��� j   q u�\��\ 60 ui_enter_parameters_title UI_ENTER_PARAMETERS_TITLE� m   q t�� ���   r s y n c   P a r a m e t e r s�    j   v |�[�[ <0 ui_parameters_using_defaults UI_PARAMETERS_USING_DEFAULTS m   v y � � T h e   d e f a u l t   r s y n c   p a r a m e t e r s   u s e d   f o r   t r a n s f e r r i n g   t h e   s e l e c t e d   i t e m s   a r e :    j   } ��Z�Z D0  ui_txt_error_creating_log_folder  UI_TXT_ERROR_CREATING_LOG_FOLDER m   } � �		 2 E r r o r   c r e a t i n g   l o g   f o l d e r 

 j   � ��Y�Y T0 (ui_txt_error_creating_log_folder_details (UI_TXT_ERROR_CREATING_LOG_FOLDER_DETAILS m   � � � Z A n   e r r o r   o c c u r e d   c r e a t i n g   t h e   l o g   f o l d e r   a t :    j   � ��X�X 40 ui_txt_parameter_summary UI_TXT_PARAMETER_SUMMARY m   � � � & T r a n s f e r   P a r a m e t e r s  j   � ��W�W ,0 error_message_prefix ERROR_MESSAGE_PREFIX m   � � �  E r r o r :    j   � ��V�V  0 error_job_exec ERROR_JOB_EXEC m   � � � 8 E r r o r   d u r i n g   j o b   e x e c u t i o n :    j   � ��U �U 20 log_message_job_summary LOG_MESSAGE_JOB_SUMMARY  m   � �!! �""  J o b   s u m m a r y :   #$# j   � ��T%�T 0 log_end_line LOG_END_LINE% m   � �&& �'' ( = = = = = = = = = = = = = = = = = = = =$ ()( l     �S�R�Q�S  �R  �Q  ) *+* l     �P,-�P  ,   Button texts   - �..    B u t t o n   t e x t s+ /0/ j   � ��O1�O 0 
btn_cancel 
BTN_CANCEL1 m   � �22 �33  C a n c e l0 454 j   � ��N6�N 0 btn_ok BTN_OK6 m   � �77 �88  O K5 9:9 j   � ��M;�M 0 btn_quit BTN_QUIT; m   � �<< �==  Q u i t: >?> j   � ��L@�L 0 	btn_start 	BTN_START@ m   � �AA �BB 
 S t a r t? CDC l     �K�J�I�K  �J  �I  D EFE l     �HGH�H  G   Environment   H �II    E n v i r o n m e n tF JKJ j   � ��GL�G 0 app_icon APP_ICONL m   � �MM �NN  d r o p l e t . i c n sK OPO j   � ��FQ�F 0 
icon_error 
ICON_ERRORQ m   � �RR �SS ( T r a n f e r T o - e r r o r . i c n sP TUT j   � ��EV�E 0 	icon_info 	ICON_INFOV m   � �WW �XX & T r a n f e r T o - i n f o . i c n sU YZY j   � ��D[�D 0 	icon_warn 	ICON_WARN[ m   � �\\ �]] , T r a n f e r T o - w a r n i n g . i c n sZ ^_^ j   � ��C`�C 0 log_file LOG_FILE` o   � ��B�B 0 app_name APP_NAME_ aba l     �A�@�?�A  �@  �?  b cdc l     �>ef�>  e   Plist   f �gg    P l i s td hih j   � ��=j�= 0 settings_file SETTINGS_FILEj m   � �kk �ll 0 n e t . t h k . T r a n s f e r T o . p l i s ti mnm j   � ��<o�< 20 lastused_targetpath_key LASTUSED_TARGETPATH_KEYo m   � �pp �qq $ L a s t U s e d T a r g e t P a t hn rsr j   � ��;t�; 60 lastused_rsync_parameters LASTUSED_RSYNC_PARAMETERSt m   � �uu �vv . L a s t U s e d R s y n c P a r a m e t e r ss wxw j   �:y�:  0 cmd_plist_read CMD_PLIST_READy b   z{z b   |}| b   ~~ m   �� ���  d e f a u l t s   r e a d   o  �9�9 0 settings_file SETTINGS_FILE} m  
�� ���   { o  �8�8 20 lastused_targetpath_key LASTUSED_TARGETPATH_KEYx ��� j  )�7��7 "0 cmd_plist_write CMD_PLIST_WRITE� b  &��� b  "��� b  ��� b  ��� m  �� ���  d e f a u l t s   w r i t e  � o  �6�6 0 settings_file SETTINGS_FILE� m  �� ���   � o  !�5�5 20 lastused_targetpath_key LASTUSED_TARGETPATH_KEY� m  "%�� ���    - s t r i n g  � ��� j  *<�4��4 .0 cmd_rsync_params_read CMD_RSYNC_PARAMS_READ� b  *9��� b  *5��� b  *1��� m  *-�� ���  d e f a u l t s   r e a d  � o  -0�3�3 0 settings_file SETTINGS_FILE� m  14�� ���   � o  58�2�2 60 lastused_rsync_parameters LASTUSED_RSYNC_PARAMETERS� ��� j  =S�1��1 00 cmd_rsync_params_write CMD_RSYNC_PARAMS_WRITE� b  =P��� b  =L��� b  =H��� b  =D��� m  =@�� ���  d e f a u l t s   w r i t e  � o  @C�0�0 0 settings_file SETTINGS_FILE� m  DG�� ���   � o  HK�/�/ 60 lastused_rsync_parameters LASTUSED_RSYNC_PARAMETERS� m  LO�� ���    - s t r i n g  � ��� l     �.�-�,�.  �-  �,  � ��� l     �+���+  �   rsync   � ���    r s y n c� ��� j  TZ�*��* "0 rsync_param_log RSYNC_PARAM_LOG� m  TW�� ���    - - l o g - f i l e =� ��� j  [a�)��) *0 rsync_param_exclude RSYNC_PARAM_EXCLUDE� m  [^�� ��� r   - - e x c l u d e   ' . D S _ S t o r e '   - - e x c l u d e   ' . _ * '   - - e x c l u d e   ' . T r a s h '� ��� l     ���� j  bh�(��( "0 rsync_param_dry RSYNC_PARAM_DRY� m  be�� ���    - - d r y - r u n  �   Emulate actions only   � ��� *   E m u l a t e   a c t i o n s   o n l y� ��� j  io�'��' ,0 rsync_param_shrt_dry RSYNC_PARAM_SHRT_DRY� m  il�� ���    - n  � ��� l     ���� j  pv�&��& *0 rsync_param_recurse RSYNC_PARAM_RECURSE� m  ps�� ���    - - r e c u r s i v e  �   Recurse into directories   � ��� 2   R e c u r s e   i n t o   d i r e c t o r i e s� ��� l     ���� j  w}�%��% 40 rsync_param_shrt_recurse RSYNC_PARAM_SHRT_RECURSE� m  wz�� ���    - r  �   Recurse into directories   � ��� 2   R e c u r s e   i n t o   d i r e c t o r i e s� ��� l     ���� j  ~��$��$ *0 rsync_param_archive RSYNC_PARAM_ARCHIVE� m  ~��� ���    - - a r c h i v e  �   equals "-rlptgoD"   � ��� $   e q u a l s   " - r l p t g o D "� ��� l     ���� j  ���#��# 40 rsync_param_shrt_archive RSYNC_PARAM_SHRT_ARCHIVE� m  ���� ���    - a  �   equals "-rlptgoD"   � ��� $   e q u a l s   " - r l p t g o D "� ��� l     ���� j  ���"��" (0 rsync_param_update RSYNC_PARAM_UPDATE� m  ���� ���    - - u p d a t e  � - ' Don't update files newer in the target   � ��� N   D o n ' t   u p d a t e   f i l e s   n e w e r   i n   t h e   t a r g e t� � � l      j  ���!�! 20 rsync_param_shrt_update RSYNC_PARAM_SHRT_UPDATE m  �� �    - u   - ' Don't update files newer in the target    � N   D o n ' t   u p d a t e   f i l e s   n e w e r   i n   t h e   t a r g e t  	 l     

 j  ��� �  ,0 rsync_param_symlinks RSYNC_PARAM_SYMLINKS m  �� �    - - l i n k s   5 / Copy symlinks as symlinks (i.e. no resolution)    � ^   C o p y   s y m l i n k s   a s   s y m l i n k s   ( i . e .   n o   r e s o l u t i o n )	  l      j  ���� 60 rsync_param_shrt_symlinks RSYNC_PARAM_SHRT_SYMLINKS m  �� �    - l 5 / Copy symlinks as symlinks (i.e. no resolution)    � ^   C o p y   s y m l i n k s   a s   s y m l i n k s   ( i . e .   n o   r e s o l u t i o n )  l      j  ���� &0 rsync_param_xattr RSYNC_PARAM_XATTR m  ��   �!! .   - - e x t e n d e d - a t t r i b u t e s   = 7 Copy extended attributes, resource forks (equal to -E)    �"" n   C o p y   e x t e n d e d   a t t r i b u t e s ,   r e s o u r c e   f o r k s   ( e q u a l   t o   - E ) #$# l     %&'% j  ���(� 00 rsync_param_shrt_xattr RSYNC_PARAM_SHRT_XATTR( m  ��)) �**    - E  & = 7 Copy extended attributes, resource forks (equal to -E)   ' �++ n   C o p y   e x t e n d e d   a t t r i b u t e s ,   r e s o u r c e   f o r k s   ( e q u a l   t o   - E )$ ,-, j  ���.� ,0 arr_rsync_parameters ARR_RSYNC_PARAMETERS. J  ��// 010 o  ���� "0 rsync_param_dry RSYNC_PARAM_DRY1 232 o  ���� ,0 rsync_param_shrt_dry RSYNC_PARAM_SHRT_DRY3 454 o  ���� *0 rsync_param_recurse RSYNC_PARAM_RECURSE5 676 o  ���� 40 rsync_param_shrt_recurse RSYNC_PARAM_SHRT_RECURSE7 898 o  ���� *0 rsync_param_archive RSYNC_PARAM_ARCHIVE9 :;: o  ���� 40 rsync_param_shrt_archive RSYNC_PARAM_SHRT_ARCHIVE; <=< o  ���� (0 rsync_param_update RSYNC_PARAM_UPDATE= >?> o  ���� 20 rsync_param_shrt_update RSYNC_PARAM_SHRT_UPDATE? @A@ o  ���� ,0 rsync_param_symlinks RSYNC_PARAM_SYMLINKSA BCB o  ���� 60 rsync_param_shrt_symlinks RSYNC_PARAM_SHRT_SYMLINKSC DED o  ���� &0 rsync_param_xattr RSYNC_PARAM_XATTRE F�F o  ���� 00 rsync_param_shrt_xattr RSYNC_PARAM_SHRT_XATTR�  - GHG l     ����  �  �  H IJI l     �KL�  K G A#################################################################   L �MM � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #J NON l     �
�	��
  �	  �  O PQP l     �RS�  R v p ===============================================================================================================   S �TT �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =Q UVU l     �WX�  W / ) Simple Mode when double-clicking the app   X �YY R   S i m p l e   M o d e   w h e n   d o u b l e - c l i c k i n g   t h e   a p pV Z[Z l     �\]�  \ v p ===============================================================================================================   ] �^^ �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =[ _`_ i  ��aba I     ���
� .aevtoappnull  �   � ****�  �  b k    �cc ded l     �fg�  f &   Define the app icon for dialogs   g �hh @   D e f i n e   t h e   a p p   i c o n   f o r   d i a l o g se iji r     klk l    	m� ��m I    	��n��
�� .sysorpthalis        TEXTn o     ���� 0 app_icon APP_ICON��  �   ��  l o      ���� 0 dlgicon dlgIconj opo r    qrq l   s����s I   ��t��
�� .sysorpthalis        TEXTt o    ���� 0 	icon_warn 	ICON_WARN��  ��  ��  r o      ���� 0 dlgicon_warn dlgIcon_Warnp uvu r    #wxw l   !y����y I   !��z��
�� .sysorpthalis        TEXTz o    ���� 0 	icon_info 	ICON_INFO��  ��  ��  x o      ���� 0 dlgicon_info dlgIcon_Infov {|{ l  $ $��������  ��  ��  | }~} l  $ $�����   $  Initialize the log file paths   � ��� <   I n i t i a l i z e   t h e   l o g   f i l e   p a t h s~ ��� r   $ /��� l  $ -������ n   $ -��� 1   + -��
�� 
psxp� l  $ +������ I  $ +����
�� .earsffdralis        afdr� m   $ %��
�� afdrdlib� �����
�� 
from� m   & '��
�� fldmfldu��  ��  ��  ��  ��  � o      ����  0 thelogpathbase theLogPathBase� ��� r   0 M��� b   0 K��� b   0 I��� b   0 C��� b   0 A��� b   0 ;��� b   0 9��� b   0 3��� o   0 1����  0 thelogpathbase theLogPathBase� m   1 2�� ��� 
 L o g s /� o   3 8���� 0 app_name APP_NAME� m   9 :�� ���  /� o   ; @���� 0 log_file LOG_FILE� m   A B�� ���  -� I   C H�������� .0 getformattedtimestamp GetFormattedTimestamp��  ��  � m   I J�� ���  . l o g� o      ���� 0 logfile logFile� ��� l  N N��������  ��  ��  � ��� l  N N������  � 0 * Create the Log folder if it doesn't exist   � ��� T   C r e a t e   t h e   L o g   f o l d e r   i f   i t   d o e s n ' t   e x i s t� ��� r   N j��� I   N f������� 0 execcommand ExecCommand� ���� b   O b��� b   O ^��� b   O X��� b   O T��� m   O R�� ���  m k d i r   - p  � o   R S����  0 thelogpathbase theLogPathBase� m   T W�� ��� 
 L o g s /� o   X ]���� 0 app_name APP_NAME� m   ^ a�� ���  /��  ��  � o      ���� "0 createlogfolder createLogFolder� ��� l  k k��������  ��  ��  � ��� Z   k �������� E   k t��� o   k n���� "0 createlogfolder createLogFolder� o   n s���� ,0 error_message_prefix ERROR_MESSAGE_PREFIX� k   w ��� ��� I  w �����
�� .sysodlogaskr        TEXT� b   w ���� o   w |���� T0 (ui_txt_error_creating_log_folder_details (UI_TXT_ERROR_CREATING_LOG_FOLDER_DETAILS� o   | ��
�� 
ret � ����
�� 
appr� o   � ����� D0  ui_txt_error_creating_log_folder  UI_TXT_ERROR_CREATING_LOG_FOLDER� ����
�� 
btns� J   � ��� ���� o   � ����� 0 btn_ok BTN_OK��  � ����
�� 
dflt� J   � ��� ���� o   � ����� 0 btn_ok BTN_OK��  � ����
�� 
cbtn� J   � ��� ���� o   � ����� 0 btn_ok BTN_OK��  � �����
�� 
disp� o   � ����� 0 dlgicon_warn dlgIcon_Warn��  � ���� I   � �������� 0 logtoconsole LogToConsole� ��� b   � ���� b   � ���� b   � ���� o   � ����� D0  ui_txt_error_creating_log_folder  UI_TXT_ERROR_CREATING_LOG_FOLDER� m   � ��� ���    '� o   � ����� 0 log_path LOG_PATH� m   � ��� ���  '  � ��� I   � ��������� .0 getformattedtimestamp GetFormattedTimestamp��  ��  � ���� o   � ����� 0 logfile logFile��  ��  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� l  � �������  �   Initialize the log   � ��� &   I n i t i a l i z e   t h e   l o g� ��� I   � �������� 0 logtoconsole LogToConsole� ��� b   � ���� b   � �� � b   � � b   � � b   � � b   � � m   � �		 �

  A p p l e t   m o d e :   o   � ����� 0 app_name APP_NAME m   � � �    o   � ����� 0 app_version APP_VERSION m   � � � &   s t a r t e d   a s   a p p l e t .  o   � ���
�� 
ret � o   � ���
�� 
ret �  I   � ��������� .0 getformattedtimestamp GetFormattedTimestamp��  ��   �� o   � ����� 0 logfile logFile��  ��  �  l  � ���������  ��  ��    l  � �����   + % Check OS X Version for compatibility    � J   C h e c k   O S   X   V e r s i o n   f o r   c o m p a t i b i l i t y  Z   �`���� =  �	 I   ������� *0 osxversionsupported OSXVersionSupported  ��  o   ����� "0 osx_version_min OSX_VERSION_MIN��  ��   m  ��
�� boovfals k  \!! "#" I  $��$���� 0 logtoconsole LogToConsole$ %&% b  '(' b  )*) m  ++ �,, F A p p l e t   m o d e :   M i n i m u m   O S   X   v e r s i o n   (* o  ���� "0 osx_version_min OSX_VERSION_MIN( m  -- �.. & )   n o t   m e t .   E x i t i n g .& /0/ I  �������� .0 getformattedtimestamp GetFormattedTimestamp��  ��  0 1��1 o   ���� 0 logfile logFile��  ��  # 2��2 I %\��34
�� .sysodlogaskr        TEXT3 b  %.565 o  %*���� B0 dlg_info_osversion_check_failed dlg_Info_OSVersion_Check_Failed6 o  *-��
�� 
ret 4 ��78
�� 
appr7 o  14���� 0 dlgtitle dlgTitle8 ��9:
�� 
btns9 J  7>;; <��< o  7<���� 0 btn_ok BTN_OK��  : ��=>
�� 
dflt= J  AH?? @��@ o  AF�� 0 btn_ok BTN_OK��  > �~AB
�~ 
cbtnA J  KRCC D�}D o  KP�|�| 0 btn_ok BTN_OK�}  B �{E�z
�{ 
dispE o  UV�y�y 0 dlgicon_warn dlgIcon_Warn�z  ��  ��  ��   FGF l aa�x�w�v�x  �w  �v  G HIH l aa�uJK�u  J 2 , Display notification that this is a Droplet   K �LL X   D i s p l a y   n o t i f i c a t i o n   t h a t   t h i s   i s   a   D r o p l e tI MNM I  ao�tO�s�t 0 logtoconsole LogToConsoleO PQP m  beRR �SS 8 A p p l e t   m o d e :   D i s p l a y i n g   H e l pQ TUT I  ej�r�q�p�r .0 getformattedtimestamp GetFormattedTimestamp�q  �p  U V�oV o  jk�n�n 0 logfile logFile�o  �s  N WXW I  p��mY�l�m 0 logtoconsole LogToConsoleY Z[Z b  qz\]\ o  qv�k�k 0 log_end_line LOG_END_LINE] o  vy�j
�j 
ret [ ^_^ m  z}`` �aa  _ b�ib o  }~�h�h 0 logfile logFile�i  �l  X cdc I ���gef
�g .sysodlogaskr        TEXTe o  ���f�f (0 ui_txt_droplet_use UI_TXT_DROPLET_USEf �egh
�e 
apprg o  ���d�d 0 app_details APP_DETAILSh �cij
�c 
btnsi J  ��kk l�bl o  ���a�a 0 btn_ok BTN_OK�b  j �`mn
�` 
dfltm J  ��oo p�_p o  ���^�^ 0 btn_ok BTN_OK�_  n �]qr
�] 
cbtnq J  ��ss t�\t o  ���[�[ 0 btn_ok BTN_OK�\  r �Zu�Y
�Z 
dispu o  ���X�X 0 dlgicon_info dlgIcon_Info�Y  d v�Wv l ���V�U�T�V  �U  �T  �W  ` wxw l     �S�R�Q�S  �R  �Q  x yzy l     �P�O�N�P  �O  �N  z {|{ l     �M}~�M  } v p ===============================================================================================================   ~ � �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =| ��� l     �L���L  �  ## Droplet use   � ���  # #   D r o p l e t   u s e� ��� l     �K���K  � v p ===============================================================================================================   � ��� �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =� ��� l     �J���J  �   Handle dropped objects   � ��� .   H a n d l e   d r o p p e d   o b j e c t s� ��� i  ����� I     �I��H
�I .aevtodocnull  �    alis� l     ��G�F� o      �E�E 0 droppeditems droppedItems�G  �F  �H  � k    ��� ��� l     �D���D  � &   Define the app icon for dialogs   � ��� @   D e f i n e   t h e   a p p   i c o n   f o r   d i a l o g s� ��� r     ��� l    	��C�B� I    	�A��@
�A .sysorpthalis        TEXT� o     �?�? 0 app_icon APP_ICON�@  �C  �B  � o      �>�> 0 dlgicon dlgIcon� ��� r    ��� l   ��=�<� I   �;��:
�; .sysorpthalis        TEXT� o    �9�9 0 	icon_warn 	ICON_WARN�:  �=  �<  � o      �8�8 0 dlgicon_warn dlgIcon_Warn� ��� r    #��� l   !��7�6� I   !�5��4
�5 .sysorpthalis        TEXT� o    �3�3 0 	icon_info 	ICON_INFO�4  �7  �6  � o      �2�2 0 dlgicon_info dlgIcon_Info� ��� r   $ /��� l  $ -��1�0� I  $ -�/��.
�/ .sysorpthalis        TEXT� o   $ )�-�- 0 
icon_error 
ICON_ERROR�.  �1  �0  � o      �,�, 0 dlgicon_error dlgIcon_Error� ��� l  0 0�+�*�)�+  �*  �)  � ��� l  0 0�(���(  � $  Initialize the log file paths   � ��� <   I n i t i a l i z e   t h e   l o g   f i l e   p a t h s� ��� r   0 ;��� l  0 9��'�&� n   0 9��� 1   7 9�%
�% 
psxp� l  0 7��$�#� I  0 7�"��
�" .earsffdralis        afdr� m   0 1�!
�! afdrdlib� � ��
�  
from� m   2 3�
� fldmfldu�  �$  �#  �'  �&  � o      ��  0 thelogpathbase theLogPathBase� ��� l  < <����  � I Cset logFile to theLogPathBase & "Logs/" & APP_NAME & "/" & LOG_FILE   � ��� � s e t   l o g F i l e   t o   t h e L o g P a t h B a s e   &   " L o g s / "   &   A P P _ N A M E   &   " / "   &   L O G _ F I L E� ��� r   < Y��� b   < W��� b   < U��� b   < O��� b   < M��� b   < G��� b   < E��� b   < ?��� o   < =��  0 thelogpathbase theLogPathBase� m   = >�� ��� 
 L o g s /� o   ? D�� 0 app_name APP_NAME� m   E F�� ���  /� o   G L�� 0 log_file LOG_FILE� m   M N�� ���  -� I   O T���� .0 getformattedtimestamp GetFormattedTimestamp�  �  � m   U V�� ���  . l o g� o      �� 0 logfile logFile� ��� l  Z Z����  �  �  � ��� l  Z Z����  �  �  � ��� l  Z Z����  � 0 * Create the Log folder if it doesn't exist   � ��� T   C r e a t e   t h e   L o g   f o l d e r   i f   i t   d o e s n ' t   e x i s t� ��� r   Z n��� I   Z l���� 0 execcommand ExecCommand� ��� b   [ h��� b   [ f��� b   [ `��� b   [ ^��� m   [ \�� ���  m k d i r   - p  � o   \ ]�
�
  0 thelogpathbase theLogPathBase� m   ^ _�� ��� 
 L o g s /� o   ` e�	�	 0 app_name APP_NAME� m   f g�� �    /�  �  � o      �� "0 createlogfolder createLogFolder�  Z   o ��� E   o v o   o p�� "0 createlogfolder createLogFolder o   p u�� ,0 error_message_prefix ERROR_MESSAGE_PREFIX k   y � 	 I  y ��

� .sysodlogaskr        TEXT
 b   y � o   y ~�� T0 (ui_txt_error_creating_log_folder_details (UI_TXT_ERROR_CREATING_LOG_FOLDER_DETAILS o   ~ �
� 
ret  � 
�  
appr o   � ����� D0  ui_txt_error_creating_log_folder  UI_TXT_ERROR_CREATING_LOG_FOLDER ��
�� 
btns J   � � �� o   � ����� 0 btn_ok BTN_OK��   ��
�� 
dflt J   � � �� o   � ����� 0 btn_ok BTN_OK��   ��
�� 
cbtn J   � � �� o   � ����� 0 btn_ok BTN_OK��   ����
�� 
disp o   � ����� 0 dlgicon_warn dlgIcon_Warn��  	 �� I   � ������� 0 logtoconsole LogToConsole   b   � �!"! b   � �#$# b   � �%&% o   � ����� D0  ui_txt_error_creating_log_folder  UI_TXT_ERROR_CREATING_LOG_FOLDER& m   � �'' �((    '$ o   � ����� 0 log_path LOG_PATH" m   � �)) �**  '    +,+ I   � ��������� .0 getformattedtimestamp GetFormattedTimestamp��  ��  , -��- o   � ����� 0 logfile logFile��  ��  ��  �  �   ./. l  � ���������  ��  ��  / 010 l  � ���23��  2   Initialize the log   3 �44 &   I n i t i a l i z e   t h e   l o g1 565 I   � ���7���� 0 logtoconsole LogToConsole7 898 b   � �:;: b   � �<=< b   � �>?> b   � �@A@ b   � �BCB m   � �DD �EE  S t a r t i n g  C o   � ����� 0 app_name APP_NAMEA m   � �FF �GG   ? o   � ����� 0 app_version APP_VERSION= o   � ���
�� 
ret ; o   � ���
�� 
ret 9 HIH I   � ��������� .0 getformattedtimestamp GetFormattedTimestamp��  ��  I J��J o   � ����� 0 logfile logFile��  ��  6 KLK l  � ���������  ��  ��  L MNM l  � ���OP��  O   Initialize   P �QQ    I n i t i a l i z eN RSR r   � �TUT m   � �����  U o      ���� 0 
cnt_errors  S VWV r   � �XYX J   � �����  Y o      ���� 0 errors_list  W Z[Z r   �\]\ m   � �^^ �__  ] o      ���� "0 thetargetfolder theTargetFolder[ `a` r  bcb J  ����  c o      ����  0 thesourceitems theSourceItemsa ded r  fgf m  
hh �ii  g o      ���� 0 asource aSourcee jkj r  lml J  ����  m o      ���� 0 
thesources 
theSourcesk non r  pqp J  ����  q o      ���� 0 thejobs theJobso rsr l ��������  ��  ��  s tut l ��vw��  v + % Check OS X Version for compatibility   w �xx J   C h e c k   O S   X   V e r s i o n   f o r   c o m p a t i b i l i t yu yzy Z  x{|����{ = #}~} I  !������ *0 osxversionsupported OSXVersionSupported ���� o  ���� "0 osx_version_min OSX_VERSION_MIN��  ��  ~ m  !"��
�� boovfals| k  &t�� ��� I  &>������� 0 logtoconsole LogToConsole� ��� b  '4��� b  '0��� m  '*�� ��� , M i n i m u m   O S   X   v e r s i o n   (� o  */���� "0 osx_version_min OSX_VERSION_MIN� m  03�� ��� & )   n o t   m e t .   E x i t i n g .� ��� I  49�������� .0 getformattedtimestamp GetFormattedTimestamp��  ��  � ���� o  9:���� 0 logfile logFile��  ��  � ���� I ?t����
�� .sysodlogaskr        TEXT� b  ?F��� o  ?D���� B0 dlg_info_osversion_check_failed dlg_Info_OSVersion_Check_Failed� o  DE��
�� 
ret � ����
�� 
appr� o  IL���� 0 dlgtitle dlgTitle� ����
�� 
btns� J  OV�� ���� o  OT���� 0 btn_ok BTN_OK��  � ����
�� 
dflt� J  Y`�� ���� o  Y^���� 0 btn_ok BTN_OK��  � ����
�� 
cbtn� J  cj�� ���� o  ch���� 0 btn_ok BTN_OK��  � �����
�� 
disp� o  mn���� 0 dlgicon_warn dlgIcon_Warn��  ��  ��  ��  z ��� l yy��������  ��  ��  � ��� l yy������  � . ( Get current selection of droppped items   � ��� P   G e t   c u r r e n t   s e l e c t i o n   o f   d r o p p p e d   i t e m s� ��� r  y|��� o  yz���� 0 droppeditems droppedItems� o      ����  0 thesourceitems theSourceItems� ��� l }}��������  ��  ��  � ��� l }}������  � 9 3 Check if theTargetPathRoot is available in a plist   � ��� f   C h e c k   i f   t h e T a r g e t P a t h R o o t   i s   a v a i l a b l e   i n   a   p l i s t� ��� r  }���� I  }�������� 0 execcommand ExecCommand� ���� o  ~�����  0 cmd_plist_read CMD_PLIST_READ��  ��  � o      ���� &0 thetargetpathroot theTargetPathRoot� ��� I  ��������� 0 logtoconsole LogToConsole� ��� b  ����� b  ����� m  ���� ��� F D E B U G :   T a r g e t   r e c e i v e d   f r o m   p l i s t :  � o  ������ &0 thetargetpathroot theTargetPathRoot� o  ����
�� 
ret � ��� I  ���������� .0 getformattedtimestamp GetFormattedTimestamp��  ��  � ���� o  ������ 0 logfile logFile��  ��  � ��� l ����������  ��  ��  � ��� Z  �������� G  ����� l �������� E  ����� o  ������ &0 thetargetpathroot theTargetPathRoot� m  ���� ���  d o e s   n o t   e x i s t��  ��  � l �������� = ����� o  ������ &0 thetargetpathroot theTargetPathRoot� m  ���� ���  ��  ��  � k  ���� ��� l ��������  � d ^ If theTargetPathRoot doesn't exist or is empty, we need to initialize it with safe defaults		   � ��� �   I f   t h e T a r g e t P a t h R o o t   d o e s n ' t   e x i s t   o r   i s   e m p t y ,   w e   n e e d   t o   i n i t i a l i z e   i t   w i t h   s a f e   d e f a u l t s 	 	� ���� r  ����� l ������� I ���~��}
�~ .earsffdralis        afdr� m  ���|
�| afdrcusr�}  ��  �  � o      �{�{ &0 thetargetpathroot theTargetPathRoot��  ��  � k  ���� ��� l ���z���z  � d ^ If the plist exists, we need to convert the path to Apple format to work with "choose folder"   � ��� �   I f   t h e   p l i s t   e x i s t s ,   w e   n e e d   t o   c o n v e r t   t h e   p a t h   t o   A p p l e   f o r m a t   t o   w o r k   w i t h   " c h o o s e   f o l d e r "� ��� l ���y���y  � v p First we need to ensure that the directory specified inside the plist exists, otherwise the next step will fail   � ��� �   F i r s t   w e   n e e d   t o   e n s u r e   t h a t   t h e   d i r e c t o r y   s p e c i f i e d   i n s i d e   t h e   p l i s t   e x i s t s ,   o t h e r w i s e   t h e   n e x t   s t e p   w i l l   f a i l� ��x� Q  ������ r  ����� l ����w�v� c  ����� 4  ���u�
�u 
psxf� o  ���t�t &0 thetargetpathroot theTargetPathRoot� m  ���s
�s 
alis�w  �v  � o      �r�r &0 thetargetpathroot theTargetPathRoot� R      �q�p�o
�q .ascrerr ****      � ****�p  �o  � k  ����    r  �� l ���n�m I ���l�k
�l .earsffdralis        afdr m  ���j
�j afdrcusr�k  �n  �m   o      �i�i &0 thetargetpathroot theTargetPathRoot �h l ���g�g   � �LogToConsole("DEBUG: Error retrieving Target from plist. Falling back to user home: " & theTargetPathRoot & return, GetFormattedTimestamp(), logFile)    �		* L o g T o C o n s o l e ( " D E B U G :   E r r o r   r e t r i e v i n g   T a r g e t   f r o m   p l i s t .   F a l l i n g   b a c k   t o   u s e r   h o m e :   "   &   t h e T a r g e t P a t h R o o t   &   r e t u r n ,   G e t F o r m a t t e d T i m e s t a m p ( ) ,   l o g F i l e )�h  �x  � 

 l ���f�e�d�f  �e  �d    l ���c�c   - ' Ask the user to choose a target folder    � N   A s k   t h e   u s e r   t o   c h o o s e   a   t a r g e t   f o l d e r  r  � c  �	 l ��b�a I ��`�_
�` .sysostflalis    ��� null�_   �^
�^ 
prmp o  ���]�] &0 dlg_select_target DLG_SELECT_TARGET �\�[
�\ 
dflc o  ���Z�Z &0 thetargetpathroot theTargetPathRoot�[  �b  �a   m  �Y
�Y 
ctxt o      �X�X "0 thetargetfolder theTargetFolder  l �W�W   * $ Convert target path to POSIX format    �   H   C o n v e r t   t a r g e t   p a t h   t o   P O S I X   f o r m a t !"! r  #$# l %�V�U% n  &'& 1  �T
�T 
psxp' o  �S�S "0 thetargetfolder theTargetFolder�V  �U  $ o      �R�R "0 thetargetfolder theTargetFolder" ()( I  $�Q*�P�Q 0 logtoconsole LogToConsole* +,+ b  -.- b  /0/ m  11 �22 " S e l e c t e d   T a r g e t :  0 o  �O�O "0 thetargetfolder theTargetFolder. o  �N
�N 
ret , 343 I  �M�L�K�M .0 getformattedtimestamp GetFormattedTimestamp�L  �K  4 5�J5 o   �I�I 0 logfile logFile�J  �P  ) 676 l %%�H89�H  8 ) # Write theTargetFolder to the plist   9 �:: F   W r i t e   t h e T a r g e t F o l d e r   t o   t h e   p l i s t7 ;<; r  %5=>= I  %1�G?�F�G 0 execcommand ExecCommand? @�E@ b  &-ABA o  &+�D�D "0 cmd_plist_write CMD_PLIST_WRITEB o  +,�C�C "0 thetargetfolder theTargetFolder�E  �F  > o      �B�B &0 thetargetpathroot theTargetPathRoot< CDC l 66�A�@�?�A  �@  �?  D EFE l 66�>�=�<�>  �=  �<  F GHG l 66�;IJ�;  I ? 9 Create the transfer command and display the used options   J �KK r   C r e a t e   t h e   t r a n s f e r   c o m m a n d   a n d   d i s p l a y   t h e   u s e d   o p t i o n sH LML l 66�:NO�:  N �set selectedAction to button returned of (display dialog UI_PARAMETERS_USING_DEFAULTS & CMD_PROFILE_DEFAULT with title UI_TXT_PARAMETER_SUMMARY buttons {BTN_CANCEL, BTN_START} default button {BTN_START} cancel button {BTN_CANCEL} with icon dlgIcon_Info)   O �PP� s e t   s e l e c t e d A c t i o n   t o   b u t t o n   r e t u r n e d   o f   ( d i s p l a y   d i a l o g   U I _ P A R A M E T E R S _ U S I N G _ D E F A U L T S   &   C M D _ P R O F I L E _ D E F A U L T   w i t h   t i t l e   U I _ T X T _ P A R A M E T E R _ S U M M A R Y   b u t t o n s   { B T N _ C A N C E L ,   B T N _ S T A R T }   d e f a u l t   b u t t o n   { B T N _ S T A R T }   c a n c e l   b u t t o n   { B T N _ C A N C E L }   w i t h   i c o n   d l g I c o n _ I n f o )M QRQ l 66�9ST�9  S ) #if selectedAction is BTN_START then   T �UU F i f   s e l e c t e d A c t i o n   i s   B T N _ S T A R T   t h e nR VWV l 66�8XY�8  X R L	set transferParameters to (CMD_PROFILE_DEFAULT & RSYNC_PARAM_LOG & logFile)   Y �ZZ � 	 s e t   t r a n s f e r P a r a m e t e r s   t o   ( C M D _ P R O F I L E _ D E F A U L T   &   R S Y N C _ P A R A M _ L O G   &   l o g F i l e )W [\[ l 66�7]^�7  ] l f	LogToConsole("Transfer Parameters: " & transferParameters & return, GetFormattedTimestamp(), logFile)   ^ �__ � 	 L o g T o C o n s o l e ( " T r a n s f e r   P a r a m e t e r s :   "   &   t r a n s f e r P a r a m e t e r s   &   r e t u r n ,   G e t F o r m a t t e d T i m e s t a m p ( ) ,   l o g F i l e )\ `a` l 66�6bc�6  b  end if   c �dd  e n d   i fa efe l 66�5�4�3�5  �4  �3  f ghg l 66�2�1�0�2  �1  �0  h iji l 66�/kl�/  k * $ Create the transfer command and run   l �mm H   C r e a t e   t h e   t r a n s f e r   c o m m a n d   a n d   r u nj non r  6Gpqp l 6Cr�.�-r b  6Csts b  6Auvu o  6;�,�, *0 cmd_profile_default CMD_PROFILE_DEFAULTv o  ;@�+�+ "0 rsync_param_log RSYNC_PARAM_LOGt o  AB�*�* 0 logfile logFile�.  �-  q o      �)�) (0 transferparameters transferParameterso wxw I  H\�(y�'�( 0 logtoconsole LogToConsoley z{z b  IR|}| b  IP~~ m  IL�� ��� * T r a n s f e r   P a r a m e t e r s :   o  LO�&�& (0 transferparameters transferParameters} o  PQ�%
�% 
ret { ��� I  RW�$�#�"�$ .0 getformattedtimestamp GetFormattedTimestamp�#  �"  � ��!� o  WX� �  0 logfile logFile�!  �'  x ��� l ]]����  �  �  � ��� l ]]����  �  �  � ��� l ]]����  �  �  � ��� l ]]����  � ( " Initialize the progress indicator   � ��� D   I n i t i a l i z e   t h e   p r o g r e s s   i n d i c a t o r� ��� r  ]f��� I ]b���
� .corecnte****       ****� o  ]^��  0 thesourceitems theSourceItems�  � o      �� 0 progresscnt progressCnt� ��� r  gp��� m  gj�� ���  T r a n s f e r   S t a t u s� 1  jo�
� 
ppgd� ��� r  qz��� m  qt�� ���  T r a n s f e r r i n g . . .� 1  ty�
� 
ppga� ��� r  {���� o  {~�� 0 progresscnt progressCnt� 1  ~��
� 
ppgt� ��� l ������  �  �  � ��� l ���
�	��
  �	  �  � ��� l ������  � + % Convert source paths to POSIX format   � ��� J   C o n v e r t   s o u r c e   p a t h s   t o   P O S I X   f o r m a t� ��� X  ������ k  ���� ��� l ������  �   Convert path to POSIX   � ��� ,   C o n v e r t   p a t h   t o   P O S I X� ��� r  ����� l ������ n  ����� 1  ���
� 
psxp� o  ���� 0 i  �  �  � o      � �  0 asource aSource� ��� l ����������  ��  ��  � ��� l ��������  � 7 1 Remove trailing slash to handle folder as folder   � ��� b   R e m o v e   t r a i l i n g   s l a s h   t o   h a n d l e   f o l d e r   a s   f o l d e r� ��� Z  ��������� l �������� = ����� l �������� n  ����� 4 �����
�� 
cha � m  ��������� o  ������ 0 asource aSource��  ��  � m  ���� ���  /��  ��  � r  ����� c  ����� n  ����� l �������� 7 ������
�� 
ctxt� m  ������ � l �������� \  ����� l �������� n  ����� 1  ����
�� 
leng� o  ������ 0 asource aSource��  ��  � m  ������ ��  ��  ��  ��  � o  ������ 0 asource aSource� m  ����
�� 
TEXT� o      ���� 0 asource aSource��  ��  � ��� l ����������  ��  ��  � ��� l ��������  �   Add to list theSources   � ��� .   A d d   t o   l i s t   t h e S o u r c e s� ��� r  ����� o  ������ 0 asource aSource� n      ���  ;  ��� o  ������ 0 
thesources 
theSources� ���� I  ��������� 0 logtoconsole LogToConsole� ��� b  ����� b  ����� m  ���� ��� & A d d e d   s o u r c e   i t e m :  � n  ����� 1  ����
�� 
strq� o  ������ 0 asource aSource� o  ����
�� 
ret � ��� I  ���������� .0 getformattedtimestamp GetFormattedTimestamp��  ��  � ���� o  ������ 0 logfile logFile��  ��  ��  � 0 i  � o  ������  0 thesourceitems theSourceItems� ��� l ����������  ��  ��  �    X  �Y�� k  T  r  # b   	
	 b   b   b   b  
 o  ���� 0 	cmd_rsync 	CMD_RSYNC o  	���� (0 transferparameters transferParameters m  
 �    l ���� n   1  ��
�� 
strq o  ���� 0 j  ��  ��   m   �   
 l ���� n   1  ��
�� 
strq o  ���� "0 thetargetfolder theTargetFolder��  ��   n        ;  !" o   !���� 0 thejobs theJobs �� I  $T�� ���� 0 logtoconsole LogToConsole  !"! b  %J#$# b  %H%&% b  %B'(' b  %>)*) b  %6+,+ b  %2-.- b  %./0/ m  %(11 �22  A d d e d   j o b :  0 o  (-���� 0 	cmd_rsync 	CMD_RSYNC. o  .1���� (0 transferparameters transferParameters, m  2533 �44   * l 6=5����5 n  6=676 1  9=��
�� 
strq7 o  69���� 0 j  ��  ��  ( m  >A88 �99   & l BG:����: n  BG;<; 1  CG��
�� 
strq< o  BC���� "0 thetargetfolder theTargetFolder��  ��  $ o  HI��
�� 
ret " =>= I  JO�������� .0 getformattedtimestamp GetFormattedTimestamp��  ��  > ?��? o  OP���� 0 logfile logFile��  ��  ��  �� 0 j   o  ������ 0 
thesources 
theSources @A@ l ZZ��������  ��  ��  A BCB l ZZ��DE��  D : 4 Display Notification that transfer is being started   E �FF h   D i s p l a y   N o t i f i c a t i o n   t h a t   t r a n s f e r   i s   b e i n g   s t a r t e dC GHG I Zk��IJ
�� .sysonotfnull��� ��� TEXTI o  Z_���� "0 ui_txt_transfer UI_TXT_TRANSFERJ ��K��
�� 
apprK o  bg���� 0 app_details APP_DETAILS��  H LML l ll��������  ��  ��  M NON l ll��PQ��  P 0 * Initialize temporary counter for progress   Q �RR T   I n i t i a l i z e   t e m p o r a r y   c o u n t e r   f o r   p r o g r e s sO STS r  lqUVU m  lm����  V o      ���� 0 progcnt progCntT WXW l rr��������  ��  ��  X YZY l rr��[\��  [   Run all jobs   \ �]]    R u n   a l l   j o b sZ ^_^ X  r
`��a` k  �bb cdc r  ��efe [  ��ghg o  ������ 0 progcnt progCnth m  ������ f o      ���� 0 progcnt progCntd iji l ����������  ��  ��  j klk l ����mn��  m   Display progress   n �oo "   D i s p l a y   p r o g r e s sl pqp r  ��rsr b  ��tut b  ��vwv b  ��xyx m  ��zz �{{ $ T r a n s f e r r i n g   i t e m  y o  ������ 0 progcnt progCntw m  ��|| �}}    o f  u o  ������ 0 progresscnt progressCnts 1  ����
�� 
ppgaq ~~ r  ����� o  ������ 0 progcnt progCnt� 1  ����
�� 
ppgc ��� l ����������  ��  ��  � ��� l ��������  � #  Execute the i's job...						   � ��� :   E x e c u t e   t h e   i ' s   j o b . . . 	 	 	 	 	 	� ��� r  ����� I  ��������� 0 execcommand ExecCommand� ���� o  ������ 0 i  ��  ��  � o      ���� 0 
thecommand 
theCommand� ��� I  ��������� 0 logtoconsole LogToConsole� ��� b  ����� b  ����� m  ���� ���  E x e c u t i n g   j o b :  � o  ������ 0 i  � o  ����
�� 
ret � ��� I  ���������� .0 getformattedtimestamp GetFormattedTimestamp��  ��  � ��� o  ���~�~ 0 logfile logFile�  ��  � ��� l ���}�|�{�}  �|  �{  � ��� l ���z���z  �    ... and check for errors    � ��� 4   . . .   a n d   c h e c k   f o r   e r r o r s  � ��y� Z  ����x�w� E  ����� o  ���v�v 0 
thecommand 
theCommand� m  ���� ���  E r r o r :� k  ��� ��� r  ����� [  ����� o  ���u�u 0 
cnt_errors  � m  ���t�t � o      �s�s 0 
cnt_errors  � ��� r  ����� b  ����� o  ���r�r 0 
thecommand 
theCommand� o  ���q
�q 
ret � n      ���  ;  ��� o  ���p�p 0 errors_list  � ��o� I  ��n��m�n 0 logtoconsole LogToConsole� ��� b  ����� b  ����� o  ���l�l  0 error_job_exec ERROR_JOB_EXEC� o  ���k�k 0 
thecommand 
theCommand� o  ���j
�j 
ret � ��� I  ���i�h�g�i .0 getformattedtimestamp GetFormattedTimestamp�h  �g  � ��f� o  ���e�e 0 logfile logFile�f  �m  �o  �x  �w  �y  �� 0 i  a o  uv�d�d 0 thejobs theJobs_ ��� l �c�b�a�c  �b  �a  � ��� l �`���`  � 2 ,set progress completed steps to cnt_progress   � ��� X s e t   p r o g r e s s   c o m p l e t e d   s t e p s   t o   c n t _ p r o g r e s s� ��� l �_�^�]�_  �^  �]  � ��� l �\���\  � 3 - Determine if errors ocurred during execution   � ��� Z   D e t e r m i n e   i f   e r r o r s   o c u r r e d   d u r i n g   e x e c u t i o n� ��� Z  ����[�� =  ��� o  �Z�Z 0 
cnt_errors  � m  �Y�Y  � k  N�� ��� I "�X��
�X .sysonotfnull��� ��� TEXT� o  �W�W (0 ui_result_noerrors UI_RESULT_NOERRORS� �V��U
�V 
appr� o  �T�T 0 app_details APP_DETAILS�U  � ��� I  #=�S��R�S 0 logtoconsole LogToConsole� ��� b  $3��� b  $1��� b  $/��� o  $)�Q�Q 20 log_message_job_summary LOG_MESSAGE_JOB_SUMMARY� o  ).�P�P (0 ui_result_noerrors UI_RESULT_NOERRORS� o  /0�O
�O 
ret � o  12�N
�N 
ret � ��� I  38�M�L�K�M .0 getformattedtimestamp GetFormattedTimestamp�L  �K  � ��J� o  89�I�I 0 logfile logFile�J  �R  � ��H� I  >N�G��F�G 0 logtoconsole LogToConsole� ��� b  ?F��� o  ?D�E�E 0 log_end_line LOG_END_LINE� o  DE�D
�D 
ret � ��� m  FI�� ���  � ��C� o  IJ�B�B 0 logfile logFile�C  �F  �H  �[  � k  Q��� ��� l QQ�A���A  �   Errors occurred   � ���     E r r o r s   o c c u r r e d� � � I Qb�@
�@ .sysonotfnull��� ��� TEXT o  QV�?�? $0 ui_result_errors UI_RESULT_ERRORS �>�=
�> 
appr o  Y^�<�< 0 app_details APP_DETAILS�=     l cc�;�;   Y S In addition to Notification Center, display a summary of the errors for 10 seconds    � �   I n   a d d i t i o n   t o   N o t i f i c a t i o n   C e n t e r ,   d i s p l a y   a   s u m m a r y   o f   t h e   e r r o r s   f o r   1 0   s e c o n d s 	
	 I c��:
�: .sysodlogaskr        TEXT c  cr b  cn b  cl b  cj o  cd�9�9 0 
cnt_errors   o  di�8�8 $0 ui_result_errors UI_RESULT_ERRORS o  jk�7
�7 
ret  o  lm�6�6 0 errors_list   m  nq�5
�5 
ctxt �4
�4 
appr o  uz�3�3 0 app_details APP_DETAILS �2
�2 
disp o  }~�1�1 0 dlgicon_error dlgIcon_Error �0
�0 
btns J  �� �/ o  ���.�. 0 btn_ok BTN_OK�/   �-
�- 
dflt J  ��  �,  o  ���+�+ 0 btn_ok BTN_OK�,   �*!"
�* 
cbtn! J  ��## $�)$ o  ���(�( 0 btn_ok BTN_OK�)  " �'%�&
�' 
givu% m  ���%�% 
�&  
 &'& I  ���$(�#�$ 0 logtoconsole LogToConsole( )*) b  ��+,+ b  ��-.- b  ��/0/ b  ��121 b  ��343 b  ��565 o  ���"�" 20 log_message_job_summary LOG_MESSAGE_JOB_SUMMARY6 o  ���!�! 0 
cnt_errors  4 m  ��77 �88    e r r o r s   o c c u r e d2 o  ��� 
�  
ret 0 l ��9��9 c  ��:;: o  ���� 0 errors_list  ; m  ���
� 
ctxt�  �  . o  ���
� 
ret , o  ���
� 
ret * <=< I  ������ .0 getformattedtimestamp GetFormattedTimestamp�  �  = >�> o  ���� 0 logfile logFile�  �#  ' ?�? I  ���@�� 0 logtoconsole LogToConsole@ ABA b  ��CDC o  ���� 0 log_end_line LOG_END_LINED o  ���
� 
ret B EFE m  ��GG �HH  F I�I o  ���� 0 logfile logFile�  �  �  � J�J l �����
�  �  �
  �  � KLK l     �	���	  �  �  L MNM l     ����  �  �  N OPO l     ����  �  �  P QRQ l     � �����   ��  ��  R STS l     ��UV��  U G A#################################################################   V �WW � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #T XYX l     ��Z[��  Z   Helper functions   [ �\\ "   H e l p e r   f u n c t i o n sY ]^] l     ��_`��  _ G A#################################################################   ` �aa � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #^ bcb l     ��������  ��  ��  c ded l     ��fg��  f - ' Run a command without admin privileges   g �hh N   R u n   a   c o m m a n d   w i t h o u t   a d m i n   p r i v i l e g e se iji i  ��klk I      ��m���� 0 execcommand ExecCommandm n��n o      ���� 0 thecmd theCMD��  ��  l k     oo pqp Q     rstr k    uu vwv l   ��xy��  x ) #with timeout of TIMEOUT_SEC seconds   y �zz F w i t h   t i m e o u t   o f   T I M E O U T _ S E C   s e c o n d sw {|{ r    }~} I   
����
�� .sysoexecTEXT���     TEXT l   ������ b    ��� o    ���� 0 thecmd theCMD� m    �� ��� 
   2 > & 1��  ��  ��  ~ o      ���� 0 returnvalue returnValue| ���� l   ������  � 1 +set returnValue to do shell script (theCMD)   � ��� V s e t   r e t u r n V a l u e   t o   d o   s h e l l   s c r i p t   ( t h e C M D )��  s R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��  t r    ��� b    ��� m    �� ���  E r r o r :  � o    ���� 0 errmsg errMsg� o      ���� 0 returnvalue returnValueq ��� l   ��������  ��  ��  � ���� L    �� o    ���� 0 returnvalue returnValue��  j ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   Valid OS X version   � ��� &   V a l i d   O S   X   v e r s i o n� ��� i  ����� I      ������� *0 osxversionsupported OSXVersionSupported� ���� o      ���� 00 minsupportedosxversion minSupportedOSXVersion��  ��  � k     �� ��� r     	��� n     ��� 1    ��
�� 
sisv� l    ������ I    ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  � o      ���� 0 strosxversion strOSXVersion� ��� P   
 ����� r    ��� @   ��� o    ���� 0 strosxversion strOSXVersion� o    ���� 00 minsupportedosxversion minSupportedOSXVersion� o      ���� .0 issupportedosxversion IsSupportedOSXVersion� ����
�� consnume��  ��  � ��� l   ��������  ��  ��  � ���� L    �� o    ���� .0 issupportedosxversion IsSupportedOSXVersion��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � $  Get formatted date/time stamp   � ��� <   G e t   f o r m a t t e d   d a t e / t i m e   s t a m p� ��� i  ����� I      �������� .0 getformattedtimestamp GetFormattedTimestamp��  ��  � k     �� ��� r     ��� I    �����
�� .sysoexecTEXT���     TEXT� l    ������ m     �� ��� . d a t e   " + % Y - % m - % d _ % H % M % S "��  ��  ��  � o      ���� 0 dtstamp dtStamp� ���� L    �� c    ��� o    	���� 0 dtstamp dtStamp� m   	 
��
�� 
TEXT��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � + % Log to a file, requires a POSIX path   � ��� J   L o g   t o   a   f i l e ,   r e q u i r e s   a   P O S I X   p a t h� ���� i  ����� I      ������� 0 logtoconsole LogToConsole� ��� o      ���� 0 thelogmessage theLogMessage� ��� o      ���� 0 thetimestamp theTimestamp� ���� o      ���� 0 
thelogfile 
theLogFile��  ��  � r     ��� l    ������ I    �����
�� .sysoexecTEXT���     TEXT� b     ��� b     ��� b     	��� b     ��� b     ��� b     ��� m     �� ��� 
 e c h o  � o    ���� 0 thetimestamp theTimestamp� m    �� ���   � o    ���� 0 thelogmessage theLogMessage� m    �� ���    > >  � o   	 
���� 0 
thelogfile 
theLogFile� m    �� ��� 
   2 > & 1��  ��  ��  � o      ���� 0 
theloginfo 
theLogInfo��       ?���di���������������!&27<AMRW\�kpu��	 	��������� )							��  � =����������������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�� 0 	cmd_rsync 	CMD_RSYNC�� *0 cmd_profile_default CMD_PROFILE_DEFAULT�� 0 app_name APP_NAME�� 0 app_version APP_VERSION�� 0 timeout_sec TIMEOUT_SEC�� 0 app_details APP_DETAILS�� "0 osx_version_min OSX_VERSION_MIN�� B0 dlg_info_osversion_check_failed dlg_Info_OSVersion_Check_Failed�� *0 err_transfer_failed ERR_TRANSFER_FAILED�� (0 ui_result_noerrors UI_RESULT_NOERRORS�� $0 ui_result_errors UI_RESULT_ERRORS�� &0 dlg_select_target DLG_SELECT_TARGET�� (0 ui_txt_droplet_use UI_TXT_DROPLET_USE�� "0 ui_txt_transfer UI_TXT_TRANSFER�� *0 ui_enter_parameters UI_ENTER_PARAMETERS�� 60 ui_enter_parameters_title UI_ENTER_PARAMETERS_TITLE�� <0 ui_parameters_using_defaults UI_PARAMETERS_USING_DEFAULTS�� D0  ui_txt_error_creating_log_folder  UI_TXT_ERROR_CREATING_LOG_FOLDER�� T0 (ui_txt_error_creating_log_folder_details (UI_TXT_ERROR_CREATING_LOG_FOLDER_DETAILS�� 40 ui_txt_parameter_summary UI_TXT_PARAMETER_SUMMARY�� ,0 error_message_prefix ERROR_MESSAGE_PREFIX��  0 error_job_exec ERROR_JOB_EXEC�� 20 log_message_job_summary LOG_MESSAGE_JOB_SUMMARY�� 0 log_end_line LOG_END_LINE�� 0 
btn_cancel 
BTN_CANCEL� 0 btn_ok BTN_OK�~ 0 btn_quit BTN_QUIT�} 0 	btn_start 	BTN_START�| 0 app_icon APP_ICON�{ 0 
icon_error 
ICON_ERROR�z 0 	icon_info 	ICON_INFO�y 0 	icon_warn 	ICON_WARN�x 0 log_file LOG_FILE�w 0 settings_file SETTINGS_FILE�v 20 lastused_targetpath_key LASTUSED_TARGETPATH_KEY�u 60 lastused_rsync_parameters LASTUSED_RSYNC_PARAMETERS�t  0 cmd_plist_read CMD_PLIST_READ�s "0 cmd_plist_write CMD_PLIST_WRITE�r .0 cmd_rsync_params_read CMD_RSYNC_PARAMS_READ�q 00 cmd_rsync_params_write CMD_RSYNC_PARAMS_WRITE�p "0 rsync_param_log RSYNC_PARAM_LOG�o *0 rsync_param_exclude RSYNC_PARAM_EXCLUDE�n "0 rsync_param_dry RSYNC_PARAM_DRY�m ,0 rsync_param_shrt_dry RSYNC_PARAM_SHRT_DRY�l *0 rsync_param_recurse RSYNC_PARAM_RECURSE�k 40 rsync_param_shrt_recurse RSYNC_PARAM_SHRT_RECURSE�j *0 rsync_param_archive RSYNC_PARAM_ARCHIVE�i 40 rsync_param_shrt_archive RSYNC_PARAM_SHRT_ARCHIVE�h (0 rsync_param_update RSYNC_PARAM_UPDATE�g 20 rsync_param_shrt_update RSYNC_PARAM_SHRT_UPDATE�f ,0 rsync_param_symlinks RSYNC_PARAM_SYMLINKS�e 60 rsync_param_shrt_symlinks RSYNC_PARAM_SHRT_SYMLINKS�d &0 rsync_param_xattr RSYNC_PARAM_XATTR�c 00 rsync_param_shrt_xattr RSYNC_PARAM_SHRT_XATTR�b ,0 arr_rsync_parameters ARR_RSYNC_PARAMETERS
�a .aevtoappnull  �   � ****
�` .aevtodocnull  �    alis�_ 0 execcommand ExecCommand�^ *0 osxversionsupported OSXVersionSupported�] .0 getformattedtimestamp GetFormattedTimestamp�\ 0 logtoconsole LogToConsole��� �				 & T r a n s f e r T o   (   3 . 0 . 4 )� �	
	
� A t   l e a s t   o n e   r s y n c   p a r a m e t e r   m u s t   b e   g i v e n   f o r   r s y n c   t o   w o r k .  P a r a m e t e r s   m u s t   s t a r t   w i t h   a   d a s h   ( - ) .   T r a n s f e r T o   w i l l   u s e   a   s a f e   d e f a u l t   i n s t e a d   	 ( - r a u E ) .   S e l e c t   ' O K '   t o   c o n f i r m   o r   ' C a n c e l '   t o   c a n c e l   t h e   t r a n s f e r .� �		 r d e f a u l t s   r e a d   n e t . t h k . T r a n s f e r T o . p l i s t   L a s t U s e d T a r g e t P a t h� �		 � d e f a u l t s   w r i t e   n e t . t h k . T r a n s f e r T o . p l i s t   L a s t U s e d T a r g e t P a t h   - s t r i n g  	  �		 | d e f a u l t s   r e a d   n e t . t h k . T r a n s f e r T o . p l i s t   L a s t U s e d R s y n c P a r a m e t e r s	 �		 � d e f a u l t s   w r i t e   n e t . t h k . T r a n s f e r T o . p l i s t   L a s t U s e d R s y n c P a r a m e t e r s   - s t r i n g  	 �[	�[ 	  ������� )	 �Zb�Y�X		�W
�Z .aevtoappnull  �   � ****�Y  �X  	  	 *�V�U�T�S�R�Q�P�O�N�M����L��K����J�I�H�G�F�E�D�C�B�A��@��?	�>+-�=R`
�V .sysorpthalis        TEXT�U 0 dlgicon dlgIcon�T 0 dlgicon_warn dlgIcon_Warn�S 0 dlgicon_info dlgIcon_Info
�R afdrdlib
�Q 
from
�P fldmfldu
�O .earsffdralis        afdr
�N 
psxp�M  0 thelogpathbase theLogPathBase�L .0 getformattedtimestamp GetFormattedTimestamp�K 0 logfile logFile�J 0 execcommand ExecCommand�I "0 createlogfolder createLogFolder
�H 
ret 
�G 
appr
�F 
btns
�E 
dflt
�D 
cbtn
�C 
disp�B 

�A .sysodlogaskr        TEXT�@ 0 log_path LOG_PATH�? 0 logtoconsole LogToConsole�> *0 osxversionsupported OSXVersionSupported�= 0 dlgtitle dlgTitle�W�b  j  E�Ob  j  E�Ob  j  E�O���l �,E�O��%b  %�%b   %�%*j+ %�%E�O*a �%a %b  %a %k+ E` O_ b   [b  _ %a b  a b  kva b  kva b  kva �a  O*b  a %_ %a %*j+ �m+  Y hO*a !b  %a "%b  %a #%_ %_ %*j+ �m+  O*b  k+ $f  U*a %b  %a &%*j+ �m+  Ob  _ %a _ 'a b  kva b  kva b  kva �a  Y hO*a (*j+ �m+  O*b  _ %a )�m+  Ob  a b  a b  kva b  kva b  kva �a  OP	 �<��;�:		�9
�< .aevtodocnull  �    alis�; 0 droppeditems droppedItems�:  	 �8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!�8 0 droppeditems droppedItems�7 0 dlgicon dlgIcon�6 0 dlgicon_warn dlgIcon_Warn�5 0 dlgicon_info dlgIcon_Info�4 0 dlgicon_error dlgIcon_Error�3  0 thelogpathbase theLogPathBase�2 0 logfile logFile�1 "0 createlogfolder createLogFolder�0 0 log_path LOG_PATH�/ 0 
cnt_errors  �. 0 errors_list  �- "0 thetargetfolder theTargetFolder�,  0 thesourceitems theSourceItems�+ 0 asource aSource�* 0 
thesources 
theSources�) 0 thejobs theJobs�( 0 dlgtitle dlgTitle�' &0 thetargetpathroot theTargetPathRoot�& (0 transferparameters transferParameters�% 0 progresscnt progressCnt�$ 0 i  �# 0 j  �" 0 progcnt progCnt�! 0 
thecommand 
theCommand	 O� ����������������������')�DF^h�����������
�	�����1������� ��������������138��z|���������7G
�  .sysorpthalis        TEXT
� afdrdlib
� 
from
� fldmfldu
� .earsffdralis        afdr
� 
psxp� .0 getformattedtimestamp GetFormattedTimestamp� 0 execcommand ExecCommand
� 
ret 
� 
appr
� 
btns
� 
dflt
� 
cbtn
� 
disp� 

� .sysodlogaskr        TEXT� 0 logtoconsole LogToConsole� *0 osxversionsupported OSXVersionSupported
� 
bool
� afdrcusr
� 
psxf
� 
alis�
  �	  
� 
prmp
� 
dflc� 
� .sysostflalis    ��� null
� 
ctxt
� .corecnte****       ****
� 
ppgd
� 
ppga
�  
ppgt
�� 
kocl
�� 
cobj
�� 
cha 
�� 
leng
�� 
TEXT
�� 
strq
�� .sysonotfnull��� ��� TEXT
�� 
ppgc
�� 
givu�� �9�b  j  E�Ob  j  E�Ob  j  E�Ob  j  E�O���l �,E�O��%b  %�%b   %�%*j+ 	%�%E�O*�%�%b  %�%k+ E�O�b   Wb  �%a b  a b  kva b  kva b  kva �a  O*b  a %�%a %*j+ 	�m+ Y hO*a b  %a %b  %�%�%*j+ 	�m+ OjE�OjvE�Oa E�OjvE�Oa E�OjvE�OjvE�O*b  k+ f  S*a b  %a  %*j+ 	�m+ Ob  �%a ] a b  kva b  kva b  kva �a  Y hO�E�O*b  $k+ E^ O*a !] %�%*j+ 	�m+ O] a "
 ] a # a $& a %j E^ Y * *a &] /a '&E^ W X ( )a %j E^ OPO*a *b  a +] a , -a .&E�O��,E�O*a /�%�%*j+ 	�m+ O*b  %�%k+ E^ Ob  b  (%�%E^ O*a 0] %�%*j+ 	�m+ O�j 1E^ Oa 2*a 3,FOa 4*a 5,FO] *a 6,FO f�[a 7a 8l 1kh ] �,E�O�a 9i/a :  �[a .\[Zk\Z�a ;,k2a <&E�Y hO��6FO*a =�a >,%�%*j+ 	�m+ [OY��O k�[a 7a 8l 1kh b   ] %a ?%] a >,%a @%�a >,%�6FO*a Ab   %] %a B%] a >,%a C%�a >,%�%*j+ 	�m+ [OY��Ob  a b  l DOjE^ O ��[a 7a 8l 1kh ] kE^ Oa E] %a F%] %*a 5,FO] *a G,FO*] k+ E^ O*a H] %�%*j+ 	�m+ O] a I *�kE�O] �%�6FO*b  ] %�%*j+ 	�m+ Y h[OY�{O�j  Bb  	a b  l DO*b  b  	%�%�%*j+ 	�m+ O*b  �%a J�m+ Y �b  
a b  l DO�b  
%�%�%a .&a b  a �a b  kva b  kva b  kva Ka a L O*b  �%a M%�%�a .&%�%�%*j+ 	�m+ O*b  �%a N�m+ OP	 ��l����		���� 0 execcommand ExecCommand�� ��	�� 	  ���� 0 thecmd theCMD��  	 �������� 0 thecmd theCMD�� 0 returnvalue returnValue�� 0 errmsg errMsg	 ��������
�� .sysoexecTEXT���     TEXT�� 0 errmsg errMsg��  ��  ��%j E�OPW X  �%E�O�	 �������		���� *0 osxversionsupported OSXVersionSupported�� ��	�� 	  ���� 00 minsupportedosxversion minSupportedOSXVersion��  	 �������� 00 minsupportedosxversion minSupportedOSXVersion�� 0 strosxversion strOSXVersion�� .0 issupportedosxversion IsSupportedOSXVersion	 �����
�� .sysosigtsirr   ��� null
�� 
sisv�� *j  �,E�O�g ��E�VO�	 �������		���� .0 getformattedtimestamp GetFormattedTimestamp��  ��  	 ���� 0 dtstamp dtStamp	 �����
�� .sysoexecTEXT���     TEXT
�� 
TEXT�� �j E�O��&	 �������		���� 0 logtoconsole LogToConsole�� ��	�� 	  �������� 0 thelogmessage theLogMessage�� 0 thetimestamp theTimestamp�� 0 
thelogfile 
theLogFile��  	 ���������� 0 thelogmessage theLogMessage�� 0 thetimestamp theTimestamp�� 0 
thelogfile 
theLogFile�� 0 
theloginfo 
theLogInfo	 ������
�� .sysoexecTEXT���     TEXT�� �%�%�%�%�%�%j E�ascr  ��ޭ