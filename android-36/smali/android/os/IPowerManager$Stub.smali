.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final blacklist TRANSACTION_acquireLowPowerStandbyPorts:I = 0x31

.field static final greylist-max-r TRANSACTION_acquireWakeLock:I = 0x1

.field static final blacklist TRANSACTION_acquireWakeLockAsync:I = 0x3c

.field static final greylist-max-o TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final blacklist TRANSACTION_addScreenTimeoutPolicyListener:I = 0xc

.field static final blacklist TRANSACTION_areAutoPowerSaveModesEnabled:I = 0x17

.field static final greylist-max-o TRANSACTION_boostScreenBrightness:I = 0x3b

.field static final greylist-max-o TRANSACTION_crash:I = 0x37

.field static final blacklist TRANSACTION_forceLowPowerStandbyActive:I = 0x2b

.field static final blacklist TRANSACTION_forceSuspend:I = 0x47

.field static final blacklist TRANSACTION_getActiveLowPowerStandbyPorts:I = 0x33

.field static final blacklist TRANSACTION_getBatteryDischargePrediction:I = 0x23

.field static final blacklist TRANSACTION_getBrightnessConstraint:I = 0x14

.field static final blacklist TRANSACTION_getFullPowerSavePolicy:I = 0x1c

.field static final greylist-max-o TRANSACTION_getLastShutdownReason:I = 0x38

.field static final blacklist TRANSACTION_getLastSleepReason:I = 0x39

.field static final blacklist TRANSACTION_getLowPowerStandbyPolicy:I = 0x2d

.field static final blacklist TRANSACTION_getPowerSaveModeTrigger:I = 0x21

.field static final greylist-max-o TRANSACTION_getPowerSaveState:I = 0x19

.field static final greylist-max-r TRANSACTION_goToSleep:I = 0x11

.field static final blacklist TRANSACTION_goToSleepWithDisplayId:I = 0x12

.field static final blacklist TRANSACTION_isAmbientDisplayAvailable:I = 0x42

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressed:I = 0x45

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressedForToken:I = 0x44

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressedForTokenByApp:I = 0x46

.field static final blacklist TRANSACTION_isBatteryDischargePredictionPersonalized:I = 0x24

.field static final blacklist TRANSACTION_isBatterySaverSupported:I = 0x1b

.field static final greylist-max-o TRANSACTION_isDeviceIdleMode:I = 0x25

.field static final blacklist TRANSACTION_isDisplayInteractive:I = 0x16

.field static final blacklist TRANSACTION_isExemptFromLowPowerStandby:I = 0x2e

.field static final blacklist TRANSACTION_isFeatureAllowedInLowPowerStandby:I = 0x30

.field static final greylist-max-o TRANSACTION_isInteractive:I = 0x15

.field static final greylist-max-o TRANSACTION_isLightDeviceIdleMode:I = 0x26

.field static final blacklist TRANSACTION_isLowPowerStandbyEnabled:I = 0x28

.field static final blacklist TRANSACTION_isLowPowerStandbySupported:I = 0x27

.field static final greylist-max-o TRANSACTION_isPowerSaveMode:I = 0x18

.field static final blacklist TRANSACTION_isReasonAllowedInLowPowerStandby:I = 0x2f

.field static final greylist-max-o TRANSACTION_isScreenBrightnessBoosted:I = 0x3f

.field static final greylist-max-o TRANSACTION_isWakeLockLevelSupported:I = 0xa

.field static final blacklist TRANSACTION_isWakeLockLevelSupportedWithDisplayId:I = 0xb

.field static final greylist-max-o TRANSACTION_nap:I = 0x13

.field static final greylist-max-o TRANSACTION_reboot:I = 0x34

.field static final greylist-max-o TRANSACTION_rebootSafeMode:I = 0x35

.field static final blacklist TRANSACTION_releaseLowPowerStandbyPorts:I = 0x32

.field static final greylist-max-o TRANSACTION_releaseWakeLock:I = 0x3

.field static final blacklist TRANSACTION_releaseWakeLockAsync:I = 0x3d

.field static final blacklist TRANSACTION_removeScreenTimeoutPolicyListener:I = 0xd

.field static final blacklist TRANSACTION_setAdaptivePowerSaveEnabled:I = 0x20

.field static final blacklist TRANSACTION_setAdaptivePowerSavePolicy:I = 0x1f

.field static final greylist-max-o TRANSACTION_setAttentionLight:I = 0x40

.field static final blacklist TRANSACTION_setBatteryDischargePrediction:I = 0x22

.field static final greylist-max-o TRANSACTION_setDozeAfterScreenOff:I = 0x41

.field static final blacklist TRANSACTION_setDynamicPowerSaveHint:I = 0x1e

.field static final blacklist TRANSACTION_setFullPowerSavePolicy:I = 0x1d

.field static final blacklist TRANSACTION_setLowPowerStandbyActiveDuringMaintenance:I = 0x2a

.field static final blacklist TRANSACTION_setLowPowerStandbyEnabled:I = 0x29

.field static final blacklist TRANSACTION_setLowPowerStandbyPolicy:I = 0x2c

.field static final blacklist TRANSACTION_setPowerBoost:I = 0x5

.field static final blacklist TRANSACTION_setPowerMode:I = 0x6

.field static final blacklist TRANSACTION_setPowerModeChecked:I = 0x7

.field static final blacklist TRANSACTION_setPowerSaveModeEnabled:I = 0x1a

.field static final greylist-max-o TRANSACTION_setStayOnSetting:I = 0x3a

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x36

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x43

.field static final blacklist TRANSACTION_updateWakeLockCallback:I = 0x9

.field static final greylist-max-o TRANSACTION_updateWakeLockUids:I = 0x4

.field static final blacklist TRANSACTION_updateWakeLockUidsAsync:I = 0x3e

.field static final greylist-max-o TRANSACTION_updateWakeLockWorkSource:I = 0x8

.field static final greylist-max-o TRANSACTION_userActivity:I = 0xe

.field static final greylist-max-o TRANSACTION_wakeUp:I = 0xf

.field static final blacklist TRANSACTION_wakeUpWithDisplayId:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 287
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 288
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 296
    if-nez p0, :cond_4

    .line 297
    const/4 v0, 0x0

    return-object v0

    .line 299
    :cond_4
    const-string v0, "android.os.IPowerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 300
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_14

    .line 301
    move-object v1, v0

    check-cast v1, Landroid/os/IPowerManager;

    return-object v1

    .line 303
    :cond_14
    new-instance v1, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 312
    packed-switch p0, :pswitch_data_10e

    .line 600
    const/4 v0, 0x0

    return-object v0

    .line 596
    :pswitch_5
    const-string v0, "forceSuspend"

    return-object v0

    .line 592
    :pswitch_8
    const-string/jumbo v0, "isAmbientDisplaySuppressedForTokenByApp"

    return-object v0

    .line 588
    :pswitch_c
    const-string/jumbo v0, "isAmbientDisplaySuppressed"

    return-object v0

    .line 584
    :pswitch_10
    const-string/jumbo v0, "isAmbientDisplaySuppressedForToken"

    return-object v0

    .line 580
    :pswitch_14
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    .line 576
    :pswitch_18
    const-string/jumbo v0, "isAmbientDisplayAvailable"

    return-object v0

    .line 572
    :pswitch_1c
    const-string/jumbo v0, "setDozeAfterScreenOff"

    return-object v0

    .line 568
    :pswitch_20
    const-string/jumbo v0, "setAttentionLight"

    return-object v0

    .line 564
    :pswitch_24
    const-string/jumbo v0, "isScreenBrightnessBoosted"

    return-object v0

    .line 560
    :pswitch_28
    const-string/jumbo v0, "updateWakeLockUidsAsync"

    return-object v0

    .line 556
    :pswitch_2c
    const-string/jumbo v0, "releaseWakeLockAsync"

    return-object v0

    .line 552
    :pswitch_30
    const-string v0, "acquireWakeLockAsync"

    return-object v0

    .line 548
    :pswitch_33
    const-string v0, "boostScreenBrightness"

    return-object v0

    .line 544
    :pswitch_36
    const-string/jumbo v0, "setStayOnSetting"

    return-object v0

    .line 540
    :pswitch_3a
    const-string v0, "getLastSleepReason"

    return-object v0

    .line 536
    :pswitch_3d
    const-string v0, "getLastShutdownReason"

    return-object v0

    .line 532
    :pswitch_40
    const-string v0, "crash"

    return-object v0

    .line 528
    :pswitch_43
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 524
    :pswitch_47
    const-string/jumbo v0, "rebootSafeMode"

    return-object v0

    .line 520
    :pswitch_4b
    const-string/jumbo v0, "reboot"

    return-object v0

    .line 516
    :pswitch_4f
    const-string v0, "getActiveLowPowerStandbyPorts"

    return-object v0

    .line 512
    :pswitch_52
    const-string/jumbo v0, "releaseLowPowerStandbyPorts"

    return-object v0

    .line 508
    :pswitch_56
    const-string v0, "acquireLowPowerStandbyPorts"

    return-object v0

    .line 504
    :pswitch_59
    const-string/jumbo v0, "isFeatureAllowedInLowPowerStandby"

    return-object v0

    .line 500
    :pswitch_5d
    const-string/jumbo v0, "isReasonAllowedInLowPowerStandby"

    return-object v0

    .line 496
    :pswitch_61
    const-string/jumbo v0, "isExemptFromLowPowerStandby"

    return-object v0

    .line 492
    :pswitch_65
    const-string v0, "getLowPowerStandbyPolicy"

    return-object v0

    .line 488
    :pswitch_68
    const-string/jumbo v0, "setLowPowerStandbyPolicy"

    return-object v0

    .line 484
    :pswitch_6c
    const-string v0, "forceLowPowerStandbyActive"

    return-object v0

    .line 480
    :pswitch_6f
    const-string/jumbo v0, "setLowPowerStandbyActiveDuringMaintenance"

    return-object v0

    .line 476
    :pswitch_73
    const-string/jumbo v0, "setLowPowerStandbyEnabled"

    return-object v0

    .line 472
    :pswitch_77
    const-string/jumbo v0, "isLowPowerStandbyEnabled"

    return-object v0

    .line 468
    :pswitch_7b
    const-string/jumbo v0, "isLowPowerStandbySupported"

    return-object v0

    .line 464
    :pswitch_7f
    const-string/jumbo v0, "isLightDeviceIdleMode"

    return-object v0

    .line 460
    :pswitch_83
    const-string/jumbo v0, "isDeviceIdleMode"

    return-object v0

    .line 456
    :pswitch_87
    const-string/jumbo v0, "isBatteryDischargePredictionPersonalized"

    return-object v0

    .line 452
    :pswitch_8b
    const-string v0, "getBatteryDischargePrediction"

    return-object v0

    .line 448
    :pswitch_8e
    const-string/jumbo v0, "setBatteryDischargePrediction"

    return-object v0

    .line 444
    :pswitch_92
    const-string v0, "getPowerSaveModeTrigger"

    return-object v0

    .line 440
    :pswitch_95
    const-string/jumbo v0, "setAdaptivePowerSaveEnabled"

    return-object v0

    .line 436
    :pswitch_99
    const-string/jumbo v0, "setAdaptivePowerSavePolicy"

    return-object v0

    .line 432
    :pswitch_9d
    const-string/jumbo v0, "setDynamicPowerSaveHint"

    return-object v0

    .line 428
    :pswitch_a1
    const-string/jumbo v0, "setFullPowerSavePolicy"

    return-object v0

    .line 424
    :pswitch_a5
    const-string v0, "getFullPowerSavePolicy"

    return-object v0

    .line 420
    :pswitch_a8
    const-string/jumbo v0, "isBatterySaverSupported"

    return-object v0

    .line 416
    :pswitch_ac
    const-string/jumbo v0, "setPowerSaveModeEnabled"

    return-object v0

    .line 412
    :pswitch_b0
    const-string v0, "getPowerSaveState"

    return-object v0

    .line 408
    :pswitch_b3
    const-string/jumbo v0, "isPowerSaveMode"

    return-object v0

    .line 404
    :pswitch_b7
    const-string v0, "areAutoPowerSaveModesEnabled"

    return-object v0

    .line 400
    :pswitch_ba
    const-string/jumbo v0, "isDisplayInteractive"

    return-object v0

    .line 396
    :pswitch_be
    const-string/jumbo v0, "isInteractive"

    return-object v0

    .line 392
    :pswitch_c2
    const-string v0, "getBrightnessConstraint"

    return-object v0

    .line 388
    :pswitch_c5
    const-string/jumbo v0, "nap"

    return-object v0

    .line 384
    :pswitch_c9
    const-string/jumbo v0, "goToSleepWithDisplayId"

    return-object v0

    .line 380
    :pswitch_cd
    const-string/jumbo v0, "goToSleep"

    return-object v0

    .line 376
    :pswitch_d1
    const-string/jumbo v0, "wakeUpWithDisplayId"

    return-object v0

    .line 372
    :pswitch_d5
    const-string/jumbo v0, "wakeUp"

    return-object v0

    .line 368
    :pswitch_d9
    const-string/jumbo v0, "userActivity"

    return-object v0

    .line 364
    :pswitch_dd
    const-string/jumbo v0, "removeScreenTimeoutPolicyListener"

    return-object v0

    .line 360
    :pswitch_e1
    const-string v0, "addScreenTimeoutPolicyListener"

    return-object v0

    .line 356
    :pswitch_e4
    const-string/jumbo v0, "isWakeLockLevelSupportedWithDisplayId"

    return-object v0

    .line 352
    :pswitch_e8
    const-string/jumbo v0, "isWakeLockLevelSupported"

    return-object v0

    .line 348
    :pswitch_ec
    const-string/jumbo v0, "updateWakeLockCallback"

    return-object v0

    .line 344
    :pswitch_f0
    const-string/jumbo v0, "updateWakeLockWorkSource"

    return-object v0

    .line 340
    :pswitch_f4
    const-string/jumbo v0, "setPowerModeChecked"

    return-object v0

    .line 336
    :pswitch_f8
    const-string/jumbo v0, "setPowerMode"

    return-object v0

    .line 332
    :pswitch_fc
    const-string/jumbo v0, "setPowerBoost"

    return-object v0

    .line 328
    :pswitch_100
    const-string/jumbo v0, "updateWakeLockUids"

    return-object v0

    .line 324
    :pswitch_104
    const-string/jumbo v0, "releaseWakeLock"

    return-object v0

    .line 320
    :pswitch_108
    const-string v0, "acquireWakeLockWithUid"

    return-object v0

    .line 316
    :pswitch_10b
    const-string v0, "acquireWakeLock"

    return-object v0

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_10b
        :pswitch_108
        :pswitch_104
        :pswitch_100
        :pswitch_fc
        :pswitch_f8
        :pswitch_f4
        :pswitch_f0
        :pswitch_ec
        :pswitch_e8
        :pswitch_e4
        :pswitch_e1
        :pswitch_dd
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b7
        :pswitch_b3
        :pswitch_b0
        :pswitch_ac
        :pswitch_a8
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_92
        :pswitch_8e
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6c
        :pswitch_68
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 307
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2641
    const/16 v0, 0x46

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 607
    invoke-static {p1}, Landroid/os/IPowerManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    move-object v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.IPowerManager"

    .line 612
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt p1, v12, :cond_10

    const v1, 0xffffff

    if-gt p1, v1, :cond_10

    .line 613
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    :cond_10
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 616
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    return v12

    .line 619
    :cond_19
    packed-switch p1, :pswitch_data_552

    .line 1344
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1337
    :pswitch_21
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->forceSuspend()Z

    move-result v1

    .line 1338
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1340
    goto/16 :goto_550

    .line 1326
    .end local v1    # "_result":Z
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1328
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1329
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z

    move-result v3

    .line 1331
    .local v3, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1333
    goto/16 :goto_550

    .line 1318
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_44
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressed()Z

    move-result v1

    .line 1319
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1321
    goto/16 :goto_550

    .line 1309
    .end local v1    # "_result":Z
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1310
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1311
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z

    move-result v2

    .line 1312
    .local v2, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1314
    goto/16 :goto_550

    .line 1298
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1300
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1301
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1302
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->suppressAmbientDisplay(Ljava/lang/String;Z)V

    .line 1303
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    goto/16 :goto_550

    .line 1290
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_76
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplayAvailable()Z

    move-result v1

    .line 1291
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1293
    goto/16 :goto_550

    .line 1282
    .end local v1    # "_result":Z
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1283
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1284
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setDozeAfterScreenOff(Z)V

    .line 1285
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    goto/16 :goto_550

    .line 1271
    .end local v1    # "_arg0":Z
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1273
    .restart local v1    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1274
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 1276
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    goto/16 :goto_550

    .line 1263
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_a4
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isScreenBrightnessBoosted()Z

    move-result v1

    .line 1264
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1266
    goto/16 :goto_550

    .line 1254
    .end local v1    # "_result":Z
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1256
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1257
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1258
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockUidsAsync(Landroid/os/IBinder;[I)V

    .line 1259
    goto/16 :goto_550

    .line 1244
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":[I
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1246
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1247
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1248
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->releaseWakeLockAsync(Landroid/os/IBinder;I)V

    .line 1249
    goto/16 :goto_550

    .line 1226
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1228
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1230
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1232
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1234
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 1236
    .local v5, "_arg4":Landroid/os/WorkSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1237
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1238
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->acquireWakeLockAsync(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 1239
    goto/16 :goto_550

    .line 1217
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/WorkSource;
    .end local v6    # "_arg5":Ljava/lang/String;
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1218
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1219
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->boostScreenBrightness(J)V

    .line 1220
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    goto/16 :goto_550

    .line 1208
    .end local v1    # "_arg0":J
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1209
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 1211
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    goto/16 :goto_550

    .line 1200
    .end local v1    # "_arg0":I
    :pswitch_113
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getLastSleepReason()I

    move-result v1

    .line 1201
    .local v1, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1203
    goto/16 :goto_550

    .line 1193
    .end local v1    # "_result":I
    :pswitch_11f
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getLastShutdownReason()I

    move-result v1

    .line 1194
    .restart local v1    # "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    goto/16 :goto_550

    .line 1185
    .end local v1    # "_result":I
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    goto/16 :goto_550

    .line 1172
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1174
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1176
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1177
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->shutdown(ZLjava/lang/String;Z)V

    .line 1179
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    goto/16 :goto_550

    .line 1161
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1163
    .restart local v1    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1164
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->rebootSafeMode(ZZ)V

    .line 1166
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    goto/16 :goto_550

    .line 1148
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :pswitch_164
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1150
    .restart local v1    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1152
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1153
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    .line 1155
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    goto/16 :goto_550

    .line 1140
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :pswitch_17b
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getActiveLowPowerStandbyPorts()Ljava/util/List;

    move-result-object v1

    .line 1141
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IPowerManager$LowPowerStandbyPortDescription;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1143
    goto/16 :goto_550

    .line 1132
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IPowerManager$LowPowerStandbyPortDescription;>;"
    :pswitch_187
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1133
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->releaseLowPowerStandbyPorts(Landroid/os/IBinder;)V

    .line 1135
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    goto/16 :goto_550

    .line 1121
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1123
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1124
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/os/IPowerManager$LowPowerStandbyPortDescription;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->acquireLowPowerStandbyPorts(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1126
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    goto/16 :goto_550

    .line 1111
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/os/IPowerManager$LowPowerStandbyPortDescription;>;"
    :pswitch_1ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isFeatureAllowedInLowPowerStandby(Ljava/lang/String;)Z

    move-result v2

    .line 1114
    .local v2, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1116
    goto/16 :goto_550

    .line 1101
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1102
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isReasonAllowedInLowPowerStandby(I)Z

    move-result v2

    .line 1104
    .restart local v2    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1106
    goto/16 :goto_550

    .line 1093
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1d1
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isExemptFromLowPowerStandby()Z

    move-result v1

    .line 1094
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1096
    goto/16 :goto_550

    .line 1086
    .end local v1    # "_result":Z
    :pswitch_1dd
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getLowPowerStandbyPolicy()Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    move-result-object v1

    .line 1087
    .local v1, "_result":Landroid/os/IPowerManager$LowPowerStandbyPolicy;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1089
    goto/16 :goto_550

    .line 1078
    .end local v1    # "_result":Landroid/os/IPowerManager$LowPowerStandbyPolicy;
    :pswitch_1e9
    sget-object v1, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    .line 1079
    .local v1, "_arg0":Landroid/os/IPowerManager$LowPowerStandbyPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyPolicy(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)V

    .line 1081
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    goto/16 :goto_550

    .line 1069
    .end local v1    # "_arg0":Landroid/os/IPowerManager$LowPowerStandbyPolicy;
    :pswitch_1fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1070
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->forceLowPowerStandbyActive(Z)V

    .line 1072
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    goto/16 :goto_550

    .line 1060
    .end local v1    # "_arg0":Z
    :pswitch_20b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1061
    .restart local v1    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyActiveDuringMaintenance(Z)V

    .line 1063
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    goto/16 :goto_550

    .line 1051
    .end local v1    # "_arg0":Z
    :pswitch_21a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1052
    .restart local v1    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyEnabled(Z)V

    .line 1054
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    goto/16 :goto_550

    .line 1043
    .end local v1    # "_arg0":Z
    :pswitch_229
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbyEnabled()Z

    move-result v1

    .line 1044
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1046
    goto/16 :goto_550

    .line 1036
    .end local v1    # "_result":Z
    :pswitch_235
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbySupported()Z

    move-result v1

    .line 1037
    .restart local v1    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1039
    goto/16 :goto_550

    .line 1029
    .end local v1    # "_result":Z
    :pswitch_241
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isLightDeviceIdleMode()Z

    move-result v1

    .line 1030
    .restart local v1    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1032
    goto/16 :goto_550

    .line 1022
    .end local v1    # "_result":Z
    :pswitch_24d
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isDeviceIdleMode()Z

    move-result v1

    .line 1023
    .restart local v1    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1025
    goto/16 :goto_550

    .line 1015
    .end local v1    # "_result":Z
    :pswitch_259
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isBatteryDischargePredictionPersonalized()Z

    move-result v1

    .line 1016
    .restart local v1    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1018
    goto/16 :goto_550

    .line 1008
    .end local v1    # "_result":Z
    :pswitch_265
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getBatteryDischargePrediction()Landroid/os/ParcelDuration;

    move-result-object v1

    .line 1009
    .local v1, "_result":Landroid/os/ParcelDuration;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1011
    goto/16 :goto_550

    .line 998
    .end local v1    # "_result":Landroid/os/ParcelDuration;
    :pswitch_271
    sget-object v1, Landroid/os/ParcelDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelDuration;

    .line 1000
    .local v1, "_arg0":Landroid/os/ParcelDuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1001
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V

    .line 1003
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    goto/16 :goto_550

    .line 990
    .end local v1    # "_arg0":Landroid/os/ParcelDuration;
    .end local v2    # "_arg1":Z
    :pswitch_288
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getPowerSaveModeTrigger()I

    move-result v1

    .line 991
    .local v1, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    goto/16 :goto_550

    .line 981
    .end local v1    # "_result":I
    :pswitch_294
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 982
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSaveEnabled(Z)Z

    move-result v2

    .line 984
    .local v2, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 986
    goto/16 :goto_550

    .line 971
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_2a7
    sget-object v1, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatterySaverPolicyConfig;

    .line 972
    .local v1, "_arg0":Landroid/os/BatterySaverPolicyConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v2

    .line 974
    .restart local v2    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 976
    goto/16 :goto_550

    .line 959
    .end local v1    # "_arg0":Landroid/os/BatterySaverPolicyConfig;
    .end local v2    # "_result":Z
    :pswitch_2be
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 961
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 962
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setDynamicPowerSaveHint(ZI)Z

    move-result v3

    .line 964
    .local v3, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 966
    goto/16 :goto_550

    .line 949
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_2d5
    sget-object v1, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatterySaverPolicyConfig;

    .line 950
    .local v1, "_arg0":Landroid/os/BatterySaverPolicyConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v2

    .line 952
    .local v2, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 954
    goto/16 :goto_550

    .line 941
    .end local v1    # "_arg0":Landroid/os/BatterySaverPolicyConfig;
    .end local v2    # "_result":Z
    :pswitch_2ec
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v1

    .line 942
    .local v1, "_result":Landroid/os/BatterySaverPolicyConfig;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 944
    goto/16 :goto_550

    .line 934
    .end local v1    # "_result":Landroid/os/BatterySaverPolicyConfig;
    :pswitch_2f8
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isBatterySaverSupported()Z

    move-result v1

    .line 935
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 937
    goto/16 :goto_550

    .line 925
    .end local v1    # "_result":Z
    :pswitch_304
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 926
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->setPowerSaveModeEnabled(Z)Z

    move-result v2

    .line 928
    .restart local v2    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 930
    goto/16 :goto_550

    .line 915
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 916
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 917
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    .line 918
    .local v2, "_result":Landroid/os/PowerSaveState;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 920
    goto/16 :goto_550

    .line 907
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/PowerSaveState;
    :pswitch_32a
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isPowerSaveMode()Z

    move-result v1

    .line 908
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 910
    goto/16 :goto_550

    .line 900
    .end local v1    # "_result":Z
    :pswitch_336
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->areAutoPowerSaveModesEnabled()Z

    move-result v1

    .line 901
    .restart local v1    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 903
    goto/16 :goto_550

    .line 891
    .end local v1    # "_result":Z
    :pswitch_342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 892
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isDisplayInteractive(I)Z

    move-result v2

    .line 894
    .local v2, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 896
    goto/16 :goto_550

    .line 883
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_355
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isInteractive()Z

    move-result v1

    .line 884
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 886
    goto/16 :goto_550

    .line 872
    .end local v1    # "_result":Z
    :pswitch_361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 874
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 875
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->getBrightnessConstraint(II)F

    move-result v3

    .line 877
    .local v3, "_result":F
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 879
    goto/16 :goto_550

    .line 863
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":F
    :pswitch_378
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 864
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->nap(J)V

    .line 866
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    goto/16 :goto_550

    .line 848
    .end local v1    # "_arg0":J
    :pswitch_387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 850
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 852
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 854
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 855
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->goToSleepWithDisplayId(IJII)V

    .line 857
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    goto/16 :goto_550

    .line 835
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_3a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 837
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 839
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 840
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IPowerManager$Stub;->goToSleep(JII)V

    .line 842
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    goto/16 :goto_550

    .line 818
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_3ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 820
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 822
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 824
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 826
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 827
    .local v6, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->wakeUpWithDisplayId(JILjava/lang/String;Ljava/lang/String;I)V

    .line 829
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    goto/16 :goto_550

    .line 803
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":I
    :pswitch_3da
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 805
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 807
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 809
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 810
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    goto/16 :goto_550

    .line 788
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_3f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 790
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 792
    .restart local v2    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 794
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 795
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->userActivity(IJII)V

    .line 797
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    goto/16 :goto_550

    .line 778
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 780
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IScreenTimeoutPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IScreenTimeoutPolicyListener;

    move-result-object v2

    .line 781
    .local v2, "_arg1":Landroid/os/IScreenTimeoutPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->removeScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V

    .line 783
    goto/16 :goto_550

    .line 768
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IScreenTimeoutPolicyListener;
    :pswitch_426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 770
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IScreenTimeoutPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IScreenTimeoutPolicyListener;

    move-result-object v2

    .line 771
    .restart local v2    # "_arg1":Landroid/os/IScreenTimeoutPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->addScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V

    .line 773
    goto/16 :goto_550

    .line 756
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IScreenTimeoutPolicyListener;
    :pswitch_43a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 758
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 759
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupportedWithDisplayId(II)Z

    move-result v3

    .line 761
    .local v3, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 763
    goto/16 :goto_550

    .line 746
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 747
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {p0, v1}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    move-result v2

    .line 749
    .local v2, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 751
    goto/16 :goto_550

    .line 735
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_464
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 737
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v2

    .line 738
    .local v2, "_arg1":Landroid/os/IWakeLockCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockCallback(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;)V

    .line 740
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    goto/16 :goto_550

    .line 722
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IWakeLockCallback;
    :pswitch_47b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 724
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 726
    .local v2, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 729
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_550

    .line 710
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 712
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 713
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setPowerModeChecked(IZ)Z

    move-result v3

    .line 715
    .local v3, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 717
    goto/16 :goto_550

    .line 700
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_4ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 702
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 703
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setPowerMode(IZ)V

    .line 705
    goto/16 :goto_550

    .line 690
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_4bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 692
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 693
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->setPowerBoost(II)V

    .line 695
    goto/16 :goto_550

    .line 679
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_4cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 681
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 682
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 684
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    goto :goto_550

    .line 668
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":[I
    :pswitch_4df
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 670
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 671
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {p0, v1, v2}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 673
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    goto :goto_550

    .line 647
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_4f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 649
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 651
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 657
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 659
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v7

    .line 660
    .local v7, "_arg6":Landroid/os/IWakeLockCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V

    .line 662
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    goto :goto_550

    .line 624
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/IWakeLockCallback;
    :pswitch_51c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 626
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 628
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 630
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 632
    .restart local v4    # "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/WorkSource;

    .line 634
    .local v5, "_arg4":Landroid/os/WorkSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 636
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 638
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v8

    .line 639
    .local v8, "_arg7":Landroid/os/IWakeLockCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    .line 641
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    nop

    .line 1347
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/WorkSource;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/os/IWakeLockCallback;
    :goto_550
    return v12

    nop

    :pswitch_data_552
    .packed-switch 0x1
        :pswitch_51c
        :pswitch_4f1
        :pswitch_4df
        :pswitch_4cd
        :pswitch_4bd
        :pswitch_4ad
        :pswitch_496
        :pswitch_47b
        :pswitch_464
        :pswitch_451
        :pswitch_43a
        :pswitch_426
        :pswitch_412
        :pswitch_3f6
        :pswitch_3da
        :pswitch_3ba
        :pswitch_3a3
        :pswitch_387
        :pswitch_378
        :pswitch_361
        :pswitch_355
        :pswitch_342
        :pswitch_336
        :pswitch_32a
        :pswitch_317
        :pswitch_304
        :pswitch_2f8
        :pswitch_2ec
        :pswitch_2d5
        :pswitch_2be
        :pswitch_2a7
        :pswitch_294
        :pswitch_288
        :pswitch_271
        :pswitch_265
        :pswitch_259
        :pswitch_24d
        :pswitch_241
        :pswitch_235
        :pswitch_229
        :pswitch_21a
        :pswitch_20b
        :pswitch_1fc
        :pswitch_1e9
        :pswitch_1dd
        :pswitch_1d1
        :pswitch_1be
        :pswitch_1ab
        :pswitch_196
        :pswitch_187
        :pswitch_17b
        :pswitch_164
        :pswitch_151
        :pswitch_13a
        :pswitch_12b
        :pswitch_11f
        :pswitch_113
        :pswitch_104
        :pswitch_f5
        :pswitch_d0
        :pswitch_c0
        :pswitch_b0
        :pswitch_a4
        :pswitch_91
        :pswitch_82
        :pswitch_76
        :pswitch_63
        :pswitch_50
        :pswitch_44
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method
