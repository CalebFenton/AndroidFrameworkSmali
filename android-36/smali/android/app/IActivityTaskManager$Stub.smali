.class public abstract Landroid/app/IActivityTaskManager$Stub;
.super Landroid/os/Binder;
.source "IActivityTaskManager.java"

# interfaces
.implements Landroid/app/IActivityTaskManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityTaskManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAppTask:I = 0x29

.field static final blacklist TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x4d

.field static final blacklist TRANSACTION_canBeUniversalResizeable:I = 0x1d

.field static final blacklist TRANSACTION_cancelTaskWindowTransition:I = 0x45

.field static final blacklist TRANSACTION_clearLaunchParamsForPackages:I = 0x58

.field static final blacklist TRANSACTION_detachNavigationBarFromApp:I = 0x5b

.field static final blacklist TRANSACTION_finishVoiceTask:I = 0x28

.field static final blacklist TRANSACTION_focusTopTask:I = 0x21

.field static final blacklist TRANSACTION_getActivityClientController:I = 0x11

.field static final blacklist TRANSACTION_getAllRootTaskInfos:I = 0x35

.field static final blacklist TRANSACTION_getAllRootTaskInfosOnDisplay:I = 0x37

.field static final blacklist TRANSACTION_getAppTaskThumbnailSize:I = 0x2a

.field static final blacklist TRANSACTION_getAppTasks:I = 0x25

.field static final blacklist TRANSACTION_getAssistContextExtras:I = 0x3a

.field static final blacklist TRANSACTION_getDeviceConfigurationInfo:I = 0x44

.field static final blacklist TRANSACTION_getFocusedRootTaskInfo:I = 0x1f

.field static final blacklist TRANSACTION_getFrontActivityScreenCompatMode:I = 0x12

.field static final blacklist TRANSACTION_getLastResumedActivityUserId:I = 0x48

.field static final blacklist TRANSACTION_getLockTaskModeState:I = 0x24

.field static final blacklist TRANSACTION_getPackageAskScreenCompat:I = 0x56

.field static final blacklist TRANSACTION_getPackageScreenCompatMode:I = 0x54

.field static final blacklist TRANSACTION_getRecentTasks:I = 0x1a

.field static final blacklist TRANSACTION_getRootTaskInfo:I = 0x36

.field static final blacklist TRANSACTION_getRootTaskInfoOnDisplay:I = 0x38

.field static final blacklist TRANSACTION_getTaskBounds:I = 0x20

.field static final blacklist TRANSACTION_getTaskDescriptionIcon:I = 0x2c

.field static final blacklist TRANSACTION_getTaskSnapshot:I = 0x46

.field static final blacklist TRANSACTION_getTasks:I = 0x18

.field static final blacklist TRANSACTION_getVoiceInteractorPackageName:I = 0x9

.field static final blacklist TRANSACTION_getWindowOrganizerController:I = 0x41

.field static final blacklist TRANSACTION_isActivityStartAllowedOnDisplay:I = 0xf

.field static final blacklist TRANSACTION_isAssistDataAllowed:I = 0x3d

.field static final blacklist TRANSACTION_isInLockTaskMode:I = 0x23

.field static final blacklist TRANSACTION_isTopActivityImmersive:I = 0x1b

.field static final blacklist TRANSACTION_keyguardGoingAway:I = 0x3f

.field static final blacklist TRANSACTION_moveRootTaskToDisplay:I = 0x31

.field static final blacklist TRANSACTION_moveTaskToFront:I = 0x19

.field static final blacklist TRANSACTION_moveTaskToRootTask:I = 0x32

.field static final blacklist TRANSACTION_onPictureInPictureUiStateChanged:I = 0x5a

.field static final blacklist TRANSACTION_onSplashScreenViewCopyFinished:I = 0x59

.field static final blacklist TRANSACTION_preloadRecentsActivity:I = 0xe

.field static final blacklist TRANSACTION_registerBackGestureDelegate:I = 0x5e

.field static final blacklist TRANSACTION_registerBackgroundActivityStartCallback:I = 0x5f

.field static final blacklist TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x4b

.field static final blacklist TRANSACTION_registerRemoteAnimationsForDisplay:I = 0x4c

.field static final blacklist TRANSACTION_registerScreenCaptureObserver:I = 0x61

.field static final blacklist TRANSACTION_registerTaskStackListener:I = 0x2d

.field static final blacklist TRANSACTION_releaseSomeActivities:I = 0x2b

.field static final blacklist TRANSACTION_removeAllVisibleRecentTasks:I = 0x17

.field static final blacklist TRANSACTION_removeRootTasksInWindowingModes:I = 0x33

.field static final blacklist TRANSACTION_removeRootTasksWithActivityTypes:I = 0x34

.field static final blacklist TRANSACTION_removeTask:I = 0x16

.field static final blacklist TRANSACTION_reportAssistContextExtras:I = 0x1c

.field static final blacklist TRANSACTION_requestAssistContextExtras:I = 0x3b

.field static final blacklist TRANSACTION_requestAssistDataForTask:I = 0x3e

.field static final blacklist TRANSACTION_requestAutofillData:I = 0x3c

.field static final blacklist TRANSACTION_requestOpenInBrowserEducation:I = 0x43

.field static final blacklist TRANSACTION_resizeTask:I = 0x30

.field static final blacklist TRANSACTION_resumeAppSwitches:I = 0x51

.field static final blacklist TRANSACTION_setActivityController:I = 0x52

.field static final blacklist TRANSACTION_setFocusedRootTask:I = 0x1e

.field static final blacklist TRANSACTION_setFocusedTask:I = 0x14

.field static final blacklist TRANSACTION_setFrontActivityScreenCompatMode:I = 0x13

.field static final blacklist TRANSACTION_setLockScreenShown:I = 0x39

.field static final blacklist TRANSACTION_setPackageAskScreenCompat:I = 0x57

.field static final blacklist TRANSACTION_setPackageScreenCompatMode:I = 0x55

.field static final blacklist TRANSACTION_setPersistentVrThread:I = 0x4f

.field static final blacklist TRANSACTION_setRunningRemoteTransitionDelegate:I = 0x5c

.field static final blacklist TRANSACTION_setTaskIsPerceptible:I = 0x15

.field static final blacklist TRANSACTION_setTaskResizeable:I = 0x2f

.field static final blacklist TRANSACTION_setVoiceKeepAwake:I = 0x53

.field static final blacklist TRANSACTION_setVrThread:I = 0x4e

.field static final blacklist TRANSACTION_startActivities:I = 0x2

.field static final blacklist TRANSACTION_startActivity:I = 0x1

.field static final blacklist TRANSACTION_startActivityAndWait:I = 0x6

.field static final blacklist TRANSACTION_startActivityAsCaller:I = 0xd

.field static final blacklist TRANSACTION_startActivityAsUser:I = 0x3

.field static final blacklist TRANSACTION_startActivityFromGameSession:I = 0xb

.field static final blacklist TRANSACTION_startActivityFromRecents:I = 0xc

.field static final blacklist TRANSACTION_startActivityIntentSender:I = 0x5

.field static final blacklist TRANSACTION_startActivityWithConfig:I = 0x7

.field static final blacklist TRANSACTION_startAssistantActivity:I = 0xa

.field static final blacklist TRANSACTION_startBackNavigation:I = 0x5d

.field static final blacklist TRANSACTION_startNextMatchingActivity:I = 0x4

.field static final blacklist TRANSACTION_startSystemLockTaskMode:I = 0x26

.field static final blacklist TRANSACTION_startVoiceActivity:I = 0x8

.field static final blacklist TRANSACTION_stopAppSwitches:I = 0x50

.field static final blacklist TRANSACTION_stopSystemLockTaskMode:I = 0x27

.field static final blacklist TRANSACTION_supportsLocalVoiceInteraction:I = 0x42

.field static final blacklist TRANSACTION_suppressResizeConfigChanges:I = 0x40

.field static final blacklist TRANSACTION_takeTaskSnapshot:I = 0x47

.field static final blacklist TRANSACTION_unhandledBack:I = 0x10

.field static final blacklist TRANSACTION_unregisterBackgroundActivityStartCallback:I = 0x60

.field static final blacklist TRANSACTION_unregisterScreenCaptureObserver:I = 0x62

.field static final blacklist TRANSACTION_unregisterTaskStackListener:I = 0x2e

.field static final blacklist TRANSACTION_updateConfiguration:I = 0x49

.field static final blacklist TRANSACTION_updateLockTaskFeatures:I = 0x4a

.field static final blacklist TRANSACTION_updateLockTaskPackages:I = 0x22


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 504
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 505
    const-string v0, "android.app.IActivityTaskManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityTaskManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 513
    if-nez p0, :cond_4

    .line 514
    const/4 v0, 0x0

    return-object v0

    .line 516
    :cond_4
    const-string v0, "android.app.IActivityTaskManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 517
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IActivityTaskManager;

    if-eqz v1, :cond_14

    .line 518
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityTaskManager;

    return-object v1

    .line 520
    :cond_14
    new-instance v1, Landroid/app/IActivityTaskManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 529
    packed-switch p0, :pswitch_data_176

    .line 925
    const/4 v0, 0x0

    return-object v0

    .line 921
    :pswitch_5
    const-string/jumbo v0, "unregisterScreenCaptureObserver"

    return-object v0

    .line 917
    :pswitch_9
    const-string/jumbo v0, "registerScreenCaptureObserver"

    return-object v0

    .line 913
    :pswitch_d
    const-string/jumbo v0, "unregisterBackgroundActivityStartCallback"

    return-object v0

    .line 909
    :pswitch_11
    const-string/jumbo v0, "registerBackgroundActivityStartCallback"

    return-object v0

    .line 905
    :pswitch_15
    const-string/jumbo v0, "registerBackGestureDelegate"

    return-object v0

    .line 901
    :pswitch_19
    const-string/jumbo v0, "startBackNavigation"

    return-object v0

    .line 897
    :pswitch_1d
    const-string/jumbo v0, "setRunningRemoteTransitionDelegate"

    return-object v0

    .line 893
    :pswitch_21
    const-string v0, "detachNavigationBarFromApp"

    return-object v0

    .line 889
    :pswitch_24
    const-string/jumbo v0, "onPictureInPictureUiStateChanged"

    return-object v0

    .line 885
    :pswitch_28
    const-string/jumbo v0, "onSplashScreenViewCopyFinished"

    return-object v0

    .line 881
    :pswitch_2c
    const-string v0, "clearLaunchParamsForPackages"

    return-object v0

    .line 877
    :pswitch_2f
    const-string/jumbo v0, "setPackageAskScreenCompat"

    return-object v0

    .line 873
    :pswitch_33
    const-string v0, "getPackageAskScreenCompat"

    return-object v0

    .line 869
    :pswitch_36
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    .line 865
    :pswitch_3a
    const-string v0, "getPackageScreenCompatMode"

    return-object v0

    .line 861
    :pswitch_3d
    const-string/jumbo v0, "setVoiceKeepAwake"

    return-object v0

    .line 857
    :pswitch_41
    const-string/jumbo v0, "setActivityController"

    return-object v0

    .line 853
    :pswitch_45
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    .line 849
    :pswitch_49
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    .line 845
    :pswitch_4d
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    .line 841
    :pswitch_51
    const-string/jumbo v0, "setVrThread"

    return-object v0

    .line 837
    :pswitch_55
    const-string v0, "alwaysShowUnsupportedCompileSdkWarning"

    return-object v0

    .line 833
    :pswitch_58
    const-string/jumbo v0, "registerRemoteAnimationsForDisplay"

    return-object v0

    .line 829
    :pswitch_5c
    const-string/jumbo v0, "registerRemoteAnimationForNextActivityStart"

    return-object v0

    .line 825
    :pswitch_60
    const-string/jumbo v0, "updateLockTaskFeatures"

    return-object v0

    .line 821
    :pswitch_64
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 817
    :pswitch_68
    const-string v0, "getLastResumedActivityUserId"

    return-object v0

    .line 813
    :pswitch_6b
    const-string/jumbo v0, "takeTaskSnapshot"

    return-object v0

    .line 809
    :pswitch_6f
    const-string/jumbo v0, "getTaskSnapshot"

    return-object v0

    .line 805
    :pswitch_73
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    .line 801
    :pswitch_76
    const-string v0, "getDeviceConfigurationInfo"

    return-object v0

    .line 797
    :pswitch_79
    const-string/jumbo v0, "requestOpenInBrowserEducation"

    return-object v0

    .line 793
    :pswitch_7d
    const-string/jumbo v0, "supportsLocalVoiceInteraction"

    return-object v0

    .line 789
    :pswitch_81
    const-string/jumbo v0, "getWindowOrganizerController"

    return-object v0

    .line 785
    :pswitch_85
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    .line 781
    :pswitch_89
    const-string/jumbo v0, "keyguardGoingAway"

    return-object v0

    .line 777
    :pswitch_8d
    const-string/jumbo v0, "requestAssistDataForTask"

    return-object v0

    .line 773
    :pswitch_91
    const-string/jumbo v0, "isAssistDataAllowed"

    return-object v0

    .line 769
    :pswitch_95
    const-string/jumbo v0, "requestAutofillData"

    return-object v0

    .line 765
    :pswitch_99
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    .line 761
    :pswitch_9d
    const-string v0, "getAssistContextExtras"

    return-object v0

    .line 757
    :pswitch_a0
    const-string/jumbo v0, "setLockScreenShown"

    return-object v0

    .line 753
    :pswitch_a4
    const-string v0, "getRootTaskInfoOnDisplay"

    return-object v0

    .line 749
    :pswitch_a7
    const-string v0, "getAllRootTaskInfosOnDisplay"

    return-object v0

    .line 745
    :pswitch_aa
    const-string v0, "getRootTaskInfo"

    return-object v0

    .line 741
    :pswitch_ad
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    .line 737
    :pswitch_b0
    const-string/jumbo v0, "removeRootTasksWithActivityTypes"

    return-object v0

    .line 733
    :pswitch_b4
    const-string/jumbo v0, "removeRootTasksInWindowingModes"

    return-object v0

    .line 729
    :pswitch_b8
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    .line 725
    :pswitch_bc
    const-string/jumbo v0, "moveRootTaskToDisplay"

    return-object v0

    .line 721
    :pswitch_c0
    const-string/jumbo v0, "resizeTask"

    return-object v0

    .line 717
    :pswitch_c4
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    .line 713
    :pswitch_c8
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    .line 709
    :pswitch_cc
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    .line 705
    :pswitch_d0
    const-string/jumbo v0, "getTaskDescriptionIcon"

    return-object v0

    .line 701
    :pswitch_d4
    const-string/jumbo v0, "releaseSomeActivities"

    return-object v0

    .line 697
    :pswitch_d8
    const-string v0, "getAppTaskThumbnailSize"

    return-object v0

    .line 693
    :pswitch_db
    const-string v0, "addAppTask"

    return-object v0

    .line 689
    :pswitch_de
    const-string v0, "finishVoiceTask"

    return-object v0

    .line 685
    :pswitch_e1
    const-string/jumbo v0, "stopSystemLockTaskMode"

    return-object v0

    .line 681
    :pswitch_e5
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    .line 677
    :pswitch_e9
    const-string v0, "getAppTasks"

    return-object v0

    .line 673
    :pswitch_ec
    const-string v0, "getLockTaskModeState"

    return-object v0

    .line 669
    :pswitch_ef
    const-string/jumbo v0, "isInLockTaskMode"

    return-object v0

    .line 665
    :pswitch_f3
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    .line 661
    :pswitch_f7
    const-string v0, "focusTopTask"

    return-object v0

    .line 657
    :pswitch_fa
    const-string/jumbo v0, "getTaskBounds"

    return-object v0

    .line 653
    :pswitch_fe
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    .line 649
    :pswitch_101
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    .line 645
    :pswitch_105
    const-string v0, "canBeUniversalResizeable"

    return-object v0

    .line 641
    :pswitch_108
    const-string/jumbo v0, "reportAssistContextExtras"

    return-object v0

    .line 637
    :pswitch_10c
    const-string/jumbo v0, "isTopActivityImmersive"

    return-object v0

    .line 633
    :pswitch_110
    const-string v0, "getRecentTasks"

    return-object v0

    .line 629
    :pswitch_113
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    .line 625
    :pswitch_117
    const-string/jumbo v0, "getTasks"

    return-object v0

    .line 621
    :pswitch_11b
    const-string/jumbo v0, "removeAllVisibleRecentTasks"

    return-object v0

    .line 617
    :pswitch_11f
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 613
    :pswitch_123
    const-string/jumbo v0, "setTaskIsPerceptible"

    return-object v0

    .line 609
    :pswitch_127
    const-string/jumbo v0, "setFocusedTask"

    return-object v0

    .line 605
    :pswitch_12b
    const-string/jumbo v0, "setFrontActivityScreenCompatMode"

    return-object v0

    .line 601
    :pswitch_12f
    const-string v0, "getFrontActivityScreenCompatMode"

    return-object v0

    .line 597
    :pswitch_132
    const-string v0, "getActivityClientController"

    return-object v0

    .line 593
    :pswitch_135
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    .line 589
    :pswitch_139
    const-string/jumbo v0, "isActivityStartAllowedOnDisplay"

    return-object v0

    .line 585
    :pswitch_13d
    const-string/jumbo v0, "preloadRecentsActivity"

    return-object v0

    .line 581
    :pswitch_141
    const-string/jumbo v0, "startActivityAsCaller"

    return-object v0

    .line 577
    :pswitch_145
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    .line 573
    :pswitch_149
    const-string/jumbo v0, "startActivityFromGameSession"

    return-object v0

    .line 569
    :pswitch_14d
    const-string/jumbo v0, "startAssistantActivity"

    return-object v0

    .line 565
    :pswitch_151
    const-string/jumbo v0, "getVoiceInteractorPackageName"

    return-object v0

    .line 561
    :pswitch_155
    const-string/jumbo v0, "startVoiceActivity"

    return-object v0

    .line 557
    :pswitch_159
    const-string/jumbo v0, "startActivityWithConfig"

    return-object v0

    .line 553
    :pswitch_15d
    const-string/jumbo v0, "startActivityAndWait"

    return-object v0

    .line 549
    :pswitch_161
    const-string/jumbo v0, "startActivityIntentSender"

    return-object v0

    .line 545
    :pswitch_165
    const-string/jumbo v0, "startNextMatchingActivity"

    return-object v0

    .line 541
    :pswitch_169
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    .line 537
    :pswitch_16d
    const-string/jumbo v0, "startActivities"

    return-object v0

    .line 533
    :pswitch_171
    const-string/jumbo v0, "startActivity"

    return-object v0

    nop

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_171
        :pswitch_16d
        :pswitch_169
        :pswitch_165
        :pswitch_161
        :pswitch_15d
        :pswitch_159
        :pswitch_155
        :pswitch_151
        :pswitch_14d
        :pswitch_149
        :pswitch_145
        :pswitch_141
        :pswitch_13d
        :pswitch_139
        :pswitch_135
        :pswitch_132
        :pswitch_12f
        :pswitch_12b
        :pswitch_127
        :pswitch_123
        :pswitch_11f
        :pswitch_11b
        :pswitch_117
        :pswitch_113
        :pswitch_110
        :pswitch_10c
        :pswitch_108
        :pswitch_105
        :pswitch_101
        :pswitch_fe
        :pswitch_fa
        :pswitch_f7
        :pswitch_f3
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e5
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a0
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 524
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 4140
    const/16 v0, 0x61

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 932
    invoke-static {p1}, Landroid/app/IActivityTaskManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 936
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v7, "android.app.IActivityTaskManager"

    .line 937
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt v13, v8, :cond_15

    const v1, 0xffffff

    if-gt v13, v1, :cond_15

    .line 938
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    :cond_15
    const v1, 0x5f4e5446

    if-ne v13, v1, :cond_1e

    .line 941
    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 942
    return v8

    .line 944
    :cond_1e
    packed-switch v13, :pswitch_data_ab2

    .line 2139
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2129
    :pswitch_26
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2131
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IScreenCaptureObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IScreenCaptureObserver;

    move-result-object v2

    .line 2132
    .local v2, "_arg1":Landroid/app/IScreenCaptureObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2133
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->unregisterScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V

    .line 2134
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2135
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2118
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/app/IScreenCaptureObserver;
    :pswitch_3f
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2120
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IScreenCaptureObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IScreenCaptureObserver;

    move-result-object v2

    .line 2121
    .restart local v2    # "_arg1":Landroid/app/IScreenCaptureObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2122
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->registerScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V

    .line 2123
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2124
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2109
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/app/IScreenCaptureObserver;
    :pswitch_58
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2110
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2111
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->unregisterBackgroundActivityStartCallback(Landroid/os/IBinder;)V

    .line 2112
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2113
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2099
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_69
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2100
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2101
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerBackgroundActivityStartCallback(Landroid/os/IBinder;)Z

    move-result v2

    .line 2102
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2103
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2104
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2090
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_7e
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 2091
    .local v1, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2092
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerBackGestureDelegate(Landroid/os/RemoteCallback;)V

    .line 2093
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2094
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2078
    .end local v1    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_93
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 2080
    .restart local v1    # "_arg0":Landroid/os/RemoteCallback;
    sget-object v2, Landroid/window/BackAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/BackAnimationAdapter;

    .line 2081
    .local v2, "_arg1":Landroid/window/BackAnimationAdapter;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2082
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;

    move-result-object v3

    .line 2083
    .local v3, "_result":Landroid/window/BackNavigationInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2084
    invoke-virtual {v15, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2085
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2069
    .end local v1    # "_arg0":Landroid/os/RemoteCallback;
    .end local v2    # "_arg1":Landroid/window/BackAnimationAdapter;
    .end local v3    # "_result":Landroid/window/BackNavigationInfo;
    :pswitch_b4
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2070
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2071
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    .line 2072
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2073
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2060
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_c9
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2061
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2062
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->detachNavigationBarFromApp(Landroid/os/IBinder;)V

    .line 2063
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2064
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2051
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_da
    sget-object v1, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureUiState;

    .line 2052
    .local v1, "_arg0":Landroid/app/PictureInPictureUiState;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2053
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 2054
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2055
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2040
    .end local v1    # "_arg0":Landroid/app/PictureInPictureUiState;
    :pswitch_ef
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2042
    .local v1, "_arg0":I
    sget-object v2, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 2043
    .local v2, "_arg1":Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2044
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    .line 2045
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2046
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2031
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    :pswitch_108
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2032
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2033
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->clearLaunchParamsForPackages(Ljava/util/List;)V

    .line 2034
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2035
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2020
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_119
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2022
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2023
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2024
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2025
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2026
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 2010
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_12e
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2011
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2012
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v2

    .line 2013
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2014
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2015
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1999
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_143
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2001
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2002
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2003
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 2004
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1989
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_158
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1990
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1991
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v2

    .line 1992
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1994
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1978
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_16d
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v1

    .line 1980
    .local v1, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1981
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1982
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 1983
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1984
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1967
    .end local v1    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    .end local v2    # "_arg1":Z
    :pswitch_186
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v1

    .line 1969
    .local v1, "_arg0":Landroid/app/IActivityController;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1970
    .restart local v2    # "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1971
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1972
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1973
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1960
    .end local v1    # "_arg0":Landroid/app/IActivityController;
    .end local v2    # "_arg1":Z
    :pswitch_19f
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->resumeAppSwitches()V

    .line 1961
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1954
    :pswitch_1a9
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->stopAppSwitches()V

    .line 1955
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1956
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1946
    :pswitch_1b3
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1947
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1948
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPersistentVrThread(I)V

    .line 1949
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1937
    .end local v1    # "_arg0":I
    :pswitch_1c4
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1938
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1939
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setVrThread(I)V

    .line 1940
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1941
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1928
    .end local v1    # "_arg0":I
    :pswitch_1d5
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1929
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1930
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    .line 1931
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1917
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_1ea
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1919
    .local v1, "_arg0":I
    sget-object v2, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationDefinition;

    .line 1920
    .local v2, "_arg1":Landroid/view/RemoteAnimationDefinition;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1921
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    .line 1922
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1904
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :pswitch_203
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1906
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    .line 1908
    .local v2, "_arg1":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1909
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1910
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    .line 1911
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1912
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1893
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :pswitch_220
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1895
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1896
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1897
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskFeatures(II)V

    .line 1898
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1899
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1883
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_235
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 1884
    .local v1, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1885
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v2

    .line 1886
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1887
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1888
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1875
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    .end local v2    # "_result":Z
    :pswitch_24e
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getLastResumedActivityUserId()I

    move-result v1

    .line 1876
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1877
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1864
    .end local v1    # "_result":I
    :pswitch_25c
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1866
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1867
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1868
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v3

    .line 1869
    .local v3, "_result":Landroid/window/TaskSnapshot;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1870
    invoke-virtual {v15, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1871
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1852
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Landroid/window/TaskSnapshot;
    :pswitch_275
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1854
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1855
    .restart local v2    # "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1856
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v3

    .line 1857
    .restart local v3    # "_result":Landroid/window/TaskSnapshot;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    invoke-virtual {v15, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1859
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1843
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Landroid/window/TaskSnapshot;
    :pswitch_28e
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1844
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1845
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->cancelTaskWindowTransition(I)V

    .line 1846
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1835
    .end local v1    # "_arg0":I
    :pswitch_29f
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 1836
    .local v1, "_result":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1837
    invoke-virtual {v15, v1, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1838
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1827
    .end local v1    # "_result":Landroid/content/pm/ConfigurationInfo;
    :pswitch_2ad
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1828
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1829
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->requestOpenInBrowserEducation(Landroid/os/IBinder;)V

    .line 1830
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1831
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1819
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_2be
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v1

    .line 1820
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1822
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1812
    .end local v1    # "_result":Z
    :pswitch_2cc
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v1

    .line 1813
    .local v1, "_result":Landroid/window/IWindowOrganizerController;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1814
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1815
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1804
    .end local v1    # "_result":Landroid/window/IWindowOrganizerController;
    :pswitch_2da
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1805
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1806
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 1807
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1795
    .end local v1    # "_arg0":Z
    :pswitch_2eb
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1796
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1797
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->keyguardGoingAway(I)V

    .line 1798
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1777
    .end local v1    # "_arg0":I
    :pswitch_2fc
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v1

    .line 1779
    .local v1, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1781
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1783
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1785
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1786
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1787
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1788
    .local v6, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1790
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1769
    .end local v1    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    :pswitch_325
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->isAssistDataAllowed()Z

    move-result v1

    .line 1770
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1771
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1772
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1754
    .end local v1    # "_result":Z
    :pswitch_333
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v1

    .line 1756
    .local v1, "_arg0":Landroid/app/IAssistDataReceiver;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1758
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1760
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1761
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1762
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v5

    .line 1763
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1764
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1765
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1734
    .end local v1    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_35c
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1736
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v2

    .line 1738
    .local v2, "_arg1":Landroid/app/IAssistDataReceiver;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1740
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1742
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1744
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1745
    .local v6, "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1746
    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v9

    .line 1747
    .local v9, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1749
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1724
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/IAssistDataReceiver;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v9    # "_result":Z
    :pswitch_38d
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1725
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1726
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v2

    .line 1727
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    invoke-virtual {v15, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1729
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1713
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_3a2
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1715
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1716
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1717
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setLockScreenShown(ZZ)V

    .line 1718
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1699
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :pswitch_3b7
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1701
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1703
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1704
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1705
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v4

    .line 1706
    .local v4, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1707
    invoke-virtual {v15, v4, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1708
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1689
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_3d4
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1690
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1691
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object v2

    .line 1692
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1693
    invoke-virtual {v15, v2, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1694
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1677
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_3e9
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1679
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1680
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1681
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    .line 1682
    .local v3, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    invoke-virtual {v15, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1684
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1669
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_402
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v1

    .line 1670
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    invoke-virtual {v15, v1, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1672
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1661
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_410
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1662
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1663
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksWithActivityTypes([I)V

    .line 1664
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1652
    .end local v1    # "_arg0":[I
    :pswitch_421
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1653
    .restart local v1    # "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1654
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksInWindowingModes([I)V

    .line 1655
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1639
    .end local v1    # "_arg0":[I
    :pswitch_432
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1641
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1643
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1644
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1645
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToRootTask(IIZ)V

    .line 1646
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1628
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_44b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1630
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1631
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1632
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->moveRootTaskToDisplay(II)V

    .line 1633
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1634
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1615
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_460
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1617
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1619
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1620
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1621
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 1622
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1623
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1604
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":I
    :pswitch_47d
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1606
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1607
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1608
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setTaskResizeable(II)V

    .line 1609
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1595
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_492
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 1596
    .local v1, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1597
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1598
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1586
    .end local v1    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_4a7
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 1587
    .restart local v1    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1588
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1589
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1574
    .end local v1    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_4bc
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1576
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1577
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1578
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1579
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    invoke-virtual {v15, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1581
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1566
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :pswitch_4d5
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1567
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1568
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 1569
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1558
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_4e7
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v1

    .line 1559
    .local v1, "_result":Landroid/graphics/Point;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    invoke-virtual {v15, v1, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1561
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1543
    .end local v1    # "_result":Landroid/graphics/Point;
    :pswitch_4f5
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1545
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1547
    .local v2, "_arg1":Landroid/content/Intent;
    sget-object v3, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$TaskDescription;

    .line 1549
    .local v3, "_arg2":Landroid/app/ActivityManager$TaskDescription;
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1550
    .local v4, "_arg3":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1551
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v5

    .line 1552
    .local v5, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1534
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Landroid/app/ActivityManager$TaskDescription;
    .end local v4    # "_arg3":Landroid/graphics/Bitmap;
    .end local v5    # "_result":I
    :pswitch_522
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v1

    .line 1535
    .local v1, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1536
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 1537
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1527
    .end local v1    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_537
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->stopSystemLockTaskMode()V

    .line 1528
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1519
    :pswitch_541
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1520
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1521
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startSystemLockTaskMode(I)V

    .line 1522
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1509
    .end local v1    # "_arg0":I
    :pswitch_552
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1510
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1511
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1512
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 1514
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1501
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_567
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getLockTaskModeState()I

    move-result v1

    .line 1502
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1503
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1504
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1494
    .end local v1    # "_result":I
    :pswitch_575
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->isInLockTaskMode()Z

    move-result v1

    .line 1495
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1497
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1484
    .end local v1    # "_result":Z
    :pswitch_583
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1486
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1487
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1488
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1475
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_598
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1476
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1477
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->focusTopTask(I)V

    .line 1478
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1465
    .end local v1    # "_arg0":I
    :pswitch_5a9
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1466
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1467
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 1468
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1469
    invoke-virtual {v15, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1470
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1457
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/graphics/Rect;
    :pswitch_5be
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    .line 1458
    .local v1, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    invoke-virtual {v15, v1, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1460
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1449
    .end local v1    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_5cc
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1450
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1451
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setFocusedRootTask(I)V

    .line 1452
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1439
    .end local v1    # "_arg0":I
    :pswitch_5dd
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1440
    .local v1, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1441
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 1442
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1444
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1422
    .end local v1    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "_result":Z
    :pswitch_5f6
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1424
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1426
    .local v2, "_arg1":Landroid/os/Bundle;
    sget-object v3, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistStructure;

    .line 1428
    .local v3, "_arg2":Landroid/app/assist/AssistStructure;
    sget-object v4, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/assist/AssistContent;

    .line 1430
    .local v4, "_arg3":Landroid/app/assist/AssistContent;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1431
    .local v5, "_arg4":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1432
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 1433
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1414
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/app/assist/AssistStructure;
    .end local v4    # "_arg3":Landroid/app/assist/AssistContent;
    .end local v5    # "_arg4":Landroid/net/Uri;
    :pswitch_627
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityImmersive()Z

    move-result v1

    .line 1415
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1417
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1401
    .end local v1    # "_result":Z
    :pswitch_635
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1403
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1405
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1406
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 1408
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    invoke-virtual {v15, v4, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1410
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1384
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :pswitch_652
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1386
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1388
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1390
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1392
    .local v4, "_arg3":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 1393
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 1395
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1368
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_67b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1370
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1372
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1374
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1375
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1376
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->getTasks(IZZI)Ljava/util/List;

    move-result-object v5

    .line 1377
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    invoke-virtual {v15, v5, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1379
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1361
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_69c
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->removeAllVisibleRecentTasks()V

    .line 1362
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1352
    :pswitch_6a6
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1353
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->removeTask(I)Z

    move-result v2

    .line 1355
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1357
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1340
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_6bb
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1342
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1343
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setTaskIsPerceptible(IZ)Z

    move-result v3

    .line 1345
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1347
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1331
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_6d4
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1332
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1333
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setFocusedTask(I)V

    .line 1334
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1322
    .end local v1    # "_arg0":I
    :pswitch_6e5
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1323
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1324
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setFrontActivityScreenCompatMode(I)V

    .line 1325
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1314
    .end local v1    # "_arg0":I
    :pswitch_6f6
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v1

    .line 1315
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1317
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1307
    .end local v1    # "_result":I
    :pswitch_704
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v1

    .line 1308
    .local v1, "_result":Landroid/app/IActivityClientController;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1310
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1301
    .end local v1    # "_result":Landroid/app/IActivityClientController;
    :pswitch_712
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->unhandledBack()V

    .line 1302
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1286
    :pswitch_71c
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1288
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1290
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1292
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1293
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v5

    .line 1295
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1297
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1277
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_741
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1278
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1279
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->preloadRecentsActivity(Landroid/content/Intent;)V

    .line 1280
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    move-object/from16 v16, v7

    goto/16 :goto_aaf

    .line 1245
    .end local v1    # "_arg0":Landroid/content/Intent;
    :pswitch_756
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1247
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1249
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1251
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1253
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1255
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1257
    .local v6, "_arg5":Ljava/lang/String;
    move-object v9, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .local v9, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1259
    .local v7, "_arg6":I
    move v10, v8

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1261
    .local v8, "_arg7":I
    sget-object v11, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ProfilerInfo;

    .line 1263
    .local v11, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v12, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 1265
    .local v12, "_arg9":Landroid/os/Bundle;
    move-object/from16 v16, v9

    move-object v9, v11

    .end local v11    # "_arg8":Landroid/app/ProfilerInfo;
    .local v9, "_arg8":Landroid/app/ProfilerInfo;
    .local v16, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 1267
    .local v11, "_arg10":Z
    move/from16 v17, v10

    move-object v10, v12

    .end local v12    # "_arg9":Landroid/os/Bundle;
    .local v10, "_arg9":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1268
    .local v12, "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1269
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v13

    .line 1270
    .local v13, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    goto/16 :goto_aaf

    .line 1233
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/app/ProfilerInfo;
    .end local v10    # "_arg9":Landroid/os/Bundle;
    .end local v11    # "_arg10":Z
    .end local v12    # "_arg11":I
    .end local v13    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_7ad
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1235
    .local v1, "_arg0":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1236
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v3

    .line 1238
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    goto/16 :goto_aaf

    .line 1209
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_7ca
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1211
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1213
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1215
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1217
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1219
    .local v5, "_arg4":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 1221
    .local v6, "_arg5":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1223
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1224
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1225
    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result v9

    .line 1226
    .local v9, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    goto/16 :goto_aaf

    .line 1185
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/content/Intent;
    .end local v8    # "_arg7":I
    .end local v9    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_803
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1189
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1191
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1193
    .restart local v4    # "_arg3":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    .line 1195
    .local v5, "_arg4":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1197
    .local v6, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 1199
    .local v7, "_arg6":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1200
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1201
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v9

    .line 1202
    .restart local v9    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    goto/16 :goto_aaf

    .line 1175
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/Intent;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_840
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1176
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1177
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    .line 1178
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1180
    goto/16 :goto_aaf

    .line 1143
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Ljava/lang/String;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_855
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1145
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1147
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1149
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1151
    .restart local v4    # "_arg3":I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 1153
    .restart local v5    # "_arg4":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1155
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v7

    .line 1157
    .local v7, "_arg6":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v8

    .line 1159
    .local v8, "_arg7":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1161
    .local v9, "_arg8":I
    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 1163
    .local v10, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 1165
    .local v11, "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1166
    .restart local v12    # "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1167
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v13

    .line 1168
    .restart local v13    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1170
    goto/16 :goto_aaf

    .line 1111
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/Intent;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg7":Lcom/android/internal/app/IVoiceInteractor;
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_arg11":I
    .end local v13    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_8aa
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1113
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1115
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1117
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 1119
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1121
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1123
    .local v6, "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1125
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1127
    .local v8, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1129
    .restart local v9    # "_arg8":I
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/res/Configuration;

    .line 1131
    .local v10, "_arg9":Landroid/content/res/Configuration;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 1133
    .restart local v11    # "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1134
    .restart local v12    # "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v13

    .line 1136
    .restart local v13    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    goto/16 :goto_aaf

    .line 1079
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":Landroid/content/res/Configuration;
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_arg11":I
    .end local v13    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_900
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1081
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1083
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1085
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 1087
    .restart local v4    # "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1089
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1091
    .restart local v6    # "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1093
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1095
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1097
    .restart local v9    # "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 1099
    .local v10, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 1101
    .restart local v11    # "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1102
    .restart local v12    # "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v13

    .line 1104
    .local v13, "_result":Landroid/app/WaitResult;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    const/4 v0, 0x1

    invoke-virtual {v15, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1106
    goto/16 :goto_aaf

    .line 1049
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_arg11":I
    .end local v13    # "_result":Landroid/app/WaitResult;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_957
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1051
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 1053
    .local v2, "_arg1":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1055
    .local v3, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 1057
    .restart local v4    # "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1059
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1061
    .restart local v6    # "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1063
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1065
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1067
    .restart local v9    # "_arg8":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1069
    .local v10, "_arg9":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 1070
    .restart local v11    # "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v12

    .line 1072
    .local v12, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    goto/16 :goto_aaf

    .line 1035
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/IIntentSender;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_9a8
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1037
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1039
    .local v2, "_arg1":Landroid/content/Intent;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1040
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v4

    .line 1042
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1044
    goto/16 :goto_aaf

    .line 1003
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    :pswitch_9cd
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1005
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1009
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 1011
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1013
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1015
    .restart local v6    # "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1017
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1019
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1021
    .restart local v9    # "_arg8":I
    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 1023
    .local v10, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 1025
    .restart local v11    # "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1026
    .local v12, "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v13

    .line 1028
    .local v13, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    goto/16 :goto_aaf

    .line 979
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_arg11":I
    .end local v13    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_a1e
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 981
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 983
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 985
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/content/Intent;

    .line 987
    .local v4, "_arg3":[Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 989
    .local v5, "_arg4":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 991
    .restart local v6    # "_arg5":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 993
    .local v7, "_arg6":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 994
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v9

    .line 996
    .local v9, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    goto :goto_aaf

    .line 949
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Landroid/content/Intent;
    .end local v5    # "_arg4":[Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v8    # "_arg7":I
    .end local v9    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    :pswitch_a5e
    move-object/from16 v16, v7

    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 951
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 953
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 955
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 957
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 959
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 961
    .restart local v6    # "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 963
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 965
    .restart local v8    # "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 967
    .local v9, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 969
    .restart local v10    # "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 970
    .restart local v11    # "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v12

    .line 972
    .local v12, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    nop

    .line 2142
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_result":I
    :goto_aaf
    const/16 v17, 0x1

    return v17

    :pswitch_data_ab2
    .packed-switch 0x1
        :pswitch_a5e
        :pswitch_a1e
        :pswitch_9cd
        :pswitch_9a8
        :pswitch_957
        :pswitch_900
        :pswitch_8aa
        :pswitch_855
        :pswitch_840
        :pswitch_803
        :pswitch_7ca
        :pswitch_7ad
        :pswitch_756
        :pswitch_741
        :pswitch_71c
        :pswitch_712
        :pswitch_704
        :pswitch_6f6
        :pswitch_6e5
        :pswitch_6d4
        :pswitch_6bb
        :pswitch_6a6
        :pswitch_69c
        :pswitch_67b
        :pswitch_652
        :pswitch_635
        :pswitch_627
        :pswitch_5f6
        :pswitch_5dd
        :pswitch_5cc
        :pswitch_5be
        :pswitch_5a9
        :pswitch_598
        :pswitch_583
        :pswitch_575
        :pswitch_567
        :pswitch_552
        :pswitch_541
        :pswitch_537
        :pswitch_522
        :pswitch_4f5
        :pswitch_4e7
        :pswitch_4d5
        :pswitch_4bc
        :pswitch_4a7
        :pswitch_492
        :pswitch_47d
        :pswitch_460
        :pswitch_44b
        :pswitch_432
        :pswitch_421
        :pswitch_410
        :pswitch_402
        :pswitch_3e9
        :pswitch_3d4
        :pswitch_3b7
        :pswitch_3a2
        :pswitch_38d
        :pswitch_35c
        :pswitch_333
        :pswitch_325
        :pswitch_2fc
        :pswitch_2eb
        :pswitch_2da
        :pswitch_2cc
        :pswitch_2be
        :pswitch_2ad
        :pswitch_29f
        :pswitch_28e
        :pswitch_275
        :pswitch_25c
        :pswitch_24e
        :pswitch_235
        :pswitch_220
        :pswitch_203
        :pswitch_1ea
        :pswitch_1d5
        :pswitch_1c4
        :pswitch_1b3
        :pswitch_1a9
        :pswitch_19f
        :pswitch_186
        :pswitch_16d
        :pswitch_158
        :pswitch_143
        :pswitch_12e
        :pswitch_119
        :pswitch_108
        :pswitch_ef
        :pswitch_da
        :pswitch_c9
        :pswitch_b4
        :pswitch_93
        :pswitch_7e
        :pswitch_69
        :pswitch_58
        :pswitch_3f
        :pswitch_26
    .end packed-switch
.end method
