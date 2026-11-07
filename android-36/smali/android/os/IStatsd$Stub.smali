.class public abstract Landroid/os/IStatsd$Stub;
.super Landroid/os/Binder;
.source "IStatsd.java"

# interfaces
.implements Landroid/os/IStatsd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStatsd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStatsd$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addConfiguration:I = 0xd

.field static final blacklist TRANSACTION_addSubscription:I = 0x1f

.field static final blacklist TRANSACTION_allPullersFromBootRegistered:I = 0x15

.field static final blacklist TRANSACTION_bootCompleted:I = 0x2

.field static final blacklist TRANSACTION_flushSubscription:I = 0x21

.field static final blacklist TRANSACTION_getData:I = 0xb

.field static final blacklist TRANSACTION_getDataFd:I = 0x22

.field static final blacklist TRANSACTION_getMetadata:I = 0xc

.field static final blacklist TRANSACTION_getRegisteredExperimentIds:I = 0x1a

.field static final blacklist TRANSACTION_informAlarmForSubscriberTriggeringFired:I = 0x6

.field static final blacklist TRANSACTION_informAllUidData:I = 0x8

.field static final blacklist TRANSACTION_informAnomalyAlarmFired:I = 0x4

.field static final blacklist TRANSACTION_informDeviceShutdown:I = 0x7

.field static final blacklist TRANSACTION_informOnePackage:I = 0x9

.field static final blacklist TRANSACTION_informOnePackageRemoved:I = 0xa

.field static final blacklist TRANSACTION_informPollAlarmFired:I = 0x5

.field static final blacklist TRANSACTION_querySql:I = 0x1c

.field static final blacklist TRANSACTION_registerNativePullAtomCallback:I = 0x17

.field static final blacklist TRANSACTION_registerPullAtomCallback:I = 0x16

.field static final blacklist TRANSACTION_removeActiveConfigsChangedOperation:I = 0x11

.field static final blacklist TRANSACTION_removeConfiguration:I = 0x12

.field static final blacklist TRANSACTION_removeDataFetchOperation:I = 0xf

.field static final blacklist TRANSACTION_removeRestrictedMetricsChangedOperation:I = 0x1e

.field static final blacklist TRANSACTION_removeSubscription:I = 0x20

.field static final blacklist TRANSACTION_setActiveConfigsChangedOperation:I = 0x10

.field static final blacklist TRANSACTION_setBroadcastSubscriber:I = 0x13

.field static final blacklist TRANSACTION_setDataFetchOperation:I = 0xe

.field static final blacklist TRANSACTION_setRestrictedMetricsChangedOperation:I = 0x1d

.field static final blacklist TRANSACTION_statsCompanionReady:I = 0x3

.field static final blacklist TRANSACTION_systemRunning:I = 0x1

.field static final blacklist TRANSACTION_unregisterNativePullAtomCallback:I = 0x19

.field static final blacklist TRANSACTION_unregisterPullAtomCallback:I = 0x18

.field static final blacklist TRANSACTION_unsetBroadcastSubscriber:I = 0x14

.field static final blacklist TRANSACTION_updateProperties:I = 0x1b


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 316
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 317
    const-string v0, "android.os.IStatsd"

    invoke-virtual {p0, p0, v0}, Landroid/os/IStatsd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IStatsd;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 325
    if-nez p0, :cond_4

    .line 326
    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_4
    const-string v0, "android.os.IStatsd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 329
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IStatsd;

    if-eqz v1, :cond_14

    .line 330
    move-object v1, v0

    check-cast v1, Landroid/os/IStatsd;

    return-object v1

    .line 332
    :cond_14
    new-instance v1, Landroid/os/IStatsd$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IStatsd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 341
    packed-switch p0, :pswitch_data_6c

    .line 481
    const/4 v0, 0x0

    return-object v0

    .line 477
    :pswitch_5
    const-string v0, "getDataFd"

    return-object v0

    .line 473
    :pswitch_8
    const-string v0, "flushSubscription"

    return-object v0

    .line 469
    :pswitch_b
    const-string v0, "removeSubscription"

    return-object v0

    .line 465
    :pswitch_e
    const-string v0, "addSubscription"

    return-object v0

    .line 461
    :pswitch_11
    const-string v0, "removeRestrictedMetricsChangedOperation"

    return-object v0

    .line 457
    :pswitch_14
    const-string v0, "setRestrictedMetricsChangedOperation"

    return-object v0

    .line 453
    :pswitch_17
    const-string v0, "querySql"

    return-object v0

    .line 449
    :pswitch_1a
    const-string v0, "updateProperties"

    return-object v0

    .line 445
    :pswitch_1d
    const-string v0, "getRegisteredExperimentIds"

    return-object v0

    .line 441
    :pswitch_20
    const-string v0, "unregisterNativePullAtomCallback"

    return-object v0

    .line 437
    :pswitch_23
    const-string v0, "unregisterPullAtomCallback"

    return-object v0

    .line 433
    :pswitch_26
    const-string v0, "registerNativePullAtomCallback"

    return-object v0

    .line 429
    :pswitch_29
    const-string v0, "registerPullAtomCallback"

    return-object v0

    .line 425
    :pswitch_2c
    const-string v0, "allPullersFromBootRegistered"

    return-object v0

    .line 421
    :pswitch_2f
    const-string v0, "unsetBroadcastSubscriber"

    return-object v0

    .line 417
    :pswitch_32
    const-string v0, "setBroadcastSubscriber"

    return-object v0

    .line 413
    :pswitch_35
    const-string v0, "removeConfiguration"

    return-object v0

    .line 409
    :pswitch_38
    const-string v0, "removeActiveConfigsChangedOperation"

    return-object v0

    .line 405
    :pswitch_3b
    const-string v0, "setActiveConfigsChangedOperation"

    return-object v0

    .line 401
    :pswitch_3e
    const-string v0, "removeDataFetchOperation"

    return-object v0

    .line 397
    :pswitch_41
    const-string v0, "setDataFetchOperation"

    return-object v0

    .line 393
    :pswitch_44
    const-string v0, "addConfiguration"

    return-object v0

    .line 389
    :pswitch_47
    const-string v0, "getMetadata"

    return-object v0

    .line 385
    :pswitch_4a
    const-string v0, "getData"

    return-object v0

    .line 381
    :pswitch_4d
    const-string v0, "informOnePackageRemoved"

    return-object v0

    .line 377
    :pswitch_50
    const-string v0, "informOnePackage"

    return-object v0

    .line 373
    :pswitch_53
    const-string v0, "informAllUidData"

    return-object v0

    .line 369
    :pswitch_56
    const-string v0, "informDeviceShutdown"

    return-object v0

    .line 365
    :pswitch_59
    const-string v0, "informAlarmForSubscriberTriggeringFired"

    return-object v0

    .line 361
    :pswitch_5c
    const-string v0, "informPollAlarmFired"

    return-object v0

    .line 357
    :pswitch_5f
    const-string v0, "informAnomalyAlarmFired"

    return-object v0

    .line 353
    :pswitch_62
    const-string v0, "statsCompanionReady"

    return-object v0

    .line 349
    :pswitch_65
    const-string v0, "bootCompleted"

    return-object v0

    .line 345
    :pswitch_68
    const-string v0, "systemRunning"

    return-object v0

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 336
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1578
    const/16 v0, 0x21

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 488
    invoke-static {p1}, Landroid/os/IStatsd$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 492
    move-object v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.IStatsd"

    .line 493
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt p1, v12, :cond_10

    const v1, 0xffffff

    if-gt p1, v1, :cond_10

    .line 494
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    :cond_10
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 497
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    return v12

    .line 500
    :cond_19
    packed-switch p1, :pswitch_data_252

    .line 831
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 821
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 823
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 825
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 826
    .local v4, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IStatsd$Stub;->getDataFd(JILandroid/os/ParcelFileDescriptor;)V

    .line 827
    goto/16 :goto_251

    .line 814
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IStatsSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsSubscriptionCallback;

    move-result-object v1

    .line 815
    .local v1, "_arg0":Landroid/os/IStatsSubscriptionCallback;
    invoke-virtual {p0, v1}, Landroid/os/IStatsd$Stub;->flushSubscription(Landroid/os/IStatsSubscriptionCallback;)V

    .line 816
    goto/16 :goto_251

    .line 807
    .end local v1    # "_arg0":Landroid/os/IStatsSubscriptionCallback;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IStatsSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsSubscriptionCallback;

    move-result-object v1

    .line 808
    .restart local v1    # "_arg0":Landroid/os/IStatsSubscriptionCallback;
    invoke-virtual {p0, v1}, Landroid/os/IStatsd$Stub;->removeSubscription(Landroid/os/IStatsSubscriptionCallback;)V

    .line 809
    goto/16 :goto_251

    .line 798
    .end local v1    # "_arg0":Landroid/os/IStatsSubscriptionCallback;
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 800
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IStatsSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsSubscriptionCallback;

    move-result-object v2

    .line 801
    .local v2, "_arg1":Landroid/os/IStatsSubscriptionCallback;
    invoke-virtual {p0, v1, v2}, Landroid/os/IStatsd$Stub;->addSubscription([BLandroid/os/IStatsSubscriptionCallback;)V

    .line 802
    goto/16 :goto_251

    .line 786
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":Landroid/os/IStatsSubscriptionCallback;
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 788
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 790
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 791
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IStatsd$Stub;->removeRestrictedMetricsChangedOperation(JLjava/lang/String;I)V

    .line 792
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    goto/16 :goto_251

    .line 771
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 773
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 775
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPendingIntentRef$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPendingIntentRef;

    move-result-object v4

    .line 777
    .local v4, "_arg2":Landroid/os/IPendingIntentRef;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 778
    .local v5, "_arg3":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IStatsd$Stub;->setRestrictedMetricsChangedOperation(JLjava/lang/String;Landroid/os/IPendingIntentRef;I)[J

    move-result-object v6

    .line 779
    .local v6, "_result":[J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 781
    goto/16 :goto_251

    .line 752
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/IPendingIntentRef;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":[J
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 756
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 758
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IStatsQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsQueryCallback;

    move-result-object v4

    .line 760
    .local v4, "_arg3":Landroid/os/IStatsQueryCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 762
    .local v5, "_arg4":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 764
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 765
    .local v8, "_arg6":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/os/IStatsd$Stub;->querySql(Ljava/lang/String;I[BLandroid/os/IStatsQueryCallback;JLjava/lang/String;I)V

    .line 766
    goto/16 :goto_251

    .line 745
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Landroid/os/IStatsQueryCallback;
    .end local v5    # "_arg4":J
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":I
    :pswitch_bc
    sget-object v1, Landroid/util/PropertyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/PropertyParcel;

    .line 746
    .local v1, "_arg0":[Landroid/util/PropertyParcel;
    invoke-virtual {p0, v1}, Landroid/os/IStatsd$Stub;->updateProperties([Landroid/util/PropertyParcel;)V

    .line 747
    goto/16 :goto_251

    .line 737
    .end local v1    # "_arg0":[Landroid/util/PropertyParcel;
    :pswitch_c9
    invoke-virtual {p0}, Landroid/os/IStatsd$Stub;->getRegisteredExperimentIds()[J

    move-result-object v1

    .line 738
    .local v1, "_result":[J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 740
    goto/16 :goto_251

    .line 731
    .end local v1    # "_result":[J
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 732
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IStatsd$Stub;->unregisterNativePullAtomCallback(I)V

    .line 733
    goto/16 :goto_251

    .line 722
    .end local v1    # "_arg0":I
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 724
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 725
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IStatsd$Stub;->unregisterPullAtomCallback(II)V

    .line 726
    goto/16 :goto_251

    .line 707
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 709
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 711
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 713
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 715
    .local v6, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPullAtomCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPullAtomCallback;

    move-result-object v7

    .line 716
    .local v7, "_arg4":Landroid/os/IPullAtomCallback;
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IStatsd$Stub;->registerNativePullAtomCallback(IJJ[ILandroid/os/IPullAtomCallback;)V

    .line 717
    goto/16 :goto_251

    .line 690
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":[I
    .end local v7    # "_arg4":Landroid/os/IPullAtomCallback;
    :pswitch_109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 692
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 696
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 698
    .local v5, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 700
    .local v7, "_arg4":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPullAtomCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPullAtomCallback;

    move-result-object v8

    .line 701
    .local v8, "_arg5":Landroid/os/IPullAtomCallback;
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/os/IStatsd$Stub;->registerPullAtomCallback(IIJJ[ILandroid/os/IPullAtomCallback;)V

    .line 702
    goto/16 :goto_251

    .line 684
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":J
    .end local v7    # "_arg4":[I
    .end local v8    # "_arg5":Landroid/os/IPullAtomCallback;
    :pswitch_12b
    invoke-virtual {p0}, Landroid/os/IStatsd$Stub;->allPullersFromBootRegistered()V

    .line 685
    goto/16 :goto_251

    .line 673
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 675
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 677
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 678
    .local v5, "_arg2":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IStatsd$Stub;->unsetBroadcastSubscriber(JJI)V

    .line 679
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    goto/16 :goto_251

    .line 659
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    :pswitch_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 661
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 663
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPendingIntentRef$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPendingIntentRef;

    move-result-object v5

    .line 665
    .local v5, "_arg2":Landroid/os/IPendingIntentRef;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 666
    .local v6, "_arg3":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IStatsd$Stub;->setBroadcastSubscriber(JJLandroid/os/IPendingIntentRef;I)V

    .line 667
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    goto/16 :goto_251

    .line 649
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Landroid/os/IPendingIntentRef;
    .end local v6    # "_arg3":I
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 651
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 652
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IStatsd$Stub;->removeConfiguration(JI)V

    .line 653
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    goto/16 :goto_251

    .line 641
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 642
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IStatsd$Stub;->removeActiveConfigsChangedOperation(I)V

    .line 643
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    goto/16 :goto_251

    .line 630
    .end local v1    # "_arg0":I
    :pswitch_17e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPendingIntentRef$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPendingIntentRef;

    move-result-object v1

    .line 632
    .local v1, "_arg0":Landroid/os/IPendingIntentRef;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 633
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IStatsd$Stub;->setActiveConfigsChangedOperation(Landroid/os/IPendingIntentRef;I)[J

    move-result-object v3

    .line 634
    .local v3, "_result":[J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 636
    goto/16 :goto_251

    .line 620
    .end local v1    # "_arg0":Landroid/os/IPendingIntentRef;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[J
    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 622
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 623
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IStatsd$Stub;->removeDataFetchOperation(JI)V

    .line 624
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_251

    .line 608
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    :pswitch_1a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 610
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPendingIntentRef$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPendingIntentRef;

    move-result-object v3

    .line 612
    .local v3, "_arg1":Landroid/os/IPendingIntentRef;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 613
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IStatsd$Stub;->setDataFetchOperation(JLandroid/os/IPendingIntentRef;I)V

    .line 614
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    goto/16 :goto_251

    .line 596
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Landroid/os/IPendingIntentRef;
    .end local v4    # "_arg2":I
    :pswitch_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 598
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 600
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 601
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IStatsd$Stub;->addConfiguration(J[BI)V

    .line 602
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    goto/16 :goto_251

    .line 588
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    :pswitch_1d2
    invoke-virtual {p0}, Landroid/os/IStatsd$Stub;->getMetadata()[B

    move-result-object v1

    .line 589
    .local v1, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 591
    goto/16 :goto_251

    .line 578
    .end local v1    # "_result":[B
    :pswitch_1de
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 580
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 581
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IStatsd$Stub;->getData(JI)[B

    move-result-object v4

    .line 582
    .local v4, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 584
    goto :goto_251

    .line 569
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_result":[B
    :pswitch_1f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 572
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IStatsd$Stub;->informOnePackageRemoved(Ljava/lang/String;I)V

    .line 573
    goto :goto_251

    .line 552
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 554
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 556
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 558
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 562
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 563
    .local v7, "_arg5":[B
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IStatsd$Stub;->informOnePackage(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;[B)V

    .line 564
    goto :goto_251

    .line 545
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v7    # "_arg5":[B
    :pswitch_21a
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 546
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0, v1}, Landroid/os/IStatsd$Stub;->informAllUidData(Landroid/os/ParcelFileDescriptor;)V

    .line 547
    goto :goto_251

    .line 538
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_226
    invoke-virtual {p0}, Landroid/os/IStatsd$Stub;->informDeviceShutdown()V

    .line 539
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto :goto_251

    .line 532
    :pswitch_22d
    invoke-virtual {p0}, Landroid/os/IStatsd$Stub;->informAlarmForSubscriberTriggeringFired()V

    .line 533
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    goto :goto_251

    .line 526
    :pswitch_234
    invoke-virtual {p0}, Landroid/os/IStatsd$Stub;->informPollAlarmFired()V

    .line 527
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    goto :goto_251

    .line 520
    :pswitch_23b
    invoke-virtual {p0}, Landroid/os/IStatsd$Stub;->informAnomalyAlarmFired()V

    .line 521
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto :goto_251

    .line 514
    :pswitch_242
    invoke-virtual {p0}, Landroid/os/IStatsd$Stub;->statsCompanionReady()V

    .line 515
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    goto :goto_251

    .line 509
    :pswitch_249
    invoke-virtual {p0}, Landroid/os/IStatsd$Stub;->bootCompleted()V

    .line 510
    goto :goto_251

    .line 504
    :pswitch_24d
    invoke-virtual {p0}, Landroid/os/IStatsd$Stub;->systemRunning()V

    .line 505
    nop

    .line 834
    :goto_251
    return v12

    :pswitch_data_252
    .packed-switch 0x1
        :pswitch_24d
        :pswitch_249
        :pswitch_242
        :pswitch_23b
        :pswitch_234
        :pswitch_22d
        :pswitch_226
        :pswitch_21a
        :pswitch_1fd
        :pswitch_1f1
        :pswitch_1de
        :pswitch_1d2
        :pswitch_1be
        :pswitch_1a6
        :pswitch_196
        :pswitch_17e
        :pswitch_172
        :pswitch_162
        :pswitch_145
        :pswitch_130
        :pswitch_12b
        :pswitch_109
        :pswitch_eb
        :pswitch_de
        :pswitch_d5
        :pswitch_c9
        :pswitch_bc
        :pswitch_96
        :pswitch_75
        :pswitch_61
        :pswitch_50
        :pswitch_43
        :pswitch_36
        :pswitch_21
    .end packed-switch
.end method
