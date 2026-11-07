.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final greylist-max-o TRANSACTION_addTile:I = 0x29

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x3f

.field static final blacklist TRANSACTION_clearInlineReplyUriPermissions:I = 0x22

.field static final greylist-max-o TRANSACTION_clearNotificationEffects:I = 0x12

.field static final greylist-max-o TRANSACTION_clickTile:I = 0x2b

.field static final greylist-max-o TRANSACTION_collapsePanels:I = 0x2

.field static final greylist-max-o TRANSACTION_disable:I = 0x4

.field static final greylist-max-o TRANSACTION_disable2:I = 0x6

.field static final greylist-max-o TRANSACTION_disable2ForUser:I = 0x7

.field static final greylist-max-o TRANSACTION_disableForUser:I = 0x5

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x38

.field static final greylist-max-o TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final greylist-max-o TRANSACTION_expandSettingsPanel:I = 0xd

.field static final blacklist TRANSACTION_getDisableFlags:I = 0x8

.field static final blacklist TRANSACTION_getLastSystemKey:I = 0x2d

.field static final blacklist TRANSACTION_getNavBarMode:I = 0x41

.field static final blacklist TRANSACTION_grantInlineReplyUriPermission:I = 0x21

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x2c

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x34

.field static final blacklist TRANSACTION_hideCurrentInputMethodForBubbles:I = 0x20

.field static final blacklist TRANSACTION_isTracing:I = 0x3b

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x31

.field static final blacklist TRANSACTION_onBiometricError:I = 0x33

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x32

.field static final blacklist TRANSACTION_onBubbleMetadataFlagChanged:I = 0x1f

.field static final greylist-max-o TRANSACTION_onClearAllNotifications:I = 0x16

.field static final greylist-max-o TRANSACTION_onGlobalActionsHidden:I = 0x25

.field static final greylist-max-o TRANSACTION_onGlobalActionsShown:I = 0x24

.field static final greylist-max-o TRANSACTION_onNotificationActionClick:I = 0x14

.field static final blacklist TRANSACTION_onNotificationBubbleChanged:I = 0x1e

.field static final greylist-max-o TRANSACTION_onNotificationClear:I = 0x17

.field static final greylist-max-o TRANSACTION_onNotificationClick:I = 0x13

.field static final greylist-max-o TRANSACTION_onNotificationDirectReplied:I = 0x1a

.field static final greylist-max-o TRANSACTION_onNotificationError:I = 0x15

.field static final greylist-max-o TRANSACTION_onNotificationExpansionChanged:I = 0x19

.field static final blacklist TRANSACTION_onNotificationFeedbackReceived:I = 0x23

.field static final greylist-max-o TRANSACTION_onNotificationSettingsViewed:I = 0x1d

.field static final greylist-max-o TRANSACTION_onNotificationSmartReplySent:I = 0x1c

.field static final blacklist TRANSACTION_onNotificationSmartSuggestionsAdded:I = 0x1b

.field static final greylist-max-o TRANSACTION_onNotificationVisibilityChanged:I = 0x18

.field static final greylist-max-o TRANSACTION_onPanelHidden:I = 0x11

.field static final greylist-max-o TRANSACTION_onPanelRevealed:I = 0x10

.field static final blacklist TRANSACTION_onSessionEnded:I = 0x45

.field static final blacklist TRANSACTION_onSessionStarted:I = 0x44

.field static final greylist-max-o TRANSACTION_reboot:I = 0x27

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x48

.field static final blacklist TRANSACTION_registerSessionListener:I = 0x42

.field static final greylist-max-o TRANSACTION_registerStatusBar:I = 0xe

.field static final blacklist TRANSACTION_registerStatusBarForAllDisplays:I = 0xf

.field static final greylist-max-o TRANSACTION_remTile:I = 0x2a

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0xb

.field static final blacklist TRANSACTION_requestAddTile:I = 0x3e

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x3d

.field static final blacklist TRANSACTION_restart:I = 0x28

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x35

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x9

.field static final greylist-max-o TRANSACTION_setIconVisibility:I = 0xa

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0xc

.field static final blacklist TRANSACTION_setNavBarMode:I = 0x40

.field static final blacklist TRANSACTION_setUdfpsRefreshRateCallback:I = 0x36

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x30

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x37

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x2e

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x2f

.field static final blacklist TRANSACTION_showRearDisplayDialog:I = 0x4a

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x26

.field static final blacklist TRANSACTION_startTracing:I = 0x39

.field static final blacklist TRANSACTION_stopTracing:I = 0x3a

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x3c

.field static final greylist-max-o TRANSACTION_togglePanel:I = 0x3

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x49

.field static final blacklist TRANSACTION_unregisterSessionListener:I = 0x43

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x47

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x46


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 314
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 315
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 323
    if-nez p0, :cond_4

    .line 324
    const/4 v0, 0x0

    return-object v0

    .line 326
    :cond_4
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 327
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_14

    .line 328
    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBarService;

    return-object v1

    .line 330
    :cond_14
    new-instance v1, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 339
    packed-switch p0, :pswitch_data_102

    .line 639
    const/4 v0, 0x0

    return-object v0

    .line 635
    :pswitch_5
    const-string/jumbo v0, "showRearDisplayDialog"

    return-object v0

    .line 631
    :pswitch_9
    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    return-object v0

    .line 627
    :pswitch_d
    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    return-object v0

    .line 623
    :pswitch_11
    const-string/jumbo v0, "updateMediaTapToTransferReceiverDisplay"

    return-object v0

    .line 619
    :pswitch_15
    const-string/jumbo v0, "updateMediaTapToTransferSenderDisplay"

    return-object v0

    .line 615
    :pswitch_19
    const-string v0, "onSessionEnded"

    return-object v0

    .line 611
    :pswitch_1c
    const-string v0, "onSessionStarted"

    return-object v0

    .line 607
    :pswitch_1f
    const-string/jumbo v0, "unregisterSessionListener"

    return-object v0

    .line 603
    :pswitch_23
    const-string/jumbo v0, "registerSessionListener"

    return-object v0

    .line 599
    :pswitch_27
    const-string v0, "getNavBarMode"

    return-object v0

    .line 595
    :pswitch_2a
    const-string/jumbo v0, "setNavBarMode"

    return-object v0

    .line 591
    :pswitch_2e
    const-string v0, "cancelRequestAddTile"

    return-object v0

    .line 587
    :pswitch_31
    const-string/jumbo v0, "requestAddTile"

    return-object v0

    .line 583
    :pswitch_35
    const-string/jumbo v0, "requestTileServiceListeningState"

    return-object v0

    .line 579
    :pswitch_39
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    .line 575
    :pswitch_3d
    const-string v0, "isTracing"

    return-object v0

    .line 571
    :pswitch_40
    const-string/jumbo v0, "stopTracing"

    return-object v0

    .line 567
    :pswitch_44
    const-string/jumbo v0, "startTracing"

    return-object v0

    .line 563
    :pswitch_48
    const-string v0, "dismissInattentiveSleepWarning"

    return-object v0

    .line 559
    :pswitch_4b
    const-string/jumbo v0, "showInattentiveSleepWarning"

    return-object v0

    .line 555
    :pswitch_4f
    const-string/jumbo v0, "setUdfpsRefreshRateCallback"

    return-object v0

    .line 551
    :pswitch_53
    const-string/jumbo v0, "setBiometicContextListener"

    return-object v0

    .line 547
    :pswitch_57
    const-string v0, "hideAuthenticationDialog"

    return-object v0

    .line 543
    :pswitch_5a
    const-string v0, "onBiometricError"

    return-object v0

    .line 539
    :pswitch_5d
    const-string v0, "onBiometricHelp"

    return-object v0

    .line 535
    :pswitch_60
    const-string v0, "onBiometricAuthenticated"

    return-object v0

    .line 531
    :pswitch_63
    const-string/jumbo v0, "showAuthenticationDialog"

    return-object v0

    .line 527
    :pswitch_67
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    .line 523
    :pswitch_6b
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    .line 519
    :pswitch_6f
    const-string v0, "getLastSystemKey"

    return-object v0

    .line 515
    :pswitch_72
    const-string v0, "handleSystemKey"

    return-object v0

    .line 511
    :pswitch_75
    const-string v0, "clickTile"

    return-object v0

    .line 507
    :pswitch_78
    const-string/jumbo v0, "remTile"

    return-object v0

    .line 503
    :pswitch_7c
    const-string v0, "addTile"

    return-object v0

    .line 499
    :pswitch_7f
    const-string/jumbo v0, "restart"

    return-object v0

    .line 495
    :pswitch_83
    const-string/jumbo v0, "reboot"

    return-object v0

    .line 491
    :pswitch_87
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 487
    :pswitch_8b
    const-string v0, "onGlobalActionsHidden"

    return-object v0

    .line 483
    :pswitch_8e
    const-string v0, "onGlobalActionsShown"

    return-object v0

    .line 479
    :pswitch_91
    const-string v0, "onNotificationFeedbackReceived"

    return-object v0

    .line 475
    :pswitch_94
    const-string v0, "clearInlineReplyUriPermissions"

    return-object v0

    .line 471
    :pswitch_97
    const-string v0, "grantInlineReplyUriPermission"

    return-object v0

    .line 467
    :pswitch_9a
    const-string v0, "hideCurrentInputMethodForBubbles"

    return-object v0

    .line 463
    :pswitch_9d
    const-string v0, "onBubbleMetadataFlagChanged"

    return-object v0

    .line 459
    :pswitch_a0
    const-string v0, "onNotificationBubbleChanged"

    return-object v0

    .line 455
    :pswitch_a3
    const-string v0, "onNotificationSettingsViewed"

    return-object v0

    .line 451
    :pswitch_a6
    const-string v0, "onNotificationSmartReplySent"

    return-object v0

    .line 447
    :pswitch_a9
    const-string v0, "onNotificationSmartSuggestionsAdded"

    return-object v0

    .line 443
    :pswitch_ac
    const-string v0, "onNotificationDirectReplied"

    return-object v0

    .line 439
    :pswitch_af
    const-string v0, "onNotificationExpansionChanged"

    return-object v0

    .line 435
    :pswitch_b2
    const-string v0, "onNotificationVisibilityChanged"

    return-object v0

    .line 431
    :pswitch_b5
    const-string v0, "onNotificationClear"

    return-object v0

    .line 427
    :pswitch_b8
    const-string v0, "onClearAllNotifications"

    return-object v0

    .line 423
    :pswitch_bb
    const-string v0, "onNotificationError"

    return-object v0

    .line 419
    :pswitch_be
    const-string v0, "onNotificationActionClick"

    return-object v0

    .line 415
    :pswitch_c1
    const-string v0, "onNotificationClick"

    return-object v0

    .line 411
    :pswitch_c4
    const-string v0, "clearNotificationEffects"

    return-object v0

    .line 407
    :pswitch_c7
    const-string v0, "onPanelHidden"

    return-object v0

    .line 403
    :pswitch_ca
    const-string v0, "onPanelRevealed"

    return-object v0

    .line 399
    :pswitch_cd
    const-string/jumbo v0, "registerStatusBarForAllDisplays"

    return-object v0

    .line 395
    :pswitch_d1
    const-string/jumbo v0, "registerStatusBar"

    return-object v0

    .line 391
    :pswitch_d5
    const-string v0, "expandSettingsPanel"

    return-object v0

    .line 387
    :pswitch_d8
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    .line 383
    :pswitch_dc
    const-string/jumbo v0, "removeIcon"

    return-object v0

    .line 379
    :pswitch_e0
    const-string/jumbo v0, "setIconVisibility"

    return-object v0

    .line 375
    :pswitch_e4
    const-string/jumbo v0, "setIcon"

    return-object v0

    .line 371
    :pswitch_e8
    const-string v0, "getDisableFlags"

    return-object v0

    .line 367
    :pswitch_eb
    const-string v0, "disable2ForUser"

    return-object v0

    .line 363
    :pswitch_ee
    const-string v0, "disable2"

    return-object v0

    .line 359
    :pswitch_f1
    const-string v0, "disableForUser"

    return-object v0

    .line 355
    :pswitch_f4
    const-string v0, "disable"

    return-object v0

    .line 351
    :pswitch_f7
    const-string/jumbo v0, "togglePanel"

    return-object v0

    .line 347
    :pswitch_fb
    const-string v0, "collapsePanels"

    return-object v0

    .line 343
    :pswitch_fe
    const-string v0, "expandNotificationsPanel"

    return-object v0

    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_fb
        :pswitch_f7
        :pswitch_f4
        :pswitch_f1
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
        :pswitch_e4
        :pswitch_e0
        :pswitch_dc
        :pswitch_d8
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7c
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/android/internal/statusbar/RegisterStatusBarResult;

    .line 829
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 830
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 831
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 334
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2824
    const/16 v0, 0x49

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 646
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "com.android.internal.statusbar.IStatusBarService"

    .line 651
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v6, 0x1

    if-lt v12, v6, :cond_15

    const v1, 0xffffff

    if-gt v12, v1, :cond_15

    .line 652
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    :cond_15
    const v1, 0x5f4e5446

    if-ne v12, v1, :cond_1e

    .line 655
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 656
    return v6

    .line 658
    :cond_1e
    packed-switch v12, :pswitch_data_656

    .line 1452
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1444
    :pswitch_26
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1445
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1446
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showRearDisplayDialog(I)V

    .line 1447
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    move v12, v6

    goto/16 :goto_655

    .line 1435
    .end local v1    # "_arg0":I
    :pswitch_36
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1436
    .local v1, "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1437
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1438
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    move v12, v6

    goto/16 :goto_655

    .line 1426
    .end local v1    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_4a
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1427
    .restart local v1    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1428
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1429
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    move v12, v6

    goto/16 :goto_655

    .line 1411
    .end local v1    # "_arg0":Landroid/media/INearbyMediaDevicesProvider;
    :pswitch_5e
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1413
    .local v1, "_arg0":I
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 1415
    .local v2, "_arg1":Landroid/media/MediaRoute2Info;
    sget-object v3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    .line 1417
    .local v3, "_arg2":Landroid/graphics/drawable/Icon;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1418
    .local v4, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1419
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1420
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    move v12, v6

    goto/16 :goto_655

    .line 1398
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v3    # "_arg2":Landroid/graphics/drawable/Icon;
    .end local v4    # "_arg3":Ljava/lang/CharSequence;
    :pswitch_86
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1400
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 1402
    .restart local v2    # "_arg1":Landroid/media/MediaRoute2Info;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v3

    .line 1403
    .local v3, "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1405
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    move v12, v6

    goto/16 :goto_655

    .line 1387
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/MediaRoute2Info;
    .end local v3    # "_arg2":Lcom/android/internal/statusbar/IUndoMediaTransferCallback;
    :pswitch_a6
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1389
    .restart local v1    # "_arg0":I
    sget-object v2, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/InstanceId;

    .line 1390
    .local v2, "_arg1":Lcom/android/internal/logging/InstanceId;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1391
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V

    .line 1392
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    move v12, v6

    goto/16 :goto_655

    .line 1376
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/logging/InstanceId;
    :pswitch_be
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1378
    .restart local v1    # "_arg0":I
    sget-object v2, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/InstanceId;

    .line 1379
    .restart local v2    # "_arg1":Lcom/android/internal/logging/InstanceId;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1380
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V

    .line 1381
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    move v12, v6

    goto/16 :goto_655

    .line 1365
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/logging/InstanceId;
    :pswitch_d6
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1367
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v2

    .line 1368
    .local v2, "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1369
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 1370
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    move v12, v6

    goto/16 :goto_655

    .line 1354
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    :pswitch_ee
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1356
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v2

    .line 1357
    .restart local v2    # "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1358
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 1359
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    move v12, v6

    goto/16 :goto_655

    .line 1346
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/ISessionListener;
    :pswitch_106
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getNavBarMode()I

    move-result v1

    .line 1347
    .local v1, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    move v12, v6

    goto/16 :goto_655

    .line 1338
    .end local v1    # "_result":I
    :pswitch_113
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1339
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1340
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setNavBarMode(I)V

    .line 1341
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    move v12, v6

    goto/16 :goto_655

    .line 1329
    .end local v1    # "_arg0":I
    :pswitch_123
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1330
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1331
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    move v12, v6

    goto/16 :goto_655

    .line 1312
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_133
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1314
    .local v1, "_arg0":Landroid/content/ComponentName;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1316
    .local v2, "_arg1":Ljava/lang/CharSequence;
    sget-object v3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    .line 1318
    .local v3, "_arg2":Landroid/graphics/drawable/Icon;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1320
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v5

    .line 1321
    .local v5, "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1322
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1323
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1324
    move v12, v6

    goto/16 :goto_655

    .line 1301
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Ljava/lang/CharSequence;
    .end local v3    # "_arg2":Landroid/graphics/drawable/Icon;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Lcom/android/internal/statusbar/IAddTileResultCallback;
    :pswitch_163
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1303
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1304
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1305
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;I)V

    .line 1306
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    move v12, v6

    goto/16 :goto_655

    .line 1292
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    :pswitch_17b
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1293
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->suppressAmbientDisplay(Z)V

    .line 1295
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    move v12, v6

    goto/16 :goto_655

    .line 1284
    .end local v1    # "_arg0":Z
    :pswitch_18b
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isTracing()Z

    move-result v1

    .line 1285
    .local v1, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1287
    move v12, v6

    goto/16 :goto_655

    .line 1278
    .end local v1    # "_result":Z
    :pswitch_198
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->stopTracing()V

    .line 1279
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    move v12, v6

    goto/16 :goto_655

    .line 1272
    :pswitch_1a1
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startTracing()V

    .line 1273
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    move v12, v6

    goto/16 :goto_655

    .line 1264
    :pswitch_1aa
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1265
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1266
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1267
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    move v12, v6

    goto/16 :goto_655

    .line 1257
    .end local v1    # "_arg0":Z
    :pswitch_1ba
    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showInattentiveSleepWarning()V

    .line 1258
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    move v12, v6

    goto/16 :goto_655

    .line 1249
    :pswitch_1c3
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    move-result-object v1

    .line 1250
    .local v1, "_arg0":Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1251
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 1252
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    move v12, v6

    goto/16 :goto_655

    .line 1240
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
    :pswitch_1d7
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v1

    .line 1241
    .local v1, "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1243
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    move v12, v6

    goto/16 :goto_655

    .line 1231
    .end local v1    # "_arg0":Landroid/hardware/biometrics/IBiometricContextListener;
    :pswitch_1eb
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1232
    .local v1, "_arg0":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1233
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideAuthenticationDialog(J)V

    .line 1234
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    move v12, v6

    goto/16 :goto_655

    .line 1218
    .end local v1    # "_arg0":J
    :pswitch_1fb
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1220
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1222
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1223
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1224
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricError(III)V

    .line 1225
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    move v12, v6

    goto/16 :goto_655

    .line 1207
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_213
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1209
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1210
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1212
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    move v12, v6

    goto/16 :goto_655

    .line 1198
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_227
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1199
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricAuthenticated(I)V

    .line 1201
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    move v12, v6

    goto/16 :goto_655

    .line 1173
    .end local v1    # "_arg0":I
    :pswitch_237
    sget-object v1, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/PromptInfo;

    .line 1175
    .local v1, "_arg0":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v2

    .line 1177
    .local v2, "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1179
    .local v3, "_arg2":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1181
    .local v4, "_arg3":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1183
    .local v5, "_arg4":Z
    move v7, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1185
    .local v6, "_arg5":I
    move v9, v7

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1187
    .local v7, "_arg6":J
    move v10, v9

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1189
    .local v9, "_arg7":Ljava/lang/String;
    move/from16 v16, v10

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 1190
    .local v10, "_arg8":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    move/from16 v12, v16

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    .line 1192
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    goto/16 :goto_655

    .line 1166
    .end local v1    # "_arg0":Landroid/hardware/biometrics/PromptInfo;
    .end local v2    # "_arg1":Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":J
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v10    # "_arg8":J
    :pswitch_275
    move v12, v6

    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEscapeToast()V

    .line 1167
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    goto/16 :goto_655

    .line 1158
    :pswitch_27e
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1159
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1160
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEnterExitToast(Z)V

    .line 1161
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    goto/16 :goto_655

    .line 1150
    .end local v1    # "_arg0":Z
    :pswitch_28e
    move v12, v6

    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getLastSystemKey()I

    move-result v1

    .line 1151
    .local v1, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    goto/16 :goto_655

    .line 1142
    .end local v1    # "_result":I
    :pswitch_29b
    move v12, v6

    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 1143
    .local v1, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 1145
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    goto/16 :goto_655

    .line 1133
    .end local v1    # "_arg0":Landroid/view/KeyEvent;
    :pswitch_2af
    move v12, v6

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1134
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clickTile(Landroid/content/ComponentName;)V

    .line 1136
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    goto/16 :goto_655

    .line 1124
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_2c3
    move v12, v6

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1125
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->remTile(Landroid/content/ComponentName;)V

    .line 1127
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    goto/16 :goto_655

    .line 1115
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_2d7
    move v12, v6

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1116
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->addTile(Landroid/content/ComponentName;)V

    .line 1118
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    goto/16 :goto_655

    .line 1108
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_2eb
    move v12, v6

    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->restart()V

    .line 1109
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    goto/16 :goto_655

    .line 1100
    :pswitch_2f4
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1101
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1102
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->reboot(Z)V

    .line 1103
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    goto/16 :goto_655

    .line 1093
    .end local v1    # "_arg0":Z
    :pswitch_304
    move v12, v6

    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->shutdown()V

    .line 1094
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    goto/16 :goto_655

    .line 1087
    :pswitch_30d
    move v12, v6

    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsHidden()V

    .line 1088
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    goto/16 :goto_655

    .line 1081
    :pswitch_316
    move v12, v6

    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsShown()V

    .line 1082
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    goto/16 :goto_655

    .line 1071
    :pswitch_31f
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1074
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1075
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1076
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    goto/16 :goto_655

    .line 1063
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_337
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1064
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearInlineReplyUriPermissions(Ljava/lang/String;)V

    .line 1066
    goto/16 :goto_655

    .line 1048
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_344
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1050
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1052
    .local v2, "_arg1":Landroid/net/Uri;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1054
    .local v3, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1055
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    goto/16 :goto_655

    .line 1039
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_368
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1040
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideCurrentInputMethodForBubbles(I)V

    .line 1042
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    goto/16 :goto_655

    .line 1028
    .end local v1    # "_arg0":I
    :pswitch_378
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1031
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V

    .line 1033
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    goto/16 :goto_655

    .line 1015
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_38c
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1019
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1020
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V

    .line 1022
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    goto/16 :goto_655

    .line 1006
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_3a4
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1007
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSettingsViewed(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    goto/16 :goto_655

    .line 989
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3b4
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 991
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 993
    .local v2, "_arg1":I
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 995
    .local v3, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 997
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 998
    .restart local v5    # "_arg4":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V

    .line 1000
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    move-object/from16 v0, p0

    goto/16 :goto_655

    .line 972
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/CharSequence;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    :pswitch_3da
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 974
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 976
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 978
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 980
    .local v4, "_arg3":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 981
    .restart local v5    # "_arg4":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V

    .line 983
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    goto/16 :goto_655

    .line 963
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    :pswitch_3fc
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 964
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationDirectReplied(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    goto/16 :goto_655

    .line 948
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_40c
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 950
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 952
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 954
    .local v3, "_arg2":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 955
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V

    .line 957
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    goto/16 :goto_655

    .line 937
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    :pswitch_428
    move v12, v6

    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 939
    .local v1, "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    sget-object v2, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 940
    .local v2, "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 942
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    goto/16 :goto_655

    .line 918
    .end local v1    # "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v2    # "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    :pswitch_444
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 922
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 924
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 926
    .restart local v4    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 928
    .local v5, "_arg4":I
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 929
    .local v6, "_arg5":Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 931
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    goto/16 :goto_655

    .line 909
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Lcom/android/internal/statusbar/NotificationVisibility;
    :pswitch_46c
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 910
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    .line 912
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    goto/16 :goto_655

    .line 888
    .end local v1    # "_arg0":I
    :pswitch_47c
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 892
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 894
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 896
    .restart local v4    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 898
    .restart local v5    # "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 900
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 901
    .local v7, "_arg6":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 903
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    move-object/from16 v0, p0

    goto/16 :goto_655

    .line 871
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    :pswitch_4a6
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 873
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 875
    .local v2, "_arg1":I
    sget-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/Notification$Action;

    .line 877
    .local v3, "_arg2":Landroid/app/Notification$Action;
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 879
    .local v4, "_arg3":Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 880
    .local v5, "_arg4":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    .line 882
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    goto/16 :goto_655

    .line 860
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/app/Notification$Action;
    .end local v4    # "_arg3":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v5    # "_arg4":Z
    :pswitch_4d2
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 862
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 863
    .local v2, "_arg1":Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 865
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    goto/16 :goto_655

    .line 854
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/NotificationVisibility;
    :pswitch_4ea
    move v12, v6

    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    .line 855
    goto/16 :goto_655

    .line 848
    :pswitch_4f0
    move v12, v6

    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    .line 849
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    goto/16 :goto_655

    .line 838
    :pswitch_4f9
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 840
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 841
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    .line 843
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    goto/16 :goto_655

    .line 820
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_50d
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    .line 821
    .local v1, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBarForAllDisplays(Lcom/android/internal/statusbar/IStatusBar;)Ljava/util/Map;

    move-result-object v2

    .line 823
    .local v2, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/statusbar/RegisterStatusBarResult;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    if-nez v2, :cond_528

    .line 825
    const/4 v3, -0x1

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_655

    .line 827
    :cond_528
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    new-instance v3, Lcom/android/internal/statusbar/IStatusBarService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v3, v14}, Lcom/android/internal/statusbar/IStatusBarService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 833
    goto/16 :goto_655

    .line 810
    .end local v1    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v2    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/statusbar/RegisterStatusBarResult;>;"
    :pswitch_539
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    .line 811
    .restart local v1    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v2

    .line 813
    .local v2, "_result":Lcom/android/internal/statusbar/RegisterStatusBarResult;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {v14, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 815
    goto/16 :goto_655

    .line 801
    .end local v1    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v2    # "_result":Lcom/android/internal/statusbar/RegisterStatusBarResult;
    :pswitch_551
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    goto/16 :goto_655

    .line 786
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_561
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 788
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 790
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 792
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 793
    .local v4, "_arg3":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(IIIZ)V

    .line 795
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_655

    .line 777
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    :pswitch_57d
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    goto/16 :goto_655

    .line 766
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_58d
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 768
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 769
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    .line 771
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    goto/16 :goto_655

    .line 749
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_5a1
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 751
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 755
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 757
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 758
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 760
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto/16 :goto_655

    .line 737
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_5c1
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 739
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 740
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object v3

    .line 742
    .local v3, "_result":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 744
    goto/16 :goto_655

    .line 722
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[I
    :pswitch_5d9
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 724
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 726
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 728
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 729
    .restart local v4    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 731
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    goto :goto_655

    .line 709
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_5f4
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 711
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 713
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 714
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 715
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    goto :goto_655

    .line 694
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_60b
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 696
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 698
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 700
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 701
    .restart local v4    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 703
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    goto :goto_655

    .line 681
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_626
    move v12, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 683
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 685
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 686
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 688
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    goto :goto_655

    .line 674
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_63d
    move v12, v6

    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->togglePanel()V

    .line 675
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    goto :goto_655

    .line 668
    :pswitch_645
    move v12, v6

    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    .line 669
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    goto :goto_655

    .line 662
    :pswitch_64d
    move v12, v6

    invoke-virtual {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    .line 663
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    nop

    .line 1455
    :goto_655
    return v12

    :pswitch_data_656
    .packed-switch 0x1
        :pswitch_64d
        :pswitch_645
        :pswitch_63d
        :pswitch_626
        :pswitch_60b
        :pswitch_5f4
        :pswitch_5d9
        :pswitch_5c1
        :pswitch_5a1
        :pswitch_58d
        :pswitch_57d
        :pswitch_561
        :pswitch_551
        :pswitch_539
        :pswitch_50d
        :pswitch_4f9
        :pswitch_4f0
        :pswitch_4ea
        :pswitch_4d2
        :pswitch_4a6
        :pswitch_47c
        :pswitch_46c
        :pswitch_444
        :pswitch_428
        :pswitch_40c
        :pswitch_3fc
        :pswitch_3da
        :pswitch_3b4
        :pswitch_3a4
        :pswitch_38c
        :pswitch_378
        :pswitch_368
        :pswitch_344
        :pswitch_337
        :pswitch_31f
        :pswitch_316
        :pswitch_30d
        :pswitch_304
        :pswitch_2f4
        :pswitch_2eb
        :pswitch_2d7
        :pswitch_2c3
        :pswitch_2af
        :pswitch_29b
        :pswitch_28e
        :pswitch_27e
        :pswitch_275
        :pswitch_237
        :pswitch_227
        :pswitch_213
        :pswitch_1fb
        :pswitch_1eb
        :pswitch_1d7
        :pswitch_1c3
        :pswitch_1ba
        :pswitch_1aa
        :pswitch_1a1
        :pswitch_198
        :pswitch_18b
        :pswitch_17b
        :pswitch_163
        :pswitch_133
        :pswitch_123
        :pswitch_113
        :pswitch_106
        :pswitch_ee
        :pswitch_d6
        :pswitch_be
        :pswitch_a6
        :pswitch_86
        :pswitch_5e
        :pswitch_4a
        :pswitch_36
        :pswitch_26
    .end packed-switch
.end method
