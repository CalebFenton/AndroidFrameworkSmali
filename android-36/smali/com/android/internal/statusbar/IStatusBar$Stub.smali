.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final blacklist TRANSACTION_abortTransient:I = 0x39

.field static final greylist-max-o TRANSACTION_addQsTile:I = 0x25

.field static final blacklist TRANSACTION_addQsTileToFrontOrEnd:I = 0x26

.field static final greylist-max-o TRANSACTION_animateCollapsePanels:I = 0x7

.field static final greylist-max-o TRANSACTION_animateExpandNotificationsPanel:I = 0x5

.field static final greylist-max-o TRANSACTION_animateExpandSettingsPanel:I = 0x6

.field static final greylist-max-o TRANSACTION_appTransitionCancelled:I = 0x19

.field static final greylist-max-o TRANSACTION_appTransitionFinished:I = 0x1b

.field static final greylist-max-o TRANSACTION_appTransitionPending:I = 0x18

.field static final greylist-max-o TRANSACTION_appTransitionStarting:I = 0x1a

.field static final greylist-max-o TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x47

.field static final greylist-max-o TRANSACTION_clickQsTile:I = 0x29

.field static final blacklist TRANSACTION_confirmImmersivePrompt:I = 0x14

.field static final greylist-max-o TRANSACTION_disable:I = 0x3

.field static final blacklist TRANSACTION_disableForAllDisplays:I = 0x4

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x3b

.field static final greylist-max-o TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x16

.field static final blacklist TRANSACTION_dumpProto:I = 0x4c

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x2a

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x32

.field static final greylist-max-o TRANSACTION_hideRecentApps:I = 0xd

.field static final blacklist TRANSACTION_hideToast:I = 0x3d

.field static final blacklist TRANSACTION_immersiveModeChanged:I = 0x15

.field static final blacklist TRANSACTION_moveFocusedTaskToDesktop:I = 0x52

.field static final blacklist TRANSACTION_moveFocusedTaskToFullscreen:I = 0x4e

.field static final blacklist TRANSACTION_moveFocusedTaskToStageSplit:I = 0x4f

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x2f

.field static final blacklist TRANSACTION_onBiometricError:I = 0x31

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x30

.field static final greylist-max-o TRANSACTION_onCameraLaunchGestureDetected:I = 0x1e

.field static final blacklist TRANSACTION_onDisplayAddSystemDecorations:I = 0x35

.field static final blacklist TRANSACTION_onDisplayRemoveSystemDecorations:I = 0x36

.field static final blacklist TRANSACTION_onEmergencyActionLaunchGestureDetected:I = 0x20

.field static final greylist-max-o TRANSACTION_onProposedRotationChanged:I = 0x23

.field static final blacklist TRANSACTION_onSystemBarAttributesChanged:I = 0x37

.field static final blacklist TRANSACTION_onWalletLaunchGestureDetected:I = 0x1f

.field static final blacklist TRANSACTION_passThroughShellCommand:I = 0x42

.field static final greylist-max-o TRANSACTION_preloadRecentApps:I = 0x11

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x4a

.field static final greylist-max-o TRANSACTION_remQsTile:I = 0x27

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0x2

.field static final blacklist TRANSACTION_requestAddTile:I = 0x46

.field static final blacklist TRANSACTION_requestMagnificationConnection:I = 0x41

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x45

.field static final blacklist TRANSACTION_runGcForTest:I = 0x44

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x33

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x1

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0xa

.field static final blacklist TRANSACTION_setNavigationBarLumaSamplingEnabled:I = 0x43

.field static final blacklist TRANSACTION_setQsTiles:I = 0x28

.field static final blacklist TRANSACTION_setSplitscreenFocus:I = 0x50

.field static final greylist-max-o TRANSACTION_setTopAppHidesStatusBar:I = 0x24

.field static final blacklist TRANSACTION_setUdfpsRefreshRateCallback:I = 0x34

.field static final greylist-max-o TRANSACTION_setWindowState:I = 0xb

.field static final greylist-max-o TRANSACTION_showAssistDisclosure:I = 0x1c

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x2e

.field static final greylist-max-o TRANSACTION_showGlobalActionsMenu:I = 0x22

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x3a

.field static final blacklist TRANSACTION_showMediaOutputSwitcher:I = 0x51

.field static final greylist-max-o TRANSACTION_showPictureInPictureMenu:I = 0x21

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x2b

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x2c

.field static final blacklist TRANSACTION_showRearDisplayDialog:I = 0x4d

.field static final greylist-max-o TRANSACTION_showRecentApps:I = 0xc

.field static final greylist-max-o TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final greylist-max-o TRANSACTION_showShutdownUi:I = 0x2d

.field static final blacklist TRANSACTION_showToast:I = 0x3c

.field static final blacklist TRANSACTION_showTransient:I = 0x38

.field static final greylist-max-o TRANSACTION_showWirelessChargingAnimation:I = 0x9

.field static final greylist-max-o TRANSACTION_startAssist:I = 0x1d

.field static final blacklist TRANSACTION_startTracing:I = 0x3e

.field static final blacklist TRANSACTION_stopTracing:I = 0x3f

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x40

.field static final greylist-max-o TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x17

.field static final blacklist TRANSACTION_toggleNotificationsPanel:I = 0x8

.field static final greylist-max-o TRANSACTION_toggleRecentApps:I = 0xe

.field static final greylist-max-o TRANSACTION_toggleSplitScreen:I = 0x10

.field static final blacklist TRANSACTION_toggleTaskbar:I = 0xf

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x4b

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x49

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x48


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 447
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 448
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 456
    if-nez p0, :cond_4

    .line 457
    const/4 v0, 0x0

    return-object v0

    .line 459
    :cond_4
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 460
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_14

    .line 461
    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    return-object v1

    .line 463
    :cond_14
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 472
    packed-switch p0, :pswitch_data_128

    .line 804
    const/4 v0, 0x0

    return-object v0

    .line 800
    :pswitch_5
    const-string v0, "moveFocusedTaskToDesktop"

    return-object v0

    .line 796
    :pswitch_8
    const-string/jumbo v0, "showMediaOutputSwitcher"

    return-object v0

    .line 792
    :pswitch_c
    const-string/jumbo v0, "setSplitscreenFocus"

    return-object v0

    .line 788
    :pswitch_10
    const-string v0, "moveFocusedTaskToStageSplit"

    return-object v0

    .line 784
    :pswitch_13
    const-string v0, "moveFocusedTaskToFullscreen"

    return-object v0

    .line 780
    :pswitch_16
    const-string/jumbo v0, "showRearDisplayDialog"

    return-object v0

    .line 776
    :pswitch_1a
    const-string v0, "dumpProto"

    return-object v0

    .line 772
    :pswitch_1d
    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    return-object v0

    .line 768
    :pswitch_21
    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    return-object v0

    .line 764
    :pswitch_25
    const-string/jumbo v0, "updateMediaTapToTransferReceiverDisplay"

    return-object v0

    .line 760
    :pswitch_29
    const-string/jumbo v0, "updateMediaTapToTransferSenderDisplay"

    return-object v0

    .line 756
    :pswitch_2d
    const-string v0, "cancelRequestAddTile"

    return-object v0

    .line 752
    :pswitch_30
    const-string/jumbo v0, "requestAddTile"

    return-object v0

    .line 748
    :pswitch_34
    const-string/jumbo v0, "requestTileServiceListeningState"

    return-object v0

    .line 744
    :pswitch_38
    const-string/jumbo v0, "runGcForTest"

    return-object v0

    .line 740
    :pswitch_3c
    const-string/jumbo v0, "setNavigationBarLumaSamplingEnabled"

    return-object v0

    .line 736
    :pswitch_40
    const-string/jumbo v0, "passThroughShellCommand"

    return-object v0

    .line 732
    :pswitch_44
    const-string/jumbo v0, "requestMagnificationConnection"

    return-object v0

    .line 728
    :pswitch_48
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    .line 724
    :pswitch_4c
    const-string/jumbo v0, "stopTracing"

    return-object v0

    .line 720
    :pswitch_50
    const-string/jumbo v0, "startTracing"

    return-object v0

    .line 716
    :pswitch_54
    const-string v0, "hideToast"

    return-object v0

    .line 712
    :pswitch_57
    const-string/jumbo v0, "showToast"

    return-object v0

    .line 708
    :pswitch_5b
    const-string v0, "dismissInattentiveSleepWarning"

    return-object v0

    .line 704
    :pswitch_5e
    const-string/jumbo v0, "showInattentiveSleepWarning"

    return-object v0

    .line 700
    :pswitch_62
    const-string v0, "abortTransient"

    return-object v0

    .line 696
    :pswitch_65
    const-string/jumbo v0, "showTransient"

    return-object v0

    .line 692
    :pswitch_69
    const-string v0, "onSystemBarAttributesChanged"

    return-object v0

    .line 688
    :pswitch_6c
    const-string v0, "onDisplayRemoveSystemDecorations"

    return-object v0

    .line 684
    :pswitch_6f
    const-string v0, "onDisplayAddSystemDecorations"

    return-object v0

    .line 680
    :pswitch_72
    const-string/jumbo v0, "setUdfpsRefreshRateCallback"

    return-object v0

    .line 676
    :pswitch_76
    const-string/jumbo v0, "setBiometicContextListener"

    return-object v0

    .line 672
    :pswitch_7a
    const-string v0, "hideAuthenticationDialog"

    return-object v0

    .line 668
    :pswitch_7d
    const-string v0, "onBiometricError"

    return-object v0

    .line 664
    :pswitch_80
    const-string v0, "onBiometricHelp"

    return-object v0

    .line 660
    :pswitch_83
    const-string v0, "onBiometricAuthenticated"

    return-object v0

    .line 656
    :pswitch_86
    const-string/jumbo v0, "showAuthenticationDialog"

    return-object v0

    .line 652
    :pswitch_8a
    const-string/jumbo v0, "showShutdownUi"

    return-object v0

    .line 648
    :pswitch_8e
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    .line 644
    :pswitch_92
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    .line 640
    :pswitch_96
    const-string v0, "handleSystemKey"

    return-object v0

    .line 636
    :pswitch_99
    const-string v0, "clickQsTile"

    return-object v0

    .line 632
    :pswitch_9c
    const-string/jumbo v0, "setQsTiles"

    return-object v0

    .line 628
    :pswitch_a0
    const-string/jumbo v0, "remQsTile"

    return-object v0

    .line 624
    :pswitch_a4
    const-string v0, "addQsTileToFrontOrEnd"

    return-object v0

    .line 620
    :pswitch_a7
    const-string v0, "addQsTile"

    return-object v0

    .line 616
    :pswitch_aa
    const-string/jumbo v0, "setTopAppHidesStatusBar"

    return-object v0

    .line 612
    :pswitch_ae
    const-string v0, "onProposedRotationChanged"

    return-object v0

    .line 608
    :pswitch_b1
    const-string/jumbo v0, "showGlobalActionsMenu"

    return-object v0

    .line 604
    :pswitch_b5
    const-string/jumbo v0, "showPictureInPictureMenu"

    return-object v0

    .line 600
    :pswitch_b9
    const-string v0, "onEmergencyActionLaunchGestureDetected"

    return-object v0

    .line 596
    :pswitch_bc
    const-string v0, "onWalletLaunchGestureDetected"

    return-object v0

    .line 592
    :pswitch_bf
    const-string v0, "onCameraLaunchGestureDetected"

    return-object v0

    .line 588
    :pswitch_c2
    const-string/jumbo v0, "startAssist"

    return-object v0

    .line 584
    :pswitch_c6
    const-string/jumbo v0, "showAssistDisclosure"

    return-object v0

    .line 580
    :pswitch_ca
    const-string v0, "appTransitionFinished"

    return-object v0

    .line 576
    :pswitch_cd
    const-string v0, "appTransitionStarting"

    return-object v0

    .line 572
    :pswitch_d0
    const-string v0, "appTransitionCancelled"

    return-object v0

    .line 568
    :pswitch_d3
    const-string v0, "appTransitionPending"

    return-object v0

    .line 564
    :pswitch_d6
    const-string/jumbo v0, "toggleKeyboardShortcutsMenu"

    return-object v0

    .line 560
    :pswitch_da
    const-string v0, "dismissKeyboardShortcutsMenu"

    return-object v0

    .line 556
    :pswitch_dd
    const-string v0, "immersiveModeChanged"

    return-object v0

    .line 552
    :pswitch_e0
    const-string v0, "confirmImmersivePrompt"

    return-object v0

    .line 548
    :pswitch_e3
    const-string/jumbo v0, "showScreenPinningRequest"

    return-object v0

    .line 544
    :pswitch_e7
    const-string v0, "cancelPreloadRecentApps"

    return-object v0

    .line 540
    :pswitch_ea
    const-string/jumbo v0, "preloadRecentApps"

    return-object v0

    .line 536
    :pswitch_ee
    const-string/jumbo v0, "toggleSplitScreen"

    return-object v0

    .line 532
    :pswitch_f2
    const-string/jumbo v0, "toggleTaskbar"

    return-object v0

    .line 528
    :pswitch_f6
    const-string/jumbo v0, "toggleRecentApps"

    return-object v0

    .line 524
    :pswitch_fa
    const-string v0, "hideRecentApps"

    return-object v0

    .line 520
    :pswitch_fd
    const-string/jumbo v0, "showRecentApps"

    return-object v0

    .line 516
    :pswitch_101
    const-string/jumbo v0, "setWindowState"

    return-object v0

    .line 512
    :pswitch_105
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    .line 508
    :pswitch_109
    const-string/jumbo v0, "showWirelessChargingAnimation"

    return-object v0

    .line 504
    :pswitch_10d
    const-string/jumbo v0, "toggleNotificationsPanel"

    return-object v0

    .line 500
    :pswitch_111
    const-string v0, "animateCollapsePanels"

    return-object v0

    .line 496
    :pswitch_114
    const-string v0, "animateExpandSettingsPanel"

    return-object v0

    .line 492
    :pswitch_117
    const-string v0, "animateExpandNotificationsPanel"

    return-object v0

    .line 488
    :pswitch_11a
    const-string v0, "disableForAllDisplays"

    return-object v0

    .line 484
    :pswitch_11d
    const-string v0, "disable"

    return-object v0

    .line 480
    :pswitch_120
    const-string/jumbo v0, "removeIcon"

    return-object v0

    .line 476
    :pswitch_124
    const-string/jumbo v0, "setIcon"

    return-object v0

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_124
        :pswitch_120
        :pswitch_11d
        :pswitch_11a
        :pswitch_117
        :pswitch_114
        :pswitch_111
        :pswitch_10d
        :pswitch_109
        :pswitch_105
        :pswitch_101
        :pswitch_fd
        :pswitch_fa
        :pswitch_f6
        :pswitch_f2
        :pswitch_ee
        :pswitch_ea
        :pswitch_e7
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d6
        :pswitch_d3
        :pswitch_d0
        :pswitch_cd
        :pswitch_ca
        :pswitch_c6
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ae
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a0
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_65
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
        :pswitch_57
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 467
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2873
    const/16 v0, 0x51

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 811
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    const-string v14, "com.android.internal.statusbar.IStatusBar"

    .line 816
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v12, v15, :cond_13

    const v1, 0xffffff

    if-gt v12, v1, :cond_13

    .line 817
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    :cond_13
    const v1, 0x5f4e5446

    if-ne v12, v1, :cond_1e

    .line 820
    move-object/from16 v9, p3

    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 821
    return v15

    .line 823
    :cond_1e
    move-object/from16 v9, p3

    packed-switch v12, :pswitch_data_4dc

    .line 1543
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1536
    :pswitch_28
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1537
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1538
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToDesktop(I)V

    .line 1539
    goto/16 :goto_4da

    .line 1526
    .end local v1    # "_arg0":I
    :pswitch_34
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1528
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1529
    .local v2, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1530
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1531
    goto/16 :goto_4da

    .line 1518
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    :pswitch_48
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1519
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1520
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSplitscreenFocus(Z)V

    .line 1521
    goto/16 :goto_4da

    .line 1508
    .end local v1    # "_arg0":Z
    :pswitch_54
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1510
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1511
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1512
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToStageSplit(IZ)V

    .line 1513
    goto/16 :goto_4da

    .line 1500
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_64
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1501
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1502
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToFullscreen(I)V

    .line 1503
    goto/16 :goto_4da

    .line 1492
    .end local v1    # "_arg0":I
    :pswitch_70
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1493
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1494
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRearDisplayDialog(I)V

    .line 1495
    goto/16 :goto_4da

    .line 1482
    .end local v1    # "_arg0":I
    :pswitch_7c
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1484
    .local v1, "_arg0":[Ljava/lang/String;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1485
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1486
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1487
    goto/16 :goto_4da

    .line 1474
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_90
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1475
    .local v1, "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1476
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1477
    goto/16 :goto_4da

    .line 1466
    .end local v1    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_a0
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1467
    .restart local v1    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1468
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1469
    goto/16 :goto_4da

    .line 1452
    .end local v1    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_b0
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1454
    .local v1, "_arg0":I
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 1456
    .local v2, "_arg1":Landroid/media/MediaRoute2Info;
    sget-object v3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    .line 1458
    .local v3, "_arg2":Landroid/graphics/drawable/Icon;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1459
    .local v4, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1460
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1461
    goto/16 :goto_4da

    .line 1440
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v3    # "_arg2":Landroid/graphics/drawable/Icon;
    .end local v4    # "_arg3":Ljava/lang/CharSequence;
    :pswitch_d4
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1442
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 1444
    .restart local v2    # "_arg1":Landroid/media/MediaRoute2Info;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v3

    .line 1445
    .local v3, "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1446
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1447
    goto/16 :goto_4da

    .line 1432
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v3    # "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    :pswitch_f0
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1433
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1434
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1435
    goto/16 :goto_4da

    .line 1414
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_fc
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1416
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1418
    .local v2, "_arg1":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1420
    .local v3, "_arg2":Ljava/lang/CharSequence;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1422
    .restart local v4    # "_arg3":Ljava/lang/CharSequence;
    sget-object v5, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 1424
    .local v5, "_arg4":Landroid/graphics/drawable/Icon;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v6

    .line 1425
    .local v6, "_arg5":Lcom/android/internal/statusbar/IAddTileResultCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1426
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1427
    goto/16 :goto_4da

    .line 1406
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Ljava/lang/CharSequence;
    .end local v4    # "_arg3":Ljava/lang/CharSequence;
    .end local v5    # "_arg4":Landroid/graphics/drawable/Icon;
    .end local v6    # "_arg5":Lcom/android/internal/statusbar/IAddTileResultCallback;
    :pswitch_130
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1407
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1408
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    .line 1409
    goto/16 :goto_4da

    .line 1400
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_140
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->runGcForTest()V

    .line 1401
    goto/16 :goto_4da

    .line 1391
    :pswitch_145
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1393
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1394
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1395
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 1396
    goto/16 :goto_4da

    .line 1381
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_155
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1383
    .local v1, "_arg0":[Ljava/lang/String;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1384
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1385
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1386
    goto/16 :goto_4da

    .line 1373
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_169
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1374
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1375
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestMagnificationConnection(Z)V

    .line 1376
    goto/16 :goto_4da

    .line 1365
    .end local v1    # "_arg0":Z
    :pswitch_175
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1366
    .restart local v1    # "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1367
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->suppressAmbientDisplay(Z)V

    .line 1368
    goto/16 :goto_4da

    .line 1359
    .end local v1    # "_arg0":Z
    :pswitch_181
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->stopTracing()V

    .line 1360
    goto/16 :goto_4da

    .line 1354
    :pswitch_186
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startTracing()V

    .line 1355
    goto/16 :goto_4da

    .line 1345
    :pswitch_18b
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1347
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1348
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1349
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1350
    goto/16 :goto_4da

    .line 1323
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_19b
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1325
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1327
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1329
    .local v3, "_arg2":Landroid/os/IBinder;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1331
    .restart local v4    # "_arg3":Ljava/lang/CharSequence;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1333
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1335
    .local v6, "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v7

    .line 1337
    .local v7, "_arg6":Landroid/app/ITransientNotificationCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1338
    .local v8, "_arg7":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1339
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    .line 1340
    goto/16 :goto_4da

    .line 1315
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/CharSequence;
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/app/ITransientNotificationCallback;
    .end local v8    # "_arg7":I
    :pswitch_1cb
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1316
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1317
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1318
    goto/16 :goto_4da

    .line 1309
    .end local v1    # "_arg0":Z
    :pswitch_1d7
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showInattentiveSleepWarning()V

    .line 1310
    goto/16 :goto_4da

    .line 1300
    :pswitch_1dc
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1302
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1303
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1304
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->abortTransient(II)V

    .line 1305
    goto/16 :goto_4da

    .line 1288
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1ec
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1290
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1292
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1293
    .local v3, "_arg2":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTransient(IIZ)V

    .line 1295
    goto/16 :goto_4da

    .line 1266
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_200
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1268
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1270
    .restart local v2    # "_arg1":I
    sget-object v3, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/view/AppearanceRegion;

    .line 1272
    .local v3, "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1274
    .local v4, "_arg3":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1276
    .local v5, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1278
    .restart local v6    # "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1280
    .local v7, "_arg6":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/statusbar/LetterboxDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1281
    .local v8, "_arg7":[Lcom/android/internal/statusbar/LetterboxDetails;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1282
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 1283
    goto/16 :goto_4da

    .line 1258
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Lcom/android/internal/view/AppearanceRegion;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":[Lcom/android/internal/statusbar/LetterboxDetails;
    :pswitch_230
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1259
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1260
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayRemoveSystemDecorations(I)V

    .line 1261
    goto/16 :goto_4da

    .line 1250
    .end local v1    # "_arg0":I
    :pswitch_23c
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1251
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayAddSystemDecorations(I)V

    .line 1253
    goto/16 :goto_4da

    .line 1242
    .end local v1    # "_arg0":I
    :pswitch_248
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    move-result-object v1

    .line 1243
    .local v1, "_arg0":Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1244
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 1245
    goto/16 :goto_4da

    .line 1234
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
    :pswitch_258
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v1

    .line 1235
    .local v1, "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1236
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1237
    goto/16 :goto_4da

    .line 1226
    .end local v1    # "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    :pswitch_268
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1227
    .local v1, "_arg0":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideAuthenticationDialog(J)V

    .line 1229
    goto/16 :goto_4da

    .line 1214
    .end local v1    # "_arg0":J
    :pswitch_274
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1216
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1218
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1219
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1220
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricError(III)V

    .line 1221
    goto/16 :goto_4da

    .line 1204
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_288
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1206
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1207
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1209
    goto/16 :goto_4da

    .line 1196
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_298
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1197
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1198
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricAuthenticated(I)V

    .line 1199
    goto/16 :goto_4da

    .line 1172
    .end local v1    # "_arg0":I
    :pswitch_2a4
    sget-object v1, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/PromptInfo;

    .line 1174
    .local v1, "_arg0":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v2

    .line 1176
    .local v2, "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1178
    .local v3, "_arg2":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1180
    .restart local v4    # "_arg3":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1182
    .local v5, "_arg4":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1184
    .restart local v6    # "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1186
    .local v7, "_arg6":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1188
    .local v9, "_arg7":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 1189
    .local v10, "_arg8":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    .line 1191
    goto/16 :goto_4da

    .line 1162
    .end local v1    # "_arg0":Landroid/hardware/biometrics/PromptInfo;
    .end local v2    # "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":J
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v10    # "_arg8":J
    :pswitch_2d8
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1164
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1165
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1166
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    .line 1167
    goto/16 :goto_4da

    .line 1156
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_2e8
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    .line 1157
    goto/16 :goto_4da

    .line 1149
    :pswitch_2ed
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1150
    .restart local v1    # "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    .line 1152
    goto/16 :goto_4da

    .line 1141
    .end local v1    # "_arg0":Z
    :pswitch_2f9
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 1142
    .local v1, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 1144
    goto/16 :goto_4da

    .line 1133
    .end local v1    # "_arg0":Landroid/view/KeyEvent;
    :pswitch_309
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1134
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    .line 1136
    goto/16 :goto_4da

    .line 1125
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_319
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1126
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setQsTiles([Ljava/lang/String;)V

    .line 1128
    goto/16 :goto_4da

    .line 1117
    .end local v1    # "_arg0":[Ljava/lang/String;
    :pswitch_325
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1118
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    .line 1120
    goto/16 :goto_4da

    .line 1107
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_335
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1109
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1110
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V

    .line 1112
    goto/16 :goto_4da

    .line 1099
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Z
    :pswitch_349
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1100
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    .line 1102
    goto/16 :goto_4da

    .line 1091
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_359
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1092
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    .line 1094
    goto/16 :goto_4da

    .line 1081
    .end local v1    # "_arg0":Z
    :pswitch_365
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1083
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1084
    .restart local v2    # "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    .line 1086
    goto/16 :goto_4da

    .line 1075
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_375
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu()V

    .line 1076
    goto/16 :goto_4da

    .line 1070
    :pswitch_37a
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    .line 1071
    goto/16 :goto_4da

    .line 1065
    :pswitch_37f
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onEmergencyActionLaunchGestureDetected()V

    .line 1066
    goto/16 :goto_4da

    .line 1060
    :pswitch_384
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onWalletLaunchGestureDetected()V

    .line 1061
    goto/16 :goto_4da

    .line 1053
    :pswitch_389
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1054
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 1056
    goto/16 :goto_4da

    .line 1045
    .end local v1    # "_arg0":I
    :pswitch_395
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1046
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 1048
    goto/16 :goto_4da

    .line 1039
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :pswitch_3a5
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 1040
    goto/16 :goto_4da

    .line 1032
    :pswitch_3aa
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1033
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1034
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished(I)V

    .line 1035
    goto/16 :goto_4da

    .line 1020
    .end local v1    # "_arg0":I
    :pswitch_3b6
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1022
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1024
    .local v2, "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1025
    .local v4, "_arg2":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1026
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(IJJ)V

    .line 1027
    goto/16 :goto_4da

    .line 1012
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    :pswitch_3ca
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1013
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled(I)V

    .line 1015
    goto/16 :goto_4da

    .line 1004
    .end local v1    # "_arg0":I
    :pswitch_3d6
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1005
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending(I)V

    .line 1007
    goto/16 :goto_4da

    .line 996
    .end local v1    # "_arg0":I
    :pswitch_3e2
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 997
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    .line 999
    goto/16 :goto_4da

    .line 990
    .end local v1    # "_arg0":I
    :pswitch_3ee
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    .line 991
    goto/16 :goto_4da

    .line 979
    :pswitch_3f3
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 981
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 983
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 984
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->immersiveModeChanged(IZI)V

    .line 986
    goto/16 :goto_4da

    .line 973
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_407
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->confirmImmersivePrompt()V

    .line 974
    goto/16 :goto_4da

    .line 966
    :pswitch_40c
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 967
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    .line 969
    goto/16 :goto_4da

    .line 960
    .end local v1    # "_arg0":I
    :pswitch_418
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 961
    goto/16 :goto_4da

    .line 955
    :pswitch_41d
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 956
    goto/16 :goto_4da

    .line 950
    :pswitch_422
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    .line 951
    goto/16 :goto_4da

    .line 945
    :pswitch_427
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleTaskbar()V

    .line 946
    goto/16 :goto_4da

    .line 940
    :pswitch_42c
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 941
    goto/16 :goto_4da

    .line 931
    :pswitch_431
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 933
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 934
    .restart local v2    # "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 935
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 936
    goto/16 :goto_4da

    .line 923
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :pswitch_441
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 924
    .restart local v1    # "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    .line 926
    goto/16 :goto_4da

    .line 911
    .end local v1    # "_arg0":Z
    :pswitch_44d
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 913
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 915
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 916
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 917
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(III)V

    .line 918
    goto/16 :goto_4da

    .line 897
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_461
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 899
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 901
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 903
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 904
    .local v4, "_arg3":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(IIIZ)V

    .line 906
    goto :goto_4da

    .line 889
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    :pswitch_478
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 890
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    .line 892
    goto :goto_4da

    .line 883
    .end local v1    # "_arg0":I
    :pswitch_483
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleNotificationsPanel()V

    .line 884
    goto :goto_4da

    .line 878
    :pswitch_487
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 879
    goto :goto_4da

    .line 871
    :pswitch_48b
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 874
    goto :goto_4da

    .line 865
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_496
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 866
    goto :goto_4da

    .line 858
    :pswitch_49a
    sget-object v1, Lcom/android/internal/statusbar/DisableStates;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/DisableStates;

    .line 859
    .local v1, "_arg0":Lcom/android/internal/statusbar/DisableStates;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disableForAllDisplays(Lcom/android/internal/statusbar/DisableStates;)V

    .line 861
    goto :goto_4da

    .line 846
    .end local v1    # "_arg0":Lcom/android/internal/statusbar/DisableStates;
    :pswitch_4a9
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 848
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 850
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 851
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(III)V

    .line 853
    goto :goto_4da

    .line 838
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_4bc
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    .line 841
    goto :goto_4da

    .line 828
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_4c7
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 830
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 831
    .local v2, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 833
    nop

    .line 1546
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_4da
    return v15

    nop

    :pswitch_data_4dc
    .packed-switch 0x1
        :pswitch_4c7
        :pswitch_4bc
        :pswitch_4a9
        :pswitch_49a
        :pswitch_496
        :pswitch_48b
        :pswitch_487
        :pswitch_483
        :pswitch_478
        :pswitch_461
        :pswitch_44d
        :pswitch_441
        :pswitch_431
        :pswitch_42c
        :pswitch_427
        :pswitch_422
        :pswitch_41d
        :pswitch_418
        :pswitch_40c
        :pswitch_407
        :pswitch_3f3
        :pswitch_3ee
        :pswitch_3e2
        :pswitch_3d6
        :pswitch_3ca
        :pswitch_3b6
        :pswitch_3aa
        :pswitch_3a5
        :pswitch_395
        :pswitch_389
        :pswitch_384
        :pswitch_37f
        :pswitch_37a
        :pswitch_375
        :pswitch_365
        :pswitch_359
        :pswitch_349
        :pswitch_335
        :pswitch_325
        :pswitch_319
        :pswitch_309
        :pswitch_2f9
        :pswitch_2ed
        :pswitch_2e8
        :pswitch_2d8
        :pswitch_2a4
        :pswitch_298
        :pswitch_288
        :pswitch_274
        :pswitch_268
        :pswitch_258
        :pswitch_248
        :pswitch_23c
        :pswitch_230
        :pswitch_200
        :pswitch_1ec
        :pswitch_1dc
        :pswitch_1d7
        :pswitch_1cb
        :pswitch_19b
        :pswitch_18b
        :pswitch_186
        :pswitch_181
        :pswitch_175
        :pswitch_169
        :pswitch_155
        :pswitch_145
        :pswitch_140
        :pswitch_130
        :pswitch_fc
        :pswitch_f0
        :pswitch_d4
        :pswitch_b0
        :pswitch_a0
        :pswitch_90
        :pswitch_7c
        :pswitch_70
        :pswitch_64
        :pswitch_54
        :pswitch_48
        :pswitch_34
        :pswitch_28
    .end packed-switch
.end method
