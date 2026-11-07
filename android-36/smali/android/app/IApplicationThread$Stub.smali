.class public abstract Landroid/app/IApplicationThread$Stub;
.super Landroid/os/Binder;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field static final greylist-max-o TRANSACTION_attachAgent:I = 0x32

.field static final blacklist TRANSACTION_attachStartupAgents:I = 0x33

.field static final greylist-max-o TRANSACTION_bindApplication:I = 0x5

.field static final greylist-max-o TRANSACTION_clearDnsCache:I = 0x1b

.field static final greylist-max-o TRANSACTION_dispatchPackageBroadcast:I = 0x16

.field static final greylist-max-o TRANSACTION_dumpActivity:I = 0x19

.field static final blacklist TRANSACTION_dumpCacheInfo:I = 0x23

.field static final greylist-max-o TRANSACTION_dumpDbInfo:I = 0x25

.field static final greylist-max-o TRANSACTION_dumpGfxInfo:I = 0x22

.field static final greylist-max-o TRANSACTION_dumpHeap:I = 0x18

.field static final greylist-max-o TRANSACTION_dumpMemInfo:I = 0x20

.field static final greylist-max-o TRANSACTION_dumpMemInfoProto:I = 0x21

.field static final greylist-max-o TRANSACTION_dumpProvider:I = 0x24

.field static final blacklist TRANSACTION_dumpResources:I = 0x1a

.field static final greylist-max-o TRANSACTION_dumpService:I = 0xd

.field static final blacklist TRANSACTION_getExecutableMethodFileOffsets:I = 0x40

.field static final greylist-max-o TRANSACTION_handleTrustStorageUpdate:I = 0x31

.field static final blacklist TRANSACTION_instrumentWithoutRestart:I = 0x3b

.field static final greylist-max-o TRANSACTION_notifyCleartextNetwork:I = 0x2d

.field static final blacklist TRANSACTION_notifyContentProviderPublishStatus:I = 0x3a

.field static final blacklist TRANSACTION_performDirectAction:I = 0x39

.field static final greylist-max-o TRANSACTION_processInBackground:I = 0xa

.field static final greylist-max-o TRANSACTION_profilerControl:I = 0x10

.field static final greylist-max-o TRANSACTION_requestAssistContextExtras:I = 0x27

.field static final blacklist TRANSACTION_requestDirectActions:I = 0x38

.field static final greylist-max-o TRANSACTION_runIsolatedEntryPoint:I = 0x6

.field static final greylist-max-o TRANSACTION_scheduleApplicationInfoChanged:I = 0x34

.field static final greylist-max-o TRANSACTION_scheduleBindService:I = 0xb

.field static final greylist-max-o TRANSACTION_scheduleCrash:I = 0x17

.field static final greylist-max-o TRANSACTION_scheduleCreateBackupAgent:I = 0x12

.field static final greylist-max-o TRANSACTION_scheduleCreateService:I = 0x3

.field static final greylist-max-o TRANSACTION_scheduleDestroyBackupAgent:I = 0x13

.field static final greylist-max-o TRANSACTION_scheduleEnterAnimationComplete:I = 0x2c

.field static final greylist-max-o TRANSACTION_scheduleExit:I = 0x7

.field static final greylist-max-o TRANSACTION_scheduleInstallProvider:I = 0x2a

.field static final greylist-max-o TRANSACTION_scheduleLocalVoiceInteractionStarted:I = 0x30

.field static final greylist-max-o TRANSACTION_scheduleLowMemory:I = 0xf

.field static final blacklist TRANSACTION_scheduleOnNewSceneTransitionInfo:I = 0x14

.field static final blacklist TRANSACTION_schedulePing:I = 0x3f

.field static final greylist-max-o TRANSACTION_scheduleReceiver:I = 0x1

.field static final blacklist TRANSACTION_scheduleReceiverList:I = 0x2

.field static final greylist-max-o TRANSACTION_scheduleRegisteredReceiver:I = 0xe

.field static final greylist-max-o TRANSACTION_scheduleServiceArgs:I = 0x8

.field static final greylist-max-o TRANSACTION_scheduleStopService:I = 0x4

.field static final greylist-max-o TRANSACTION_scheduleSuicide:I = 0x15

.field static final blacklist TRANSACTION_scheduleTaskFragmentTransaction:I = 0x37

.field static final blacklist TRANSACTION_scheduleTimeoutService:I = 0x3d

.field static final blacklist TRANSACTION_scheduleTimeoutServiceForType:I = 0x3e

.field static final greylist-max-o TRANSACTION_scheduleTransaction:I = 0x36

.field static final greylist-max-o TRANSACTION_scheduleTranslucentConversionComplete:I = 0x28

.field static final greylist-max-o TRANSACTION_scheduleTrimMemory:I = 0x1f

.field static final greylist-max-o TRANSACTION_scheduleUnbindService:I = 0xc

.field static final greylist-max-o TRANSACTION_setCoreSettings:I = 0x1d

.field static final greylist-max-o TRANSACTION_setNetworkBlockSeq:I = 0x35

.field static final greylist-max-o TRANSACTION_setProcessState:I = 0x29

.field static final greylist-max-o TRANSACTION_setSchedulingGroup:I = 0x11

.field static final greylist-max-o TRANSACTION_startBinderTracking:I = 0x2e

.field static final greylist-max-o TRANSACTION_stopBinderTrackingAndDump:I = 0x2f

.field static final greylist-max-o TRANSACTION_unstableProviderDied:I = 0x26

.field static final blacklist TRANSACTION_updateHttpProxy:I = 0x1c

.field static final greylist-max-o TRANSACTION_updatePackageCompatibilityInfo:I = 0x1e

.field static final greylist-max-o TRANSACTION_updateTimePrefs:I = 0x2b

.field static final greylist-max-o TRANSACTION_updateTimeZone:I = 0x9

.field static final blacklist TRANSACTION_updateUiTranslationState:I = 0x3c


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 489
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 490
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/IApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 498
    if-nez p0, :cond_4

    .line 499
    const/4 v0, 0x0

    return-object v0

    .line 501
    :cond_4
    const-string v0, "android.app.IApplicationThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 502
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IApplicationThread;

    if-eqz v1, :cond_14

    .line 503
    move-object v1, v0

    check-cast v1, Landroid/app/IApplicationThread;

    return-object v1

    .line 505
    :cond_14
    new-instance v1, Landroid/app/IApplicationThread$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 514
    packed-switch p0, :pswitch_data_f6

    .line 774
    const/4 v0, 0x0

    return-object v0

    .line 770
    :pswitch_5
    const-string v0, "getExecutableMethodFileOffsets"

    return-object v0

    .line 766
    :pswitch_8
    const-string/jumbo v0, "schedulePing"

    return-object v0

    .line 762
    :pswitch_c
    const-string/jumbo v0, "scheduleTimeoutServiceForType"

    return-object v0

    .line 758
    :pswitch_10
    const-string/jumbo v0, "scheduleTimeoutService"

    return-object v0

    .line 754
    :pswitch_14
    const-string/jumbo v0, "updateUiTranslationState"

    return-object v0

    .line 750
    :pswitch_18
    const-string/jumbo v0, "instrumentWithoutRestart"

    return-object v0

    .line 746
    :pswitch_1c
    const-string/jumbo v0, "notifyContentProviderPublishStatus"

    return-object v0

    .line 742
    :pswitch_20
    const-string/jumbo v0, "performDirectAction"

    return-object v0

    .line 738
    :pswitch_24
    const-string/jumbo v0, "requestDirectActions"

    return-object v0

    .line 734
    :pswitch_28
    const-string/jumbo v0, "scheduleTaskFragmentTransaction"

    return-object v0

    .line 730
    :pswitch_2c
    const-string/jumbo v0, "scheduleTransaction"

    return-object v0

    .line 726
    :pswitch_30
    const-string/jumbo v0, "setNetworkBlockSeq"

    return-object v0

    .line 722
    :pswitch_34
    const-string/jumbo v0, "scheduleApplicationInfoChanged"

    return-object v0

    .line 718
    :pswitch_38
    const-string v0, "attachStartupAgents"

    return-object v0

    .line 714
    :pswitch_3b
    const-string v0, "attachAgent"

    return-object v0

    .line 710
    :pswitch_3e
    const-string/jumbo v0, "handleTrustStorageUpdate"

    return-object v0

    .line 706
    :pswitch_42
    const-string/jumbo v0, "scheduleLocalVoiceInteractionStarted"

    return-object v0

    .line 702
    :pswitch_46
    const-string/jumbo v0, "stopBinderTrackingAndDump"

    return-object v0

    .line 698
    :pswitch_4a
    const-string/jumbo v0, "startBinderTracking"

    return-object v0

    .line 694
    :pswitch_4e
    const-string/jumbo v0, "notifyCleartextNetwork"

    return-object v0

    .line 690
    :pswitch_52
    const-string/jumbo v0, "scheduleEnterAnimationComplete"

    return-object v0

    .line 686
    :pswitch_56
    const-string/jumbo v0, "updateTimePrefs"

    return-object v0

    .line 682
    :pswitch_5a
    const-string/jumbo v0, "scheduleInstallProvider"

    return-object v0

    .line 678
    :pswitch_5e
    const-string/jumbo v0, "setProcessState"

    return-object v0

    .line 674
    :pswitch_62
    const-string/jumbo v0, "scheduleTranslucentConversionComplete"

    return-object v0

    .line 670
    :pswitch_66
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    .line 666
    :pswitch_6a
    const-string/jumbo v0, "unstableProviderDied"

    return-object v0

    .line 662
    :pswitch_6e
    const-string v0, "dumpDbInfo"

    return-object v0

    .line 658
    :pswitch_71
    const-string v0, "dumpProvider"

    return-object v0

    .line 654
    :pswitch_74
    const-string v0, "dumpCacheInfo"

    return-object v0

    .line 650
    :pswitch_77
    const-string v0, "dumpGfxInfo"

    return-object v0

    .line 646
    :pswitch_7a
    const-string v0, "dumpMemInfoProto"

    return-object v0

    .line 642
    :pswitch_7d
    const-string v0, "dumpMemInfo"

    return-object v0

    .line 638
    :pswitch_80
    const-string/jumbo v0, "scheduleTrimMemory"

    return-object v0

    .line 634
    :pswitch_84
    const-string/jumbo v0, "updatePackageCompatibilityInfo"

    return-object v0

    .line 630
    :pswitch_88
    const-string/jumbo v0, "setCoreSettings"

    return-object v0

    .line 626
    :pswitch_8c
    const-string/jumbo v0, "updateHttpProxy"

    return-object v0

    .line 622
    :pswitch_90
    const-string v0, "clearDnsCache"

    return-object v0

    .line 618
    :pswitch_93
    const-string v0, "dumpResources"

    return-object v0

    .line 614
    :pswitch_96
    const-string v0, "dumpActivity"

    return-object v0

    .line 610
    :pswitch_99
    const-string v0, "dumpHeap"

    return-object v0

    .line 606
    :pswitch_9c
    const-string/jumbo v0, "scheduleCrash"

    return-object v0

    .line 602
    :pswitch_a0
    const-string v0, "dispatchPackageBroadcast"

    return-object v0

    .line 598
    :pswitch_a3
    const-string/jumbo v0, "scheduleSuicide"

    return-object v0

    .line 594
    :pswitch_a7
    const-string/jumbo v0, "scheduleOnNewSceneTransitionInfo"

    return-object v0

    .line 590
    :pswitch_ab
    const-string/jumbo v0, "scheduleDestroyBackupAgent"

    return-object v0

    .line 586
    :pswitch_af
    const-string/jumbo v0, "scheduleCreateBackupAgent"

    return-object v0

    .line 582
    :pswitch_b3
    const-string/jumbo v0, "setSchedulingGroup"

    return-object v0

    .line 578
    :pswitch_b7
    const-string/jumbo v0, "profilerControl"

    return-object v0

    .line 574
    :pswitch_bb
    const-string/jumbo v0, "scheduleLowMemory"

    return-object v0

    .line 570
    :pswitch_bf
    const-string/jumbo v0, "scheduleRegisteredReceiver"

    return-object v0

    .line 566
    :pswitch_c3
    const-string v0, "dumpService"

    return-object v0

    .line 562
    :pswitch_c6
    const-string/jumbo v0, "scheduleUnbindService"

    return-object v0

    .line 558
    :pswitch_ca
    const-string/jumbo v0, "scheduleBindService"

    return-object v0

    .line 554
    :pswitch_ce
    const-string/jumbo v0, "processInBackground"

    return-object v0

    .line 550
    :pswitch_d2
    const-string/jumbo v0, "updateTimeZone"

    return-object v0

    .line 546
    :pswitch_d6
    const-string/jumbo v0, "scheduleServiceArgs"

    return-object v0

    .line 542
    :pswitch_da
    const-string/jumbo v0, "scheduleExit"

    return-object v0

    .line 538
    :pswitch_de
    const-string/jumbo v0, "runIsolatedEntryPoint"

    return-object v0

    .line 534
    :pswitch_e2
    const-string v0, "bindApplication"

    return-object v0

    .line 530
    :pswitch_e5
    const-string/jumbo v0, "scheduleStopService"

    return-object v0

    .line 526
    :pswitch_e9
    const-string/jumbo v0, "scheduleCreateService"

    return-object v0

    .line 522
    :pswitch_ed
    const-string/jumbo v0, "scheduleReceiverList"

    return-object v0

    .line 518
    :pswitch_f1
    const-string/jumbo v0, "scheduleReceiver"

    return-object v0

    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_f1
        :pswitch_ed
        :pswitch_e9
        :pswitch_e5
        :pswitch_e2
        :pswitch_de
        :pswitch_da
        :pswitch_d6
        :pswitch_d2
        :pswitch_ce
        :pswitch_ca
        :pswitch_c6
        :pswitch_c3
        :pswitch_bf
        :pswitch_bb
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_34
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

    .line 509
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2528
    const/16 v0, 0x3f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 781
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 40
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    const-string v15, "android.app.IApplicationThread"

    .line 786
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_13

    const v1, 0xffffff

    if-gt v13, v1, :cond_13

    .line 787
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    :cond_13
    const v1, 0x5f4e5446

    if-ne v13, v1, :cond_1e

    .line 790
    move-object/from16 v11, p3

    invoke-virtual {v11, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 791
    return v10

    .line 793
    :cond_1e
    move-object/from16 v11, p3

    packed-switch v13, :pswitch_data_762

    .line 1547
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1538
    :pswitch_28
    sget-object v1, Landroid/os/instrumentation/MethodDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/instrumentation/MethodDescriptor;

    .line 1540
    .local v1, "_arg0":Landroid/os/instrumentation/MethodDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/instrumentation/IOffsetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/instrumentation/IOffsetCallback;

    move-result-object v2

    .line 1541
    .local v2, "_arg1":Landroid/os/instrumentation/IOffsetCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1542
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->getExecutableMethodFileOffsets(Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V

    .line 1543
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1530
    .end local v1    # "_arg0":Landroid/os/instrumentation/MethodDescriptor;
    .end local v2    # "_arg1":Landroid/os/instrumentation/IOffsetCallback;
    :pswitch_44
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 1531
    .local v1, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1532
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->schedulePing(Landroid/os/RemoteCallback;)V

    .line 1533
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1518
    .end local v1    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_58
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1520
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1522
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1523
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1524
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V

    .line 1525
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1508
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_70
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1510
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1511
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1512
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleTimeoutService(Landroid/os/IBinder;I)V

    .line 1513
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1490
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_84
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1492
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1494
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/translation/TranslationSpec;

    .line 1496
    .local v3, "_arg2":Landroid/view/translation/TranslationSpec;
    sget-object v4, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/translation/TranslationSpec;

    .line 1498
    .local v4, "_arg3":Landroid/view/translation/TranslationSpec;
    sget-object v5, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1500
    .local v5, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    sget-object v6, Landroid/view/translation/UiTranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/translation/UiTranslationSpec;

    .line 1501
    .local v6, "_arg5":Landroid/view/translation/UiTranslationSpec;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1502
    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Stub;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 1503
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1474
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/view/translation/TranslationSpec;
    .end local v4    # "_arg3":Landroid/view/translation/TranslationSpec;
    .end local v5    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v6    # "_arg5":Landroid/view/translation/UiTranslationSpec;
    :pswitch_b6
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ComponentName;

    .line 1476
    .local v1, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    .line 1478
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v3

    .line 1480
    .local v3, "_arg2":Landroid/app/IInstrumentationWatcher;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v4

    .line 1482
    .local v4, "_arg3":Landroid/app/IUiAutomationConnection;
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 1483
    .local v5, "_arg4":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1484
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V

    .line 1485
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1460
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/app/IInstrumentationWatcher;
    .end local v4    # "_arg3":Landroid/app/IUiAutomationConnection;
    .end local v5    # "_arg4":Landroid/content/pm/ApplicationInfo;
    :pswitch_ef
    sget-object v1, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ContentProviderHolder;

    .line 1462
    .local v1, "_arg0":Landroid/app/ContentProviderHolder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1464
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1466
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1467
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1468
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V

    .line 1469
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1444
    .end local v1    # "_arg0":Landroid/app/ContentProviderHolder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    :pswitch_10f
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1446
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1448
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1450
    .local v3, "_arg2":Landroid/os/Bundle;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 1452
    .local v4, "_arg3":Landroid/os/RemoteCallback;
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 1453
    .local v5, "_arg4":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1454
    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1455
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1430
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Landroid/os/RemoteCallback;
    .end local v5    # "_arg4":Landroid/os/RemoteCallback;
    :pswitch_13b
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1432
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v2

    .line 1434
    .local v2, "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 1436
    .local v3, "_arg2":Landroid/os/RemoteCallback;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 1437
    .restart local v4    # "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1438
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1439
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1420
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    .end local v3    # "_arg2":Landroid/os/RemoteCallback;
    .end local v4    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_163
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    .line 1422
    .local v1, "_arg0":Landroid/window/ITaskFragmentOrganizer;
    sget-object v2, Landroid/window/TaskFragmentTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentTransaction;

    .line 1423
    .local v2, "_arg1":Landroid/window/TaskFragmentTransaction;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1424
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V

    .line 1425
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1412
    .end local v1    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    .end local v2    # "_arg1":Landroid/window/TaskFragmentTransaction;
    :pswitch_17f
    sget-object v1, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/servertransaction/ClientTransaction;

    .line 1413
    .local v1, "_arg0":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1415
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1404
    .end local v1    # "_arg0":Landroid/app/servertransaction/ClientTransaction;
    :pswitch_193
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1405
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1406
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->setNetworkBlockSeq(J)V

    .line 1407
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1396
    .end local v1    # "_arg0":J
    :pswitch_1a3
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1397
    .local v1, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1398
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 1399
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1388
    .end local v1    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :pswitch_1b7
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1390
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->attachStartupAgents(Ljava/lang/String;)V

    .line 1391
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1380
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1c7
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1381
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1382
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->attachAgent(Ljava/lang/String;)V

    .line 1383
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1374
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1d7
    invoke-virtual {v0}, Landroid/app/IApplicationThread$Stub;->handleTrustStorageUpdate()V

    .line 1375
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1365
    :pswitch_1e0
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1367
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v2

    .line 1368
    .local v2, "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1369
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1370
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1357
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    :pswitch_1f8
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1358
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1359
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    .line 1360
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1351
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_20c
    invoke-virtual {v0}, Landroid/app/IApplicationThread$Stub;->startBinderTracking()V

    .line 1352
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1344
    :pswitch_215
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1345
    .local v1, "_arg0":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1346
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->notifyCleartextNetwork([B)V

    .line 1347
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1336
    .end local v1    # "_arg0":[B
    :pswitch_225
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1337
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1338
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 1339
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1328
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_235
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1329
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->updateTimePrefs(I)V

    .line 1331
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1320
    .end local v1    # "_arg0":I
    :pswitch_245
    sget-object v1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 1321
    .local v1, "_arg0":Landroid/content/pm/ProviderInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1322
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 1323
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1312
    .end local v1    # "_arg0":Landroid/content/pm/ProviderInfo;
    :pswitch_259
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1313
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1314
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setProcessState(I)V

    .line 1315
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1302
    .end local v1    # "_arg0":I
    :pswitch_269
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1304
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1305
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1306
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 1307
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1286
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_27d
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1288
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1290
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1292
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1294
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1295
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1296
    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 1297
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1278
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_29d
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1279
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 1281
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1268
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_2ad
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1270
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1271
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1272
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1273
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1256
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_2c5
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1258
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1260
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 1261
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1262
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 1263
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1246
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":[Ljava/lang/String;
    :pswitch_2e1
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1248
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1249
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1251
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1236
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_2f9
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1238
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1239
    .restart local v2    # "_arg1":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1240
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1241
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1216
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_311
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1218
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Debug$MemoryInfo;

    .line 1220
    .local v2, "_arg1":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1222
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1224
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1226
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1228
    .local v6, "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 1229
    .local v7, "_arg6":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-virtual/range {v0 .. v7}, Landroid/app/IApplicationThread$Stub;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V

    .line 1231
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1192
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/Debug$MemoryInfo;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":[Ljava/lang/String;
    :pswitch_341
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1194
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Debug$MemoryInfo;

    .line 1196
    .restart local v2    # "_arg1":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1198
    .restart local v3    # "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1200
    .restart local v4    # "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1202
    .restart local v5    # "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1204
    .restart local v6    # "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1206
    .local v7, "_arg6":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1208
    .local v8, "_arg7":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 1209
    .local v9, "_arg8":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V

    .line 1211
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1184
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/Debug$MemoryInfo;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Z
    .end local v9    # "_arg8":[Ljava/lang/String;
    :pswitch_37d
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1185
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1186
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleTrimMemory(I)V

    .line 1187
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1174
    .end local v1    # "_arg0":I
    :pswitch_38d
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1176
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    .line 1177
    .local v2, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 1179
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1166
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :pswitch_3a5
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1167
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setCoreSettings(Landroid/os/Bundle;)V

    .line 1169
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1160
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :pswitch_3b9
    invoke-virtual {v0}, Landroid/app/IApplicationThread$Stub;->updateHttpProxy()V

    .line 1161
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1155
    :pswitch_3c2
    invoke-virtual {v0}, Landroid/app/IApplicationThread$Stub;->clearDnsCache()V

    .line 1156
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1146
    :pswitch_3cb
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1148
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 1149
    .local v2, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1150
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 1151
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1132
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_3e7
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1134
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1136
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1138
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1139
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1140
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1141
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1112
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    :pswitch_407
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1114
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1116
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1118
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1120
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1122
    .local v5, "_arg4":Ljava/lang/String;
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 1124
    .local v6, "_arg5":Landroid/os/ParcelFileDescriptor;
    sget-object v7, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/RemoteCallback;

    .line 1125
    .local v7, "_arg6":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual/range {v0 .. v7}, Landroid/app/IApplicationThread$Stub;->dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 1127
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1100
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "_arg6":Landroid/os/RemoteCallback;
    :pswitch_437
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1102
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1104
    .local v2, "_arg1":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1105
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1106
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1107
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1090
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_453
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1092
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1093
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1094
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1095
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1084
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_467
    invoke-virtual {v0}, Landroid/app/IApplicationThread$Stub;->scheduleSuicide()V

    .line 1085
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1075
    :pswitch_470
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1077
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/app/ActivityOptions$SceneTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 1078
    .local v2, "_arg1":Landroid/app/ActivityOptions$SceneTransitionInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 1080
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1065
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/app/ActivityOptions$SceneTransitionInfo;
    :pswitch_488
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1067
    .local v1, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1068
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1069
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;I)V

    .line 1070
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1051
    .end local v1    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "_arg1":I
    :pswitch_4a0
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1053
    .restart local v1    # "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1055
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1057
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1058
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;III)V

    .line 1060
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1043
    .end local v1    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_4c0
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1044
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setSchedulingGroup(I)V

    .line 1046
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1031
    .end local v1    # "_arg0":I
    :pswitch_4d0
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1033
    .local v1, "_arg0":Z
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 1035
    .local v2, "_arg1":Landroid/app/ProfilerInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1036
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 1038
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 1025
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/app/ProfilerInfo;
    .end local v3    # "_arg2":I
    :pswitch_4ec
    invoke-virtual {v0}, Landroid/app/IApplicationThread$Stub;->scheduleLowMemory()V

    .line 1026
    move/from16 v32, v10

    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 996
    :pswitch_4f5
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v1

    .line 998
    .local v1, "_arg0":Landroid/content/IIntentReceiver;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1000
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1002
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1004
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 1006
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1008
    .local v6, "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1010
    .local v7, "_arg6":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1012
    .restart local v8    # "_arg7":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1014
    .local v9, "_arg8":I
    move v12, v10

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1016
    .local v10, "_arg9":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1018
    .local v11, "_arg10":I
    move/from16 v16, v12

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1019
    .local v12, "_arg11":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    move/from16 v32, v16

    invoke-virtual/range {v0 .. v12}, Landroid/app/IApplicationThread$Stub;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    .line 1021
    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 984
    .end local v1    # "_arg0":Landroid/content/IIntentReceiver;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Z
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":I
    .end local v12    # "_arg11":Ljava/lang/String;
    :pswitch_540
    move/from16 v32, v10

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 986
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 988
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 991
    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 974
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":[Ljava/lang/String;
    :pswitch_55c
    move/from16 v32, v10

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 976
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 977
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 979
    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 958
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :pswitch_574
    move/from16 v32, v10

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 960
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 962
    .restart local v2    # "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 964
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 966
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 967
    .local v5, "_arg4":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Stub;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V

    .line 969
    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 952
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":J
    :pswitch_598
    move/from16 v32, v10

    invoke-virtual {v0}, Landroid/app/IApplicationThread$Stub;->processInBackground()V

    .line 953
    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 947
    :pswitch_5a1
    move/from16 v32, v10

    invoke-virtual {v0}, Landroid/app/IApplicationThread$Stub;->updateTimeZone()V

    .line 948
    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 938
    :pswitch_5aa
    move/from16 v32, v10

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 940
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 941
    .local v2, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    .line 943
    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 932
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_5c2
    move/from16 v32, v10

    invoke-virtual {v0}, Landroid/app/IApplicationThread$Stub;->scheduleExit()V

    .line 933
    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 923
    :pswitch_5cb
    move/from16 v32, v10

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 926
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    .line 928
    move-object/from16 v33, v15

    goto/16 :goto_760

    .line 858
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_5df
    move/from16 v32, v10

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 860
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 862
    .local v2, "_arg1":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 864
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 866
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 868
    .local v5, "_arg4":Z
    sget-object v6, Landroid/content/pm/ProviderInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ProviderInfoList;

    .line 870
    .local v6, "_arg5":Landroid/content/pm/ProviderInfoList;
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 872
    .local v7, "_arg6":Landroid/content/ComponentName;
    sget-object v8, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ProfilerInfo;

    .line 874
    .local v8, "_arg7":Landroid/app/ProfilerInfo;
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 876
    .local v9, "_arg8":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v10

    .line 878
    .local v10, "_arg9":Landroid/app/IInstrumentationWatcher;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v11

    .line 880
    .local v11, "_arg10":Landroid/app/IUiAutomationConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 882
    .local v12, "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 884
    .local v13, "_arg12":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 886
    .local v16, "_arg13":Z
    move-object/from16 v17, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .local v17, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 888
    .local v15, "_arg14":Z
    move/from16 v18, v16

    .end local v16    # "_arg13":Z
    .local v18, "_arg13":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 890
    .local v16, "_arg15":Z
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 892
    .local v0, "_arg16":Landroid/content/res/Configuration;
    move-object/from16 v19, v0

    .end local v0    # "_arg16":Landroid/content/res/Configuration;
    .local v19, "_arg16":Landroid/content/res/Configuration;
    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    .line 894
    .local v0, "_arg17":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v21, v0

    .end local v0    # "_arg17":Landroid/content/res/CompatibilityInfo;
    .local v21, "_arg17":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 895
    .local v0, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v20, v17

    move-object/from16 v17, v19

    .end local v19    # "_arg16":Landroid/content/res/Configuration;
    .local v17, "_arg16":Landroid/content/res/Configuration;
    .local v20, "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v19

    .line 897
    .local v19, "_arg18":Ljava/util/Map;
    move-object/from16 v22, v0

    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .local v22, "cl":Ljava/lang/ClassLoader;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 899
    .local v0, "_arg19":Landroid/os/Bundle;
    move/from16 v23, v18

    move-object/from16 v18, v21

    .end local v21    # "_arg17":Landroid/content/res/CompatibilityInfo;
    .local v18, "_arg17":Landroid/content/res/CompatibilityInfo;
    .local v23, "_arg13":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 901
    .local v21, "_arg20":Ljava/lang/String;
    move-object/from16 v24, v0

    .end local v0    # "_arg19":Landroid/os/Bundle;
    .local v24, "_arg19":Landroid/os/Bundle;
    sget-object v0, Landroid/content/AutofillOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AutofillOptions;

    .line 903
    .local v0, "_arg21":Landroid/content/AutofillOptions;
    move-object/from16 v25, v0

    .end local v0    # "_arg21":Landroid/content/AutofillOptions;
    .local v25, "_arg21":Landroid/content/AutofillOptions;
    sget-object v0, Landroid/content/ContentCaptureOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentCaptureOptions;

    .line 905
    .local v0, "_arg22":Landroid/content/ContentCaptureOptions;
    move-object/from16 v26, v20

    move-object/from16 v20, v24

    .end local v24    # "_arg19":Landroid/os/Bundle;
    .local v20, "_arg19":Landroid/os/Bundle;
    .local v26, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v24

    .line 907
    .local v24, "_arg23":[J
    move-object/from16 v27, v22

    move-object/from16 v22, v25

    .end local v25    # "_arg21":Landroid/content/AutofillOptions;
    .local v22, "_arg21":Landroid/content/AutofillOptions;
    .local v27, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v14}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v25

    .line 909
    .local v25, "_arg24":[J
    move-object/from16 v28, v0

    .end local v0    # "_arg22":Landroid/content/ContentCaptureOptions;
    .local v28, "_arg22":Landroid/content/ContentCaptureOptions;
    sget-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SharedMemory;

    .line 911
    .local v0, "_arg25":Landroid/os/SharedMemory;
    move-object/from16 v29, v27

    .end local v27    # "cl":Ljava/lang/ClassLoader;
    .local v29, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v14}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v27

    .line 913
    .local v27, "_arg26":Ljava/io/FileDescriptor;
    move/from16 v14, v23

    move-object/from16 v23, v28

    move-object/from16 v30, v29

    .end local v28    # "_arg22":Landroid/content/ContentCaptureOptions;
    .end local v29    # "cl":Ljava/lang/ClassLoader;
    .local v14, "_arg13":Z
    .local v23, "_arg22":Landroid/content/ContentCaptureOptions;
    .local v30, "cl":Ljava/lang/ClassLoader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 915
    .local v28, "_arg27":J
    move-object/from16 v33, v30

    .end local v30    # "cl":Ljava/lang/ClassLoader;
    .local v33, "cl":Ljava/lang/ClassLoader;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 916
    .local v30, "_arg28":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 917
    move-object/from16 v34, v33

    move-object/from16 v33, v26

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    .end local v0    # "_arg25":Landroid/os/SharedMemory;
    .local v26, "_arg25":Landroid/os/SharedMemory;
    .local v33, "descriptor":Ljava/lang/String;
    .local v34, "cl":Ljava/lang/ClassLoader;
    invoke-virtual/range {v0 .. v31}, Landroid/app/IApplicationThread$Stub;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[J[JLandroid/os/SharedMemory;Ljava/io/FileDescriptor;JJ)V

    .line 918
    move-object/from16 v14, p2

    goto/16 :goto_760

    .line 850
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/content/pm/ProviderInfoList;
    .end local v7    # "_arg6":Landroid/content/ComponentName;
    .end local v8    # "_arg7":Landroid/app/ProfilerInfo;
    .end local v9    # "_arg8":Landroid/os/Bundle;
    .end local v10    # "_arg9":Landroid/app/IInstrumentationWatcher;
    .end local v11    # "_arg10":Landroid/app/IUiAutomationConnection;
    .end local v12    # "_arg11":I
    .end local v13    # "_arg12":Z
    .end local v14    # "_arg13":Z
    .end local v16    # "_arg15":Z
    .end local v17    # "_arg16":Landroid/content/res/Configuration;
    .end local v18    # "_arg17":Landroid/content/res/CompatibilityInfo;
    .end local v19    # "_arg18":Ljava/util/Map;
    .end local v20    # "_arg19":Landroid/os/Bundle;
    .end local v21    # "_arg20":Ljava/lang/String;
    .end local v22    # "_arg21":Landroid/content/AutofillOptions;
    .end local v23    # "_arg22":Landroid/content/ContentCaptureOptions;
    .end local v24    # "_arg23":[J
    .end local v25    # "_arg24":[J
    .end local v26    # "_arg25":Landroid/os/SharedMemory;
    .end local v27    # "_arg26":Ljava/io/FileDescriptor;
    .end local v28    # "_arg27":J
    .end local v30    # "_arg28":J
    .end local v33    # "descriptor":Ljava/lang/String;
    .end local v34    # "cl":Ljava/lang/ClassLoader;
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_6cd
    move/from16 v32, v10

    move-object/from16 v33, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 851
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleStopService(Landroid/os/IBinder;)V

    .line 853
    move-object/from16 v14, p2

    goto/16 :goto_760

    .line 836
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    :pswitch_6df
    move/from16 v32, v10

    move-object/from16 v33, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 838
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p2

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 840
    .local v2, "_arg1":Landroid/content/pm/ServiceInfo;
    sget-object v3, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/CompatibilityInfo;

    .line 842
    .local v3, "_arg2":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 843
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 845
    goto :goto_760

    .line 828
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/pm/ServiceInfo;
    .end local v3    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .end local v4    # "_arg3":I
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    :pswitch_704
    move/from16 v32, v10

    move-object/from16 v33, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/app/ReceiverInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 829
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/ReceiverInfo;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleReceiverList(Ljava/util/List;)V

    .line 831
    goto :goto_760

    .line 798
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/ReceiverInfo;>;"
    .end local v33    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    :pswitch_715
    move/from16 v32, v10

    move-object/from16 v33, v15

    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v33    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 800
    .local v1, "_arg0":Landroid/content/Intent;
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 802
    .local v2, "_arg1":Landroid/content/pm/ActivityInfo;
    sget-object v3, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/CompatibilityInfo;

    .line 804
    .restart local v3    # "_arg2":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 806
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 808
    .local v5, "_arg4":Ljava/lang/String;
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 810
    .local v6, "_arg5":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 812
    .local v7, "_arg6":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 814
    .local v8, "_arg7":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 816
    .local v9, "_arg8":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 818
    .local v10, "_arg9":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 820
    .local v11, "_arg10":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 821
    .local v12, "_arg11":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual/range {v0 .. v12}, Landroid/app/IApplicationThread$Stub;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V

    .line 823
    nop

    .line 1550
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Landroid/content/pm/ActivityInfo;
    .end local v3    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Z
    .end local v9    # "_arg8":I
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":I
    .end local v12    # "_arg11":Ljava/lang/String;
    :goto_760
    return v32

    nop

    :pswitch_data_762
    .packed-switch 0x1
        :pswitch_715
        :pswitch_704
        :pswitch_6df
        :pswitch_6cd
        :pswitch_5df
        :pswitch_5cb
        :pswitch_5c2
        :pswitch_5aa
        :pswitch_5a1
        :pswitch_598
        :pswitch_574
        :pswitch_55c
        :pswitch_540
        :pswitch_4f5
        :pswitch_4ec
        :pswitch_4d0
        :pswitch_4c0
        :pswitch_4a0
        :pswitch_488
        :pswitch_470
        :pswitch_467
        :pswitch_453
        :pswitch_437
        :pswitch_407
        :pswitch_3e7
        :pswitch_3cb
        :pswitch_3c2
        :pswitch_3b9
        :pswitch_3a5
        :pswitch_38d
        :pswitch_37d
        :pswitch_341
        :pswitch_311
        :pswitch_2f9
        :pswitch_2e1
        :pswitch_2c5
        :pswitch_2ad
        :pswitch_29d
        :pswitch_27d
        :pswitch_269
        :pswitch_259
        :pswitch_245
        :pswitch_235
        :pswitch_225
        :pswitch_215
        :pswitch_20c
        :pswitch_1f8
        :pswitch_1e0
        :pswitch_1d7
        :pswitch_1c7
        :pswitch_1b7
        :pswitch_1a3
        :pswitch_193
        :pswitch_17f
        :pswitch_163
        :pswitch_13b
        :pswitch_10f
        :pswitch_ef
        :pswitch_b6
        :pswitch_84
        :pswitch_70
        :pswitch_58
        :pswitch_44
        :pswitch_28
    .end packed-switch
.end method
