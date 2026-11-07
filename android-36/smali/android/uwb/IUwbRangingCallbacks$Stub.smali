.class public abstract Landroid/uwb/IUwbRangingCallbacks$Stub;
.super Landroid/os/Binder;
.source "IUwbRangingCallbacks.java"

# interfaces
.implements Landroid/uwb/IUwbRangingCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/IUwbRangingCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onControleeAddFailed:I = 0xc

.field static final blacklist TRANSACTION_onControleeAdded:I = 0xb

.field static final blacklist TRANSACTION_onControleeRemoveFailed:I = 0xe

.field static final blacklist TRANSACTION_onControleeRemoved:I = 0xd

.field static final blacklist TRANSACTION_onDataReceiveFailed:I = 0x18

.field static final blacklist TRANSACTION_onDataReceived:I = 0x17

.field static final blacklist TRANSACTION_onDataSendFailed:I = 0x14

.field static final blacklist TRANSACTION_onDataSent:I = 0x13

.field static final blacklist TRANSACTION_onDataTransferPhaseConfigFailed:I = 0x16

.field static final blacklist TRANSACTION_onDataTransferPhaseConfigured:I = 0x15

.field static final blacklist TRANSACTION_onHybridSessionControleeConfigurationFailed:I = 0x1c

.field static final blacklist TRANSACTION_onHybridSessionControleeConfigured:I = 0x1b

.field static final blacklist TRANSACTION_onHybridSessionControllerConfigurationFailed:I = 0x1a

.field static final blacklist TRANSACTION_onHybridSessionControllerConfigured:I = 0x19

.field static final blacklist TRANSACTION_onRangingClosed:I = 0x9

.field static final blacklist TRANSACTION_onRangingOpenFailed:I = 0x2

.field static final blacklist TRANSACTION_onRangingOpened:I = 0x1

.field static final blacklist TRANSACTION_onRangingPauseFailed:I = 0x10

.field static final blacklist TRANSACTION_onRangingPaused:I = 0xf

.field static final blacklist TRANSACTION_onRangingReconfigureFailed:I = 0x6

.field static final blacklist TRANSACTION_onRangingReconfigured:I = 0x5

.field static final blacklist TRANSACTION_onRangingResult:I = 0xa

.field static final blacklist TRANSACTION_onRangingResumeFailed:I = 0x12

.field static final blacklist TRANSACTION_onRangingResumed:I = 0x11

.field static final blacklist TRANSACTION_onRangingRoundsUpdateDtTagStatus:I = 0x1f

.field static final blacklist TRANSACTION_onRangingStartFailed:I = 0x4

.field static final blacklist TRANSACTION_onRangingStarted:I = 0x3

.field static final blacklist TRANSACTION_onRangingStopFailed:I = 0x8

.field static final blacklist TRANSACTION_onRangingStopped:I = 0x7

.field static final blacklist TRANSACTION_onServiceConnected:I = 0x1e

.field static final blacklist TRANSACTION_onServiceDiscovered:I = 0x1d


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 335
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 336
    const-string v0, "android.uwb.IUwbRangingCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/uwb/IUwbRangingCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/uwb/IUwbRangingCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 344
    if-nez p0, :cond_4

    .line 345
    const/4 v0, 0x0

    return-object v0

    .line 347
    :cond_4
    const-string v0, "android.uwb.IUwbRangingCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 348
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/uwb/IUwbRangingCallbacks;

    if-eqz v1, :cond_14

    .line 349
    move-object v1, v0

    check-cast v1, Landroid/uwb/IUwbRangingCallbacks;

    return-object v1

    .line 351
    :cond_14
    new-instance v1, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/uwb/IUwbRangingCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 360
    packed-switch p0, :pswitch_data_62

    .line 488
    const/4 v0, 0x0

    return-object v0

    .line 484
    :pswitch_5
    const-string v0, "onRangingRoundsUpdateDtTagStatus"

    return-object v0

    .line 480
    :pswitch_8
    const-string v0, "onServiceConnected"

    return-object v0

    .line 476
    :pswitch_b
    const-string v0, "onServiceDiscovered"

    return-object v0

    .line 472
    :pswitch_e
    const-string v0, "onHybridSessionControleeConfigurationFailed"

    return-object v0

    .line 468
    :pswitch_11
    const-string v0, "onHybridSessionControleeConfigured"

    return-object v0

    .line 464
    :pswitch_14
    const-string v0, "onHybridSessionControllerConfigurationFailed"

    return-object v0

    .line 460
    :pswitch_17
    const-string v0, "onHybridSessionControllerConfigured"

    return-object v0

    .line 456
    :pswitch_1a
    const-string v0, "onDataReceiveFailed"

    return-object v0

    .line 452
    :pswitch_1d
    const-string v0, "onDataReceived"

    return-object v0

    .line 448
    :pswitch_20
    const-string v0, "onDataTransferPhaseConfigFailed"

    return-object v0

    .line 444
    :pswitch_23
    const-string v0, "onDataTransferPhaseConfigured"

    return-object v0

    .line 440
    :pswitch_26
    const-string v0, "onDataSendFailed"

    return-object v0

    .line 436
    :pswitch_29
    const-string v0, "onDataSent"

    return-object v0

    .line 432
    :pswitch_2c
    const-string v0, "onRangingResumeFailed"

    return-object v0

    .line 428
    :pswitch_2f
    const-string v0, "onRangingResumed"

    return-object v0

    .line 424
    :pswitch_32
    const-string v0, "onRangingPauseFailed"

    return-object v0

    .line 420
    :pswitch_35
    const-string v0, "onRangingPaused"

    return-object v0

    .line 416
    :pswitch_38
    const-string v0, "onControleeRemoveFailed"

    return-object v0

    .line 412
    :pswitch_3b
    const-string v0, "onControleeRemoved"

    return-object v0

    .line 408
    :pswitch_3e
    const-string v0, "onControleeAddFailed"

    return-object v0

    .line 404
    :pswitch_41
    const-string v0, "onControleeAdded"

    return-object v0

    .line 400
    :pswitch_44
    const-string v0, "onRangingResult"

    return-object v0

    .line 396
    :pswitch_47
    const-string v0, "onRangingClosed"

    return-object v0

    .line 392
    :pswitch_4a
    const-string v0, "onRangingStopFailed"

    return-object v0

    .line 388
    :pswitch_4d
    const-string v0, "onRangingStopped"

    return-object v0

    .line 384
    :pswitch_50
    const-string v0, "onRangingReconfigureFailed"

    return-object v0

    .line 380
    :pswitch_53
    const-string v0, "onRangingReconfigured"

    return-object v0

    .line 376
    :pswitch_56
    const-string v0, "onRangingStartFailed"

    return-object v0

    .line 372
    :pswitch_59
    const-string v0, "onRangingStarted"

    return-object v0

    .line 368
    :pswitch_5c
    const-string v0, "onRangingOpenFailed"

    return-object v0

    .line 364
    :pswitch_5f
    const-string v0, "onRangingOpened"

    return-object v0

    :pswitch_data_62
    .packed-switch 0x1
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

    .line 355
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1548
    const/16 v0, 0x1e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 495
    invoke-static {p1}, Landroid/uwb/IUwbRangingCallbacks$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    const-string v0, "android.uwb.IUwbRangingCallbacks"

    .line 500
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 501
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 504
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    return v1

    .line 507
    :cond_16
    packed-switch p1, :pswitch_data_35a

    .line 859
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 850
    :pswitch_1e
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 852
    .local v2, "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 853
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingRoundsUpdateDtTagStatus(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 855
    goto/16 :goto_358

    .line 840
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_36
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 842
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 843
    .restart local v3    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onServiceConnected(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 845
    goto/16 :goto_358

    .line 830
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_4e
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 832
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 833
    .restart local v3    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onServiceDiscovered(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 835
    goto/16 :goto_358

    .line 818
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_66
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 820
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 822
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 823
    .local v4, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onHybridSessionControleeConfigurationFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 825
    goto/16 :goto_358

    .line 808
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_82
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 810
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 811
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onHybridSessionControleeConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 813
    goto/16 :goto_358

    .line 796
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_9a
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 798
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 800
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 801
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onHybridSessionControllerConfigurationFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 803
    goto/16 :goto_358

    .line 786
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_b6
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 788
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 789
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onHybridSessionControllerConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 791
    goto/16 :goto_358

    .line 772
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_ce
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 774
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbAddress;

    .line 776
    .local v3, "_arg1":Landroid/uwb/UwbAddress;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 778
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .line 779
    .local v5, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onDataReceiveFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    .line 781
    goto/16 :goto_358

    .line 758
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/uwb/UwbAddress;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/PersistableBundle;
    :pswitch_f2
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 760
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbAddress;

    .line 762
    .restart local v3    # "_arg1":Landroid/uwb/UwbAddress;
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 764
    .local v4, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 765
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onDataReceived(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    .line 767
    goto/16 :goto_358

    .line 746
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/uwb/UwbAddress;
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    .end local v5    # "_arg3":[B
    :pswitch_116
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 748
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 750
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 751
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onDataTransferPhaseConfigFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 753
    goto/16 :goto_358

    .line 736
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_132
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 738
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 739
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onDataTransferPhaseConfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 741
    goto/16 :goto_358

    .line 722
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_14a
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 724
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbAddress;

    .line 726
    .local v3, "_arg1":Landroid/uwb/UwbAddress;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 728
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .line 729
    .local v5, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onDataSendFailed(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    .line 731
    goto/16 :goto_358

    .line 710
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/uwb/UwbAddress;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/PersistableBundle;
    :pswitch_16e
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 712
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/uwb/UwbAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbAddress;

    .line 714
    .restart local v3    # "_arg1":Landroid/uwb/UwbAddress;
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 715
    .local v4, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onDataSent(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V

    .line 717
    goto/16 :goto_358

    .line 698
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/uwb/UwbAddress;
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_18e
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 700
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 702
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 703
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingResumeFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 705
    goto/16 :goto_358

    .line 688
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_1aa
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 690
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 691
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingResumed(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 693
    goto/16 :goto_358

    .line 676
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_1c2
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 678
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 680
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 681
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingPauseFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 683
    goto/16 :goto_358

    .line 666
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_1de
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 668
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 669
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingPaused(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 671
    goto/16 :goto_358

    .line 654
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_1f6
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 656
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 658
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 659
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onControleeRemoveFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 661
    goto/16 :goto_358

    .line 644
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_212
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 646
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 647
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onControleeRemoved(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 649
    goto/16 :goto_358

    .line 632
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_22a
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 634
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 636
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 637
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onControleeAddFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 639
    goto/16 :goto_358

    .line 622
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_246
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 624
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 625
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onControleeAdded(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 627
    goto/16 :goto_358

    .line 612
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_25e
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 614
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/uwb/RangingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/RangingReport;

    .line 615
    .local v3, "_arg1":Landroid/uwb/RangingReport;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingResult(Landroid/uwb/SessionHandle;Landroid/uwb/RangingReport;)V

    .line 617
    goto/16 :goto_358

    .line 600
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/uwb/RangingReport;
    :pswitch_276
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 602
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 604
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 605
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingClosed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 607
    goto/16 :goto_358

    .line 588
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_292
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 590
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 592
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 593
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingStopFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 595
    goto/16 :goto_358

    .line 576
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_2ae
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 578
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 580
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 581
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingStopped(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 583
    goto/16 :goto_358

    .line 564
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_2ca
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 566
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 568
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 569
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingReconfigureFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 571
    goto :goto_358

    .line 554
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_2e5
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 556
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 557
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingReconfigured(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 559
    goto :goto_358

    .line 542
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_2fc
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 544
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 546
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 547
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingStartFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 549
    goto :goto_358

    .line 532
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_317
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 534
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 535
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v2, v3}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingStarted(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V

    .line 537
    goto :goto_358

    .line 520
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    :pswitch_32e
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 522
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 524
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 525
    .restart local v4    # "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, v2, v3, v4}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingOpenFailed(Landroid/uwb/SessionHandle;ILandroid/os/PersistableBundle;)V

    .line 527
    goto :goto_358

    .line 512
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_349
    sget-object v2, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/SessionHandle;

    .line 513
    .restart local v2    # "_arg0":Landroid/uwb/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2}, Landroid/uwb/IUwbRangingCallbacks$Stub;->onRangingOpened(Landroid/uwb/SessionHandle;)V

    .line 515
    nop

    .line 862
    .end local v2    # "_arg0":Landroid/uwb/SessionHandle;
    :goto_358
    return v1

    nop

    :pswitch_data_35a
    .packed-switch 0x1
        :pswitch_349
        :pswitch_32e
        :pswitch_317
        :pswitch_2fc
        :pswitch_2e5
        :pswitch_2ca
        :pswitch_2ae
        :pswitch_292
        :pswitch_276
        :pswitch_25e
        :pswitch_246
        :pswitch_22a
        :pswitch_212
        :pswitch_1f6
        :pswitch_1de
        :pswitch_1c2
        :pswitch_1aa
        :pswitch_18e
        :pswitch_16e
        :pswitch_14a
        :pswitch_132
        :pswitch_116
        :pswitch_f2
        :pswitch_ce
        :pswitch_b6
        :pswitch_9a
        :pswitch_82
        :pswitch_66
        :pswitch_4e
        :pswitch_36
        :pswitch_1e
    .end packed-switch
.end method
