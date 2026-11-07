.class public abstract Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.super Landroid/os/Binder;
.source "IPhoneStateListener.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListener"

.field static final blacklist TRANSACTION_onActiveDataSubIdChanged:I = 0x17

.field static final blacklist TRANSACTION_onAllowedNetworkTypesChanged:I = 0x23

.field static final blacklist TRANSACTION_onBarringInfoChanged:I = 0x20

.field static final blacklist TRANSACTION_onCallDisconnectCauseChanged:I = 0x1d

.field static final greylist-max-o TRANSACTION_onCallForwardingIndicatorChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onCallStateChanged:I = 0x7

.field static final blacklist TRANSACTION_onCallStatesChanged:I = 0x19

.field static final blacklist TRANSACTION_onCallbackModeRestarted:I = 0x27

.field static final blacklist TRANSACTION_onCallbackModeStarted:I = 0x26

.field static final blacklist TRANSACTION_onCallbackModeStopped:I = 0x28

.field static final greylist-max-o TRANSACTION_onCarrierNetworkChange:I = 0x13

.field static final blacklist TRANSACTION_onCarrierRoamingNtnAvailableServicesChanged:I = 0x2c

.field static final blacklist TRANSACTION_onCarrierRoamingNtnEligibleStateChanged:I = 0x2b

.field static final blacklist TRANSACTION_onCarrierRoamingNtnModeChanged:I = 0x2a

.field static final blacklist TRANSACTION_onCarrierRoamingNtnSignalStrengthChanged:I = 0x2d

.field static final greylist-max-o TRANSACTION_onCellInfoChanged:I = 0xb

.field static final greylist-max-o TRANSACTION_onCellLocationChanged:I = 0x5

.field static final blacklist TRANSACTION_onCellularIdentifierDisclosedChanged:I = 0x2f

.field static final greylist-max-o TRANSACTION_onDataActivationStateChanged:I = 0x11

.field static final greylist-max-o TRANSACTION_onDataActivity:I = 0x9

.field static final greylist-max-o TRANSACTION_onDataConnectionRealTimeInfoChanged:I = 0xe

.field static final greylist-max-o TRANSACTION_onDataConnectionStateChanged:I = 0x8

.field static final blacklist TRANSACTION_onDataEnabledChanged:I = 0x22

.field static final blacklist TRANSACTION_onDisplayInfoChanged:I = 0x15

.field static final blacklist TRANSACTION_onEmergencyNumberListChanged:I = 0x1a

.field static final blacklist TRANSACTION_onImsCallDisconnectCauseChanged:I = 0x1e

.field static final blacklist TRANSACTION_onLegacyCallStateChanged:I = 0x6

.field static final blacklist TRANSACTION_onLinkCapacityEstimateChanged:I = 0x24

.field static final blacklist TRANSACTION_onMediaQualityStatusChanged:I = 0x25

.field static final greylist-max-o TRANSACTION_onMessageWaitingIndicatorChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onOemHookRawEvent:I = 0x12

.field static final blacklist TRANSACTION_onOutgoingEmergencyCall:I = 0x1b

.field static final blacklist TRANSACTION_onOutgoingEmergencySms:I = 0x1c

.field static final blacklist TRANSACTION_onPhoneCapabilityChanged:I = 0x16

.field static final blacklist TRANSACTION_onPhysicalChannelConfigChanged:I = 0x21

.field static final greylist-max-o TRANSACTION_onPreciseCallStateChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onPreciseDataConnectionStateChanged:I = 0xd

.field static final blacklist TRANSACTION_onRadioPowerStateChanged:I = 0x18

.field static final blacklist TRANSACTION_onRegistrationFailed:I = 0x1f

.field static final blacklist TRANSACTION_onSecurityAlgorithmsChanged:I = 0x2e

.field static final greylist-max-o TRANSACTION_onServiceStateChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onSignalStrengthChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onSignalStrengthsChanged:I = 0xa

.field static final blacklist TRANSACTION_onSimultaneousCallingStateChanged:I = 0x29

.field static final blacklist TRANSACTION_onSrvccStateChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onUserMobileDataStateChanged:I = 0x14

.field static final greylist-max-o TRANSACTION_onVoiceActivationStateChanged:I = 0x10


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 170
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 178
    if-nez p0, :cond_4

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_4
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 182
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_14

    .line 183
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IPhoneStateListener;

    return-object v1

    .line 185
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 194
    packed-switch p0, :pswitch_data_92

    .line 386
    const/4 v0, 0x0

    return-object v0

    .line 382
    :pswitch_5
    const-string v0, "onCellularIdentifierDisclosedChanged"

    return-object v0

    .line 378
    :pswitch_8
    const-string v0, "onSecurityAlgorithmsChanged"

    return-object v0

    .line 374
    :pswitch_b
    const-string v0, "onCarrierRoamingNtnSignalStrengthChanged"

    return-object v0

    .line 370
    :pswitch_e
    const-string v0, "onCarrierRoamingNtnAvailableServicesChanged"

    return-object v0

    .line 366
    :pswitch_11
    const-string v0, "onCarrierRoamingNtnEligibleStateChanged"

    return-object v0

    .line 362
    :pswitch_14
    const-string v0, "onCarrierRoamingNtnModeChanged"

    return-object v0

    .line 358
    :pswitch_17
    const-string v0, "onSimultaneousCallingStateChanged"

    return-object v0

    .line 354
    :pswitch_1a
    const-string v0, "onCallbackModeStopped"

    return-object v0

    .line 350
    :pswitch_1d
    const-string v0, "onCallbackModeRestarted"

    return-object v0

    .line 346
    :pswitch_20
    const-string v0, "onCallbackModeStarted"

    return-object v0

    .line 342
    :pswitch_23
    const-string v0, "onMediaQualityStatusChanged"

    return-object v0

    .line 338
    :pswitch_26
    const-string v0, "onLinkCapacityEstimateChanged"

    return-object v0

    .line 334
    :pswitch_29
    const-string v0, "onAllowedNetworkTypesChanged"

    return-object v0

    .line 330
    :pswitch_2c
    const-string v0, "onDataEnabledChanged"

    return-object v0

    .line 326
    :pswitch_2f
    const-string v0, "onPhysicalChannelConfigChanged"

    return-object v0

    .line 322
    :pswitch_32
    const-string v0, "onBarringInfoChanged"

    return-object v0

    .line 318
    :pswitch_35
    const-string v0, "onRegistrationFailed"

    return-object v0

    .line 314
    :pswitch_38
    const-string v0, "onImsCallDisconnectCauseChanged"

    return-object v0

    .line 310
    :pswitch_3b
    const-string v0, "onCallDisconnectCauseChanged"

    return-object v0

    .line 306
    :pswitch_3e
    const-string v0, "onOutgoingEmergencySms"

    return-object v0

    .line 302
    :pswitch_41
    const-string v0, "onOutgoingEmergencyCall"

    return-object v0

    .line 298
    :pswitch_44
    const-string v0, "onEmergencyNumberListChanged"

    return-object v0

    .line 294
    :pswitch_47
    const-string v0, "onCallStatesChanged"

    return-object v0

    .line 290
    :pswitch_4a
    const-string v0, "onRadioPowerStateChanged"

    return-object v0

    .line 286
    :pswitch_4d
    const-string v0, "onActiveDataSubIdChanged"

    return-object v0

    .line 282
    :pswitch_50
    const-string v0, "onPhoneCapabilityChanged"

    return-object v0

    .line 278
    :pswitch_53
    const-string v0, "onDisplayInfoChanged"

    return-object v0

    .line 274
    :pswitch_56
    const-string v0, "onUserMobileDataStateChanged"

    return-object v0

    .line 270
    :pswitch_59
    const-string v0, "onCarrierNetworkChange"

    return-object v0

    .line 266
    :pswitch_5c
    const-string v0, "onOemHookRawEvent"

    return-object v0

    .line 262
    :pswitch_5f
    const-string v0, "onDataActivationStateChanged"

    return-object v0

    .line 258
    :pswitch_62
    const-string v0, "onVoiceActivationStateChanged"

    return-object v0

    .line 254
    :pswitch_65
    const-string v0, "onSrvccStateChanged"

    return-object v0

    .line 250
    :pswitch_68
    const-string v0, "onDataConnectionRealTimeInfoChanged"

    return-object v0

    .line 246
    :pswitch_6b
    const-string v0, "onPreciseDataConnectionStateChanged"

    return-object v0

    .line 242
    :pswitch_6e
    const-string v0, "onPreciseCallStateChanged"

    return-object v0

    .line 238
    :pswitch_71
    const-string v0, "onCellInfoChanged"

    return-object v0

    .line 234
    :pswitch_74
    const-string v0, "onSignalStrengthsChanged"

    return-object v0

    .line 230
    :pswitch_77
    const-string v0, "onDataActivity"

    return-object v0

    .line 226
    :pswitch_7a
    const-string v0, "onDataConnectionStateChanged"

    return-object v0

    .line 222
    :pswitch_7d
    const-string v0, "onCallStateChanged"

    return-object v0

    .line 218
    :pswitch_80
    const-string v0, "onLegacyCallStateChanged"

    return-object v0

    .line 214
    :pswitch_83
    const-string v0, "onCellLocationChanged"

    return-object v0

    .line 210
    :pswitch_86
    const-string v0, "onCallForwardingIndicatorChanged"

    return-object v0

    .line 206
    :pswitch_89
    const-string v0, "onMessageWaitingIndicatorChanged"

    return-object v0

    .line 202
    :pswitch_8c
    const-string v0, "onSignalStrengthChanged"

    return-object v0

    .line 198
    :pswitch_8f
    const-string v0, "onServiceStateChanged"

    return-object v0

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
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

    .line 189
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1475
    const/16 v0, 0x2e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 393
    invoke-static {p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    .line 398
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 399
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 402
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    return v1

    .line 405
    :cond_16
    packed-switch p1, :pswitch_data_314

    .line 820
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 813
    :pswitch_1f
    sget-object v2, Landroid/telephony/CellularIdentifierDisclosure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellularIdentifierDisclosure;

    .line 814
    .local v2, "_arg0":Landroid/telephony/CellularIdentifierDisclosure;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellularIdentifierDisclosedChanged(Landroid/telephony/CellularIdentifierDisclosure;)V

    .line 816
    move-object v3, p0

    goto/16 :goto_313

    .line 805
    .end local v2    # "_arg0":Landroid/telephony/CellularIdentifierDisclosure;
    :pswitch_30
    sget-object v2, Landroid/telephony/SecurityAlgorithmUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SecurityAlgorithmUpdate;

    .line 806
    .local v2, "_arg0":Landroid/telephony/SecurityAlgorithmUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSecurityAlgorithmsChanged(Landroid/telephony/SecurityAlgorithmUpdate;)V

    .line 808
    move-object v3, p0

    goto/16 :goto_313

    .line 797
    .end local v2    # "_arg0":Landroid/telephony/SecurityAlgorithmUpdate;
    :pswitch_41
    sget-object v2, Landroid/telephony/satellite/NtnSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/NtnSignalStrength;

    .line 798
    .local v2, "_arg0":Landroid/telephony/satellite/NtnSignalStrength;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V

    .line 800
    move-object v3, p0

    goto/16 :goto_313

    .line 789
    .end local v2    # "_arg0":Landroid/telephony/satellite/NtnSignalStrength;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 790
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnAvailableServicesChanged([I)V

    .line 792
    move-object v3, p0

    goto/16 :goto_313

    .line 781
    .end local v2    # "_arg0":[I
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 782
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnEligibleStateChanged(Z)V

    .line 784
    move-object v3, p0

    goto/16 :goto_313

    .line 773
    .end local v2    # "_arg0":Z
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 774
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnModeChanged(Z)V

    .line 776
    move-object v3, p0

    goto/16 :goto_313

    .line 765
    .end local v2    # "_arg0":Z
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 766
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 767
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSimultaneousCallingStateChanged([I)V

    .line 768
    move-object v3, p0

    goto/16 :goto_313

    .line 753
    .end local v2    # "_arg0":[I
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 755
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 757
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 758
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallbackModeStopped(III)V

    .line 760
    move-object v3, p0

    goto/16 :goto_313

    .line 741
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 743
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 745
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 746
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallbackModeRestarted(IJI)V

    .line 748
    move-object v3, p0

    goto/16 :goto_313

    .line 729
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 731
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 733
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 734
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallbackModeStarted(IJI)V

    .line 736
    move-object v3, p0

    goto/16 :goto_313

    .line 721
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    :pswitch_c5
    sget-object v2, Landroid/telephony/ims/MediaQualityStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/MediaQualityStatus;

    .line 722
    .local v2, "_arg0":Landroid/telephony/ims/MediaQualityStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    .line 724
    move-object v3, p0

    goto/16 :goto_313

    .line 713
    .end local v2    # "_arg0":Landroid/telephony/ims/MediaQualityStatus;
    :pswitch_d6
    sget-object v2, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 714
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 715
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onLinkCapacityEstimateChanged(Ljava/util/List;)V

    .line 716
    move-object v3, p0

    goto/16 :goto_313

    .line 703
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 705
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 706
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onAllowedNetworkTypesChanged(IJ)V

    .line 708
    move-object v3, p0

    goto/16 :goto_313

    .line 693
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 695
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 696
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataEnabledChanged(ZI)V

    .line 698
    move-object v3, p0

    goto/16 :goto_313

    .line 685
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_107
    sget-object v2, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 686
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPhysicalChannelConfigChanged(Ljava/util/List;)V

    .line 688
    move-object v3, p0

    goto/16 :goto_313

    .line 677
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    :pswitch_116
    sget-object v2, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/BarringInfo;

    .line 678
    .local v2, "_arg0":Landroid/telephony/BarringInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    .line 680
    move-object v3, p0

    goto/16 :goto_313

    .line 661
    .end local v2    # "_arg0":Landroid/telephony/BarringInfo;
    :pswitch_127
    sget-object v2, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/telephony/CellIdentity;

    .line 663
    .local v4, "_arg0":Landroid/telephony/CellIdentity;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 665
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 667
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 669
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 670
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    .line 672
    goto/16 :goto_313

    .line 653
    .end local v4    # "_arg0":Landroid/telephony/CellIdentity;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    :pswitch_149
    move-object v3, p0

    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 654
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 656
    goto/16 :goto_313

    .line 643
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_15a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 645
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 646
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallDisconnectCauseChanged(II)V

    .line 648
    goto/16 :goto_313

    .line 633
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_16b
    move-object v3, p0

    sget-object v2, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    .line 635
    .local v2, "_arg0":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 636
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V

    .line 638
    goto/16 :goto_313

    .line 623
    .end local v2    # "_arg0":Landroid/telephony/emergency/EmergencyNumber;
    .end local v4    # "_arg1":I
    :pswitch_180
    move-object v3, p0

    sget-object v2, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    .line 625
    .restart local v2    # "_arg0":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 626
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V

    .line 628
    goto/16 :goto_313

    .line 614
    .end local v2    # "_arg0":Landroid/telephony/emergency/EmergencyNumber;
    .end local v4    # "_arg1":I
    :pswitch_195
    move-object v3, p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 615
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    .line 616
    .local v4, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    .line 618
    goto/16 :goto_313

    .line 606
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "_arg0":Ljava/util/Map;
    :pswitch_1aa
    move-object v3, p0

    sget-object v2, Landroid/telephony/CallState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 607
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CallState;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStatesChanged(Ljava/util/List;)V

    .line 609
    goto/16 :goto_313

    .line 598
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CallState;>;"
    :pswitch_1b9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 599
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onRadioPowerStateChanged(I)V

    .line 601
    goto/16 :goto_313

    .line 590
    .end local v2    # "_arg0":I
    :pswitch_1c6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 591
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onActiveDataSubIdChanged(I)V

    .line 593
    goto/16 :goto_313

    .line 582
    .end local v2    # "_arg0":I
    :pswitch_1d3
    move-object v3, p0

    sget-object v2, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneCapability;

    .line 583
    .local v2, "_arg0":Landroid/telephony/PhoneCapability;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    .line 585
    goto/16 :goto_313

    .line 574
    .end local v2    # "_arg0":Landroid/telephony/PhoneCapability;
    :pswitch_1e4
    move-object v3, p0

    sget-object v2, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyDisplayInfo;

    .line 575
    .local v2, "_arg0":Landroid/telephony/TelephonyDisplayInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 577
    goto/16 :goto_313

    .line 566
    .end local v2    # "_arg0":Landroid/telephony/TelephonyDisplayInfo;
    :pswitch_1f5
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 567
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onUserMobileDataStateChanged(Z)V

    .line 569
    goto/16 :goto_313

    .line 558
    .end local v2    # "_arg0":Z
    :pswitch_202
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 559
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierNetworkChange(Z)V

    .line 561
    goto/16 :goto_313

    .line 550
    .end local v2    # "_arg0":Z
    :pswitch_20f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 551
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOemHookRawEvent([B)V

    .line 553
    goto/16 :goto_313

    .line 542
    .end local v2    # "_arg0":[B
    :pswitch_21c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 543
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivationStateChanged(I)V

    .line 545
    goto/16 :goto_313

    .line 534
    .end local v2    # "_arg0":I
    :pswitch_229
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 535
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoiceActivationStateChanged(I)V

    .line 537
    goto/16 :goto_313

    .line 526
    .end local v2    # "_arg0":I
    :pswitch_236
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 527
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSrvccStateChanged(I)V

    .line 529
    goto/16 :goto_313

    .line 518
    .end local v2    # "_arg0":I
    :pswitch_243
    move-object v3, p0

    sget-object v2, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/DataConnectionRealTimeInfo;

    .line 519
    .local v2, "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 521
    goto/16 :goto_313

    .line 510
    .end local v2    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :pswitch_254
    move-object v3, p0

    sget-object v2, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PreciseDataConnectionState;

    .line 511
    .local v2, "_arg0":Landroid/telephony/PreciseDataConnectionState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    .line 513
    goto/16 :goto_313

    .line 502
    .end local v2    # "_arg0":Landroid/telephony/PreciseDataConnectionState;
    :pswitch_265
    move-object v3, p0

    sget-object v2, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PreciseCallState;

    .line 503
    .local v2, "_arg0":Landroid/telephony/PreciseCallState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    .line 505
    goto/16 :goto_313

    .line 494
    .end local v2    # "_arg0":Landroid/telephony/PreciseCallState;
    :pswitch_276
    move-object v3, p0

    sget-object v2, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 495
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellInfoChanged(Ljava/util/List;)V

    .line 497
    goto/16 :goto_313

    .line 486
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_285
    move-object v3, p0

    sget-object v2, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalStrength;

    .line 487
    .local v2, "_arg0":Landroid/telephony/SignalStrength;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 489
    goto/16 :goto_313

    .line 478
    .end local v2    # "_arg0":Landroid/telephony/SignalStrength;
    :pswitch_296
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 479
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivity(I)V

    .line 481
    goto/16 :goto_313

    .line 468
    .end local v2    # "_arg0":I
    :pswitch_2a3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 471
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionStateChanged(II)V

    .line 473
    goto :goto_313

    .line 460
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_2b3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStateChanged(I)V

    .line 463
    goto :goto_313

    .line 450
    .end local v2    # "_arg0":I
    :pswitch_2bf
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 452
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onLegacyCallStateChanged(ILjava/lang/String;)V

    .line 455
    goto :goto_313

    .line 442
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_2cf
    move-object v3, p0

    sget-object v2, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellIdentity;

    .line 443
    .local v2, "_arg0":Landroid/telephony/CellIdentity;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V

    .line 445
    goto :goto_313

    .line 434
    .end local v2    # "_arg0":Landroid/telephony/CellIdentity;
    :pswitch_2df
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 435
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallForwardingIndicatorChanged(Z)V

    .line 437
    goto :goto_313

    .line 426
    .end local v2    # "_arg0":Z
    :pswitch_2eb
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 427
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorChanged(Z)V

    .line 429
    goto :goto_313

    .line 418
    .end local v2    # "_arg0":Z
    :pswitch_2f7
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 419
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthChanged(I)V

    .line 421
    goto :goto_313

    .line 410
    .end local v2    # "_arg0":I
    :pswitch_303
    move-object v3, p0

    sget-object v2, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ServiceState;

    .line 411
    .local v2, "_arg0":Landroid/telephony/ServiceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 413
    nop

    .line 823
    .end local v2    # "_arg0":Landroid/telephony/ServiceState;
    :goto_313
    return v1

    :pswitch_data_314
    .packed-switch 0x1
        :pswitch_303
        :pswitch_2f7
        :pswitch_2eb
        :pswitch_2df
        :pswitch_2cf
        :pswitch_2bf
        :pswitch_2b3
        :pswitch_2a3
        :pswitch_296
        :pswitch_285
        :pswitch_276
        :pswitch_265
        :pswitch_254
        :pswitch_243
        :pswitch_236
        :pswitch_229
        :pswitch_21c
        :pswitch_20f
        :pswitch_202
        :pswitch_1f5
        :pswitch_1e4
        :pswitch_1d3
        :pswitch_1c6
        :pswitch_1b9
        :pswitch_1aa
        :pswitch_195
        :pswitch_180
        :pswitch_16b
        :pswitch_15a
        :pswitch_149
        :pswitch_127
        :pswitch_116
        :pswitch_107
        :pswitch_f6
        :pswitch_e5
        :pswitch_d6
        :pswitch_c5
        :pswitch_b0
        :pswitch_9b
        :pswitch_86
        :pswitch_79
        :pswitch_6c
        :pswitch_5f
        :pswitch_52
        :pswitch_41
        :pswitch_30
        :pswitch_1f
    .end packed-switch
.end method
