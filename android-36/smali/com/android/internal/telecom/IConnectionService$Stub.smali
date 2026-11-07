.class public abstract Lcom/android/internal/telecom/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionService"

.field static final greylist-max-o TRANSACTION_abort:I = 0x9

.field static final blacklist TRANSACTION_addConferenceParticipants:I = 0x20

.field static final greylist-max-o TRANSACTION_addConnectionServiceAdapter:I = 0x1

.field static final greylist-max-o TRANSACTION_answer:I = 0xb

.field static final greylist-max-o TRANSACTION_answerVideo:I = 0xa

.field static final greylist-max-o TRANSACTION_conference:I = 0x1c

.field static final greylist-max-o TRANSACTION_connectionServiceFocusGained:I = 0x2a

.field static final greylist-max-o TRANSACTION_connectionServiceFocusLost:I = 0x29

.field static final blacklist TRANSACTION_consultativeTransfer:I = 0x11

.field static final blacklist TRANSACTION_createConference:I = 0x6

.field static final blacklist TRANSACTION_createConferenceComplete:I = 0x7

.field static final blacklist TRANSACTION_createConferenceFailed:I = 0x8

.field static final greylist-max-o TRANSACTION_createConnection:I = 0x3

.field static final greylist-max-o TRANSACTION_createConnectionComplete:I = 0x4

.field static final greylist-max-o TRANSACTION_createConnectionFailed:I = 0x5

.field static final greylist-max-o TRANSACTION_deflect:I = 0xc

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x12

.field static final greylist-max-o TRANSACTION_handoverComplete:I = 0x2c

.field static final greylist-max-o TRANSACTION_handoverFailed:I = 0x2b

.field static final greylist-max-o TRANSACTION_hold:I = 0x14

.field static final greylist-max-o TRANSACTION_mergeConference:I = 0x1e

.field static final blacklist TRANSACTION_onAvailableCallEndpointsChanged:I = 0x18

.field static final greylist-max-o TRANSACTION_onCallAudioStateChanged:I = 0x16

.field static final blacklist TRANSACTION_onCallEndpointChanged:I = 0x17

.field static final blacklist TRANSACTION_onCallFilteringCompleted:I = 0x24

.field static final greylist-max-o TRANSACTION_onExtrasChanged:I = 0x25

.field static final blacklist TRANSACTION_onMuteStateChanged:I = 0x19

.field static final greylist-max-o TRANSACTION_onPostDialContinue:I = 0x21

.field static final blacklist TRANSACTION_onTrackedByNonUiService:I = 0x2e

.field static final blacklist TRANSACTION_onUsingAlternativeUi:I = 0x2d

.field static final greylist-max-o TRANSACTION_playDtmfTone:I = 0x1a

.field static final greylist-max-o TRANSACTION_pullExternalCall:I = 0x22

.field static final greylist-max-o TRANSACTION_reject:I = 0xd

.field static final greylist-max-o TRANSACTION_rejectWithMessage:I = 0xf

.field static final blacklist TRANSACTION_rejectWithReason:I = 0xe

.field static final greylist-max-o TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final greylist-max-o TRANSACTION_respondToRttUpgradeRequest:I = 0x28

.field static final greylist-max-o TRANSACTION_sendCallEvent:I = 0x23

.field static final greylist-max-o TRANSACTION_silence:I = 0x13

.field static final greylist-max-o TRANSACTION_splitFromConference:I = 0x1d

.field static final greylist-max-o TRANSACTION_startRtt:I = 0x26

.field static final greylist-max-o TRANSACTION_stopDtmfTone:I = 0x1b

.field static final greylist-max-o TRANSACTION_stopRtt:I = 0x27

.field static final greylist-max-o TRANSACTION_swapConference:I = 0x1f

.field static final blacklist TRANSACTION_transfer:I = 0x10

.field static final greylist-max-o TRANSACTION_unhold:I = 0x15


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 171
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 172
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 180
    if-nez p0, :cond_4

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_4
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 184
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionService;

    if-eqz v1, :cond_14

    .line 185
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IConnectionService;

    return-object v1

    .line 187
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 196
    packed-switch p0, :pswitch_data_a0

    .line 384
    const/4 v0, 0x0

    return-object v0

    .line 380
    :pswitch_5
    const-string v0, "onTrackedByNonUiService"

    return-object v0

    .line 376
    :pswitch_8
    const-string v0, "onUsingAlternativeUi"

    return-object v0

    .line 372
    :pswitch_b
    const-string v0, "handoverComplete"

    return-object v0

    .line 368
    :pswitch_e
    const-string v0, "handoverFailed"

    return-object v0

    .line 364
    :pswitch_11
    const-string v0, "connectionServiceFocusGained"

    return-object v0

    .line 360
    :pswitch_14
    const-string v0, "connectionServiceFocusLost"

    return-object v0

    .line 356
    :pswitch_17
    const-string/jumbo v0, "respondToRttUpgradeRequest"

    return-object v0

    .line 352
    :pswitch_1b
    const-string/jumbo v0, "stopRtt"

    return-object v0

    .line 348
    :pswitch_1f
    const-string/jumbo v0, "startRtt"

    return-object v0

    .line 344
    :pswitch_23
    const-string v0, "onExtrasChanged"

    return-object v0

    .line 340
    :pswitch_26
    const-string v0, "onCallFilteringCompleted"

    return-object v0

    .line 336
    :pswitch_29
    const-string/jumbo v0, "sendCallEvent"

    return-object v0

    .line 332
    :pswitch_2d
    const-string/jumbo v0, "pullExternalCall"

    return-object v0

    .line 328
    :pswitch_31
    const-string v0, "onPostDialContinue"

    return-object v0

    .line 324
    :pswitch_34
    const-string v0, "addConferenceParticipants"

    return-object v0

    .line 320
    :pswitch_37
    const-string/jumbo v0, "swapConference"

    return-object v0

    .line 316
    :pswitch_3b
    const-string v0, "mergeConference"

    return-object v0

    .line 312
    :pswitch_3e
    const-string/jumbo v0, "splitFromConference"

    return-object v0

    .line 308
    :pswitch_42
    const-string v0, "conference"

    return-object v0

    .line 304
    :pswitch_45
    const-string/jumbo v0, "stopDtmfTone"

    return-object v0

    .line 300
    :pswitch_49
    const-string/jumbo v0, "playDtmfTone"

    return-object v0

    .line 296
    :pswitch_4d
    const-string v0, "onMuteStateChanged"

    return-object v0

    .line 292
    :pswitch_50
    const-string v0, "onAvailableCallEndpointsChanged"

    return-object v0

    .line 288
    :pswitch_53
    const-string v0, "onCallEndpointChanged"

    return-object v0

    .line 284
    :pswitch_56
    const-string v0, "onCallAudioStateChanged"

    return-object v0

    .line 280
    :pswitch_59
    const-string/jumbo v0, "unhold"

    return-object v0

    .line 276
    :pswitch_5d
    const-string v0, "hold"

    return-object v0

    .line 272
    :pswitch_60
    const-string/jumbo v0, "silence"

    return-object v0

    .line 268
    :pswitch_64
    const-string v0, "disconnect"

    return-object v0

    .line 264
    :pswitch_67
    const-string v0, "consultativeTransfer"

    return-object v0

    .line 260
    :pswitch_6a
    const-string/jumbo v0, "transfer"

    return-object v0

    .line 256
    :pswitch_6e
    const-string/jumbo v0, "rejectWithMessage"

    return-object v0

    .line 252
    :pswitch_72
    const-string/jumbo v0, "rejectWithReason"

    return-object v0

    .line 248
    :pswitch_76
    const-string/jumbo v0, "reject"

    return-object v0

    .line 244
    :pswitch_7a
    const-string v0, "deflect"

    return-object v0

    .line 240
    :pswitch_7d
    const-string v0, "answer"

    return-object v0

    .line 236
    :pswitch_80
    const-string v0, "answerVideo"

    return-object v0

    .line 232
    :pswitch_83
    const-string v0, "abort"

    return-object v0

    .line 228
    :pswitch_86
    const-string v0, "createConferenceFailed"

    return-object v0

    .line 224
    :pswitch_89
    const-string v0, "createConferenceComplete"

    return-object v0

    .line 220
    :pswitch_8c
    const-string v0, "createConference"

    return-object v0

    .line 216
    :pswitch_8f
    const-string v0, "createConnectionFailed"

    return-object v0

    .line 212
    :pswitch_92
    const-string v0, "createConnectionComplete"

    return-object v0

    .line 208
    :pswitch_95
    const-string v0, "createConnection"

    return-object v0

    .line 204
    :pswitch_98
    const-string/jumbo v0, "removeConnectionServiceAdapter"

    return-object v0

    .line 200
    :pswitch_9c
    const-string v0, "addConnectionServiceAdapter"

    return-object v0

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_60
        :pswitch_5d
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
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

    .line 191
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1654
    const/16 v0, 0x2d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 391
    invoke-static {p1}, Lcom/android/internal/telecom/IConnectionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 395
    const-string v7, "com.android.internal.telecom.IConnectionService"

    .line 396
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 397
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 400
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    return v8

    .line 403
    :cond_16
    packed-switch p1, :pswitch_data_4b2

    .line 945
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 934
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 936
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 938
    .local v2, "_arg1":Z
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 939
    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onTrackedByNonUiService(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 941
    goto/16 :goto_4b1

    .line 922
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 924
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 926
    .restart local v2    # "_arg1":Z
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 927
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onUsingAlternativeUi(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 929
    goto/16 :goto_4b1

    .line 912
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 914
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 915
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->handoverComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 917
    goto/16 :goto_4b1

    .line 898
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 900
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ConnectionRequest;

    .line 902
    .local v2, "_arg1":Landroid/telecom/ConnectionRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 904
    .local v3, "_arg2":I
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 905
    .local v4, "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;ILandroid/telecom/Logging/Session$Info;)V

    .line 907
    goto/16 :goto_4b1

    .line 890
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/ConnectionRequest;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_82
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 891
    .local v1, "_arg0":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->connectionServiceFocusGained(Landroid/telecom/Logging/Session$Info;)V

    .line 893
    goto/16 :goto_4b1

    .line 882
    .end local v1    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :pswitch_92
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 883
    .restart local v1    # "_arg0":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->connectionServiceFocusLost(Landroid/telecom/Logging/Session$Info;)V

    .line 885
    goto/16 :goto_4b1

    .line 868
    .end local v1    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 870
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 872
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 874
    .local v3, "_arg2":Landroid/os/ParcelFileDescriptor;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 875
    .restart local v4    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    .line 877
    goto/16 :goto_4b1

    .line 858
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 860
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 861
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 863
    goto/16 :goto_4b1

    .line 844
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 846
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 848
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 850
    .restart local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 851
    .restart local v4    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    .line 853
    goto/16 :goto_4b1

    .line 832
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 834
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 836
    .local v2, "_arg1":Landroid/os/Bundle;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 837
    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 839
    goto/16 :goto_4b1

    .line 820
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 822
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Connection$CallFilteringCompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$CallFilteringCompletionInfo;

    .line 824
    .local v2, "_arg1":Landroid/telecom/Connection$CallFilteringCompletionInfo;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 825
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallFilteringCompleted(Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;Landroid/telecom/Logging/Session$Info;)V

    .line 827
    goto/16 :goto_4b1

    .line 806
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Connection$CallFilteringCompletionInfo;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 808
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 812
    .local v3, "_arg2":Landroid/os/Bundle;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 813
    .restart local v4    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 815
    goto/16 :goto_4b1

    .line 796
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 798
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 799
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 801
    goto/16 :goto_4b1

    .line 784
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 786
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 788
    .local v2, "_arg1":Z
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 789
    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 791
    goto/16 :goto_4b1

    .line 772
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 774
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 776
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 777
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 779
    goto/16 :goto_4b1

    .line 762
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_19c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 764
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 765
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->swapConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 767
    goto/16 :goto_4b1

    .line 752
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 754
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 755
    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->mergeConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 757
    goto/16 :goto_4b1

    .line 742
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 744
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 745
    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->splitFromConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 747
    goto/16 :goto_4b1

    .line 730
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 732
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 735
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->conference(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 737
    goto/16 :goto_4b1

    .line 720
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 722
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 723
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 725
    goto/16 :goto_4b1

    .line 708
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 710
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    .line 712
    .local v2, "_arg1":C
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 713
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    .line 715
    goto/16 :goto_4b1

    .line 696
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":C
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_21d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 698
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 700
    .local v2, "_arg1":Z
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 701
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onMuteStateChanged(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 703
    goto/16 :goto_4b1

    .line 684
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 686
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 688
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 689
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 691
    goto/16 :goto_4b1

    .line 672
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_24f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 674
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallEndpoint;

    .line 676
    .local v2, "_arg1":Landroid/telecom/CallEndpoint;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 677
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;Landroid/telecom/Logging/Session$Info;)V

    .line 679
    goto/16 :goto_4b1

    .line 660
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/CallEndpoint;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_26b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 662
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallAudioState;

    .line 664
    .local v2, "_arg1":Landroid/telecom/CallAudioState;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 665
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V

    .line 667
    goto/16 :goto_4b1

    .line 650
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/CallAudioState;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 652
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 653
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 655
    goto/16 :goto_4b1

    .line 640
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_29b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 642
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 643
    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 645
    goto/16 :goto_4b1

    .line 630
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_2af
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 632
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 633
    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->silence(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 635
    goto/16 :goto_4b1

    .line 620
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_2c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 622
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 623
    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 625
    goto/16 :goto_4b1

    .line 608
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_2d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 610
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 613
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 615
    goto/16 :goto_4b1

    .line 594
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_2ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 598
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 600
    .local v3, "_arg2":Z
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 601
    .restart local v4    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->transfer(Ljava/lang/String;Landroid/net/Uri;ZLandroid/telecom/Logging/Session$Info;)V

    .line 603
    goto/16 :goto_4b1

    .line 582
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_30f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 584
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 587
    .local v3, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->rejectWithMessage(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 589
    goto/16 :goto_4b1

    .line 570
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 572
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 574
    .local v2, "_arg1":I
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 575
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->rejectWithReason(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 577
    goto/16 :goto_4b1

    .line 560
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_33f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 562
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 563
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 565
    goto/16 :goto_4b1

    .line 548
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 550
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 552
    .local v2, "_arg1":Landroid/net/Uri;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 553
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->deflect(Ljava/lang/String;Landroid/net/Uri;Landroid/telecom/Logging/Session$Info;)V

    .line 555
    goto/16 :goto_4b1

    .line 538
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_36f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 541
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 543
    goto/16 :goto_4b1

    .line 526
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_383
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 528
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 530
    .local v2, "_arg1":I
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 531
    .restart local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 533
    goto/16 :goto_4b1

    .line 516
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_39b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 518
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 519
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 521
    goto/16 :goto_4b1

    .line 500
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_3af
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 502
    .local v1, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ConnectionRequest;

    .line 506
    .local v3, "_arg2":Landroid/telecom/ConnectionRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 508
    .local v4, "_arg3":Z
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 509
    .local v5, "_arg4":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConferenceFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V

    .line 511
    goto/16 :goto_4b1

    .line 490
    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/telecom/Logging/Session$Info;
    :pswitch_3d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 493
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConferenceComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 495
    goto/16 :goto_4b1

    .line 472
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_3ec
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 474
    .local v1, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ConnectionRequest;

    .line 478
    .restart local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 480
    .restart local v4    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 482
    .local v5, "_arg4":Z
    sget-object v6, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session$Info;

    .line 483
    .local v6, "_arg5":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 485
    goto/16 :goto_4b1

    .line 456
    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/telecom/Logging/Session$Info;
    :pswitch_419
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 458
    .restart local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telecom/ConnectionRequest;

    .line 462
    .restart local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 464
    .restart local v4    # "_arg3":Z
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 465
    .local v5, "_arg4":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V

    .line 467
    goto :goto_4b1

    .line 446
    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/telecom/Logging/Session$Info;
    :pswitch_444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 449
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 451
    goto :goto_4b1

    .line 428
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_457
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 430
    .local v1, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ConnectionRequest;

    .line 434
    .restart local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 436
    .restart local v4    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 438
    .local v5, "_arg4":Z
    sget-object v6, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session$Info;

    .line 439
    .restart local v6    # "_arg5":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 441
    goto :goto_4b1

    .line 418
    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/telecom/Logging/Session$Info;
    :pswitch_483
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    .line 420
    .local v1, "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 421
    .local v2, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 423
    goto :goto_4b1

    .line 408
    .end local v1    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_49a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    .line 410
    .restart local v1    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 411
    .restart local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 413
    nop

    .line 948
    .end local v1    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_4b1
    return v8

    :pswitch_data_4b2
    .packed-switch 0x1
        :pswitch_49a
        :pswitch_483
        :pswitch_457
        :pswitch_444
        :pswitch_419
        :pswitch_3ec
        :pswitch_3d8
        :pswitch_3af
        :pswitch_39b
        :pswitch_383
        :pswitch_36f
        :pswitch_353
        :pswitch_33f
        :pswitch_327
        :pswitch_30f
        :pswitch_2ef
        :pswitch_2d7
        :pswitch_2c3
        :pswitch_2af
        :pswitch_29b
        :pswitch_287
        :pswitch_26b
        :pswitch_24f
        :pswitch_235
        :pswitch_21d
        :pswitch_204
        :pswitch_1f0
        :pswitch_1d8
        :pswitch_1c4
        :pswitch_1b0
        :pswitch_19c
        :pswitch_182
        :pswitch_16a
        :pswitch_156
        :pswitch_136
        :pswitch_11a
        :pswitch_fe
        :pswitch_da
        :pswitch_c6
        :pswitch_a2
        :pswitch_92
        :pswitch_82
        :pswitch_62
        :pswitch_4e
        :pswitch_36
        :pswitch_1e
    .end packed-switch
.end method
