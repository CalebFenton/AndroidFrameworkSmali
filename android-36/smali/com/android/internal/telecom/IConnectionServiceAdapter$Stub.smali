.class public abstract Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "IConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionServiceAdapter"

.field static final greylist-max-o TRANSACTION_addConferenceCall:I = 0xe

.field static final greylist-max-o TRANSACTION_addExistingConnection:I = 0x1a

.field static final blacklist TRANSACTION_handleCreateConferenceComplete:I = 0x2

.field static final greylist-max-o TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final greylist-max-o TRANSACTION_onConnectionEvent:I = 0x1f

.field static final greylist-max-o TRANSACTION_onConnectionServiceFocusReleased:I = 0x25

.field static final greylist-max-o TRANSACTION_onPhoneAccountChanged:I = 0x24

.field static final greylist-max-o TRANSACTION_onPostDialChar:I = 0x11

.field static final greylist-max-o TRANSACTION_onPostDialWait:I = 0x10

.field static final greylist-max-o TRANSACTION_onRemoteRttRequest:I = 0x23

.field static final greylist-max-o TRANSACTION_onRttInitiationFailure:I = 0x21

.field static final greylist-max-o TRANSACTION_onRttInitiationSuccess:I = 0x20

.field static final greylist-max-o TRANSACTION_onRttSessionRemotelyTerminated:I = 0x22

.field static final greylist-max-o TRANSACTION_putExtras:I = 0x1b

.field static final blacklist TRANSACTION_queryLocation:I = 0x29

.field static final greylist-max-o TRANSACTION_queryRemoteConnectionServices:I = 0x12

.field static final greylist-max-o TRANSACTION_removeCall:I = 0xf

.field static final greylist-max-o TRANSACTION_removeExtras:I = 0x1c

.field static final blacklist TRANSACTION_requestCallEndpointChange:I = 0x1e

.field static final blacklist TRANSACTION_resetConnectionTime:I = 0x26

.field static final greylist-max-o TRANSACTION_setActive:I = 0x3

.field static final greylist-max-o TRANSACTION_setAddress:I = 0x17

.field static final greylist-max-o TRANSACTION_setAudioRoute:I = 0x1d

.field static final blacklist TRANSACTION_setCallDirection:I = 0x28

.field static final greylist-max-o TRANSACTION_setCallerDisplayName:I = 0x18

.field static final greylist-max-o TRANSACTION_setConferenceMergeFailed:I = 0xd

.field static final blacklist TRANSACTION_setConferenceState:I = 0x27

.field static final greylist-max-o TRANSACTION_setConferenceableConnections:I = 0x19

.field static final greylist-max-o TRANSACTION_setConnectionCapabilities:I = 0xa

.field static final greylist-max-o TRANSACTION_setConnectionProperties:I = 0xb

.field static final greylist-max-o TRANSACTION_setDialing:I = 0x5

.field static final greylist-max-o TRANSACTION_setDisconnected:I = 0x7

.field static final greylist-max-o TRANSACTION_setIsConferenced:I = 0xc

.field static final greylist-max-o TRANSACTION_setIsVoipAudioMode:I = 0x15

.field static final greylist-max-o TRANSACTION_setOnHold:I = 0x8

.field static final greylist-max-o TRANSACTION_setPulling:I = 0x6

.field static final greylist-max-o TRANSACTION_setRingbackRequested:I = 0x9

.field static final greylist-max-o TRANSACTION_setRinging:I = 0x4

.field static final greylist-max-o TRANSACTION_setStatusHints:I = 0x16

.field static final greylist-max-o TRANSACTION_setVideoProvider:I = 0x13

.field static final greylist-max-o TRANSACTION_setVideoState:I = 0x14


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 156
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 157
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 165
    if-nez p0, :cond_4

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_4
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 169
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    if-eqz v1, :cond_14

    .line 170
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    return-object v1

    .line 172
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 181
    packed-switch p0, :pswitch_data_9c

    .line 349
    const/4 v0, 0x0

    return-object v0

    .line 345
    :pswitch_5
    const-string/jumbo v0, "queryLocation"

    return-object v0

    .line 341
    :pswitch_9
    const-string/jumbo v0, "setCallDirection"

    return-object v0

    .line 337
    :pswitch_d
    const-string/jumbo v0, "setConferenceState"

    return-object v0

    .line 333
    :pswitch_11
    const-string/jumbo v0, "resetConnectionTime"

    return-object v0

    .line 329
    :pswitch_15
    const-string v0, "onConnectionServiceFocusReleased"

    return-object v0

    .line 325
    :pswitch_18
    const-string v0, "onPhoneAccountChanged"

    return-object v0

    .line 321
    :pswitch_1b
    const-string v0, "onRemoteRttRequest"

    return-object v0

    .line 317
    :pswitch_1e
    const-string v0, "onRttSessionRemotelyTerminated"

    return-object v0

    .line 313
    :pswitch_21
    const-string v0, "onRttInitiationFailure"

    return-object v0

    .line 309
    :pswitch_24
    const-string v0, "onRttInitiationSuccess"

    return-object v0

    .line 305
    :pswitch_27
    const-string v0, "onConnectionEvent"

    return-object v0

    .line 301
    :pswitch_2a
    const-string/jumbo v0, "requestCallEndpointChange"

    return-object v0

    .line 297
    :pswitch_2e
    const-string/jumbo v0, "setAudioRoute"

    return-object v0

    .line 293
    :pswitch_32
    const-string/jumbo v0, "removeExtras"

    return-object v0

    .line 289
    :pswitch_36
    const-string/jumbo v0, "putExtras"

    return-object v0

    .line 285
    :pswitch_3a
    const-string v0, "addExistingConnection"

    return-object v0

    .line 281
    :pswitch_3d
    const-string/jumbo v0, "setConferenceableConnections"

    return-object v0

    .line 277
    :pswitch_41
    const-string/jumbo v0, "setCallerDisplayName"

    return-object v0

    .line 273
    :pswitch_45
    const-string/jumbo v0, "setAddress"

    return-object v0

    .line 269
    :pswitch_49
    const-string/jumbo v0, "setStatusHints"

    return-object v0

    .line 265
    :pswitch_4d
    const-string/jumbo v0, "setIsVoipAudioMode"

    return-object v0

    .line 261
    :pswitch_51
    const-string/jumbo v0, "setVideoState"

    return-object v0

    .line 257
    :pswitch_55
    const-string/jumbo v0, "setVideoProvider"

    return-object v0

    .line 253
    :pswitch_59
    const-string/jumbo v0, "queryRemoteConnectionServices"

    return-object v0

    .line 249
    :pswitch_5d
    const-string v0, "onPostDialChar"

    return-object v0

    .line 245
    :pswitch_60
    const-string v0, "onPostDialWait"

    return-object v0

    .line 241
    :pswitch_63
    const-string/jumbo v0, "removeCall"

    return-object v0

    .line 237
    :pswitch_67
    const-string v0, "addConferenceCall"

    return-object v0

    .line 233
    :pswitch_6a
    const-string/jumbo v0, "setConferenceMergeFailed"

    return-object v0

    .line 229
    :pswitch_6e
    const-string/jumbo v0, "setIsConferenced"

    return-object v0

    .line 225
    :pswitch_72
    const-string/jumbo v0, "setConnectionProperties"

    return-object v0

    .line 221
    :pswitch_76
    const-string/jumbo v0, "setConnectionCapabilities"

    return-object v0

    .line 217
    :pswitch_7a
    const-string/jumbo v0, "setRingbackRequested"

    return-object v0

    .line 213
    :pswitch_7e
    const-string/jumbo v0, "setOnHold"

    return-object v0

    .line 209
    :pswitch_82
    const-string/jumbo v0, "setDisconnected"

    return-object v0

    .line 205
    :pswitch_86
    const-string/jumbo v0, "setPulling"

    return-object v0

    .line 201
    :pswitch_8a
    const-string/jumbo v0, "setDialing"

    return-object v0

    .line 197
    :pswitch_8e
    const-string/jumbo v0, "setRinging"

    return-object v0

    .line 193
    :pswitch_92
    const-string/jumbo v0, "setActive"

    return-object v0

    .line 189
    :pswitch_96
    const-string v0, "handleCreateConferenceComplete"

    return-object v0

    .line 185
    :pswitch_99
    const-string v0, "handleCreateConnectionComplete"

    return-object v0

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_99
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_67
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
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

    .line 176
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1493
    const/16 v0, 0x28

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 356
    invoke-static {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    .line 361
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 362
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 365
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    return v1

    .line 368
    :cond_16
    packed-switch p1, :pswitch_data_454

    .line 856
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 841
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 843
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 845
    .local v5, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 847
    .local v7, "_arg2":Ljava/lang/String;
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/os/ResultReceiver;

    .line 849
    .local v8, "_arg3":Landroid/os/ResultReceiver;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/telecom/Logging/Session$Info;

    .line 850
    .local v9, "_arg4":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryLocation(Ljava/lang/String;JLjava/lang/String;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V

    .line 852
    goto/16 :goto_453

    .line 829
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":J
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/os/ResultReceiver;
    .end local v9    # "_arg4":Landroid/telecom/Logging/Session$Info;
    :pswitch_46
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 833
    .local v4, "_arg1":I
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 834
    .local v5, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 836
    goto/16 :goto_453

    .line 817
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_5f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 821
    .local v4, "_arg1":Z
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 822
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 824
    goto/16 :goto_453

    .line 807
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_78
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 809
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 810
    .local v4, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->resetConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 812
    goto/16 :goto_453

    .line 799
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_8d
    move-object v3, p0

    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 800
    .local v2, "_arg0":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V

    .line 802
    goto/16 :goto_453

    .line 787
    .end local v2    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :pswitch_9e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 791
    .local v4, "_arg1":Landroid/telecom/PhoneAccountHandle;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 792
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V

    .line 794
    goto/16 :goto_453

    .line 777
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_bb
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 779
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 780
    .local v4, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 782
    goto/16 :goto_453

    .line 767
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_d0
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 769
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 770
    .restart local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 772
    goto/16 :goto_453

    .line 755
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_e5
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 757
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 759
    .local v4, "_arg1":I
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 760
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 762
    goto/16 :goto_453

    .line 745
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_fe
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 747
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 748
    .local v4, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 750
    goto/16 :goto_453

    .line 731
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_113
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 733
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 735
    .local v4, "_arg1":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 737
    .local v5, "_arg2":Landroid/os/Bundle;
    sget-object v6, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session$Info;

    .line 738
    .local v6, "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 740
    goto/16 :goto_453

    .line 717
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/os/Bundle;
    .end local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_134
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 719
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/CallEndpoint;

    .line 721
    .local v4, "_arg1":Landroid/telecom/CallEndpoint;
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    .line 723
    .local v5, "_arg2":Landroid/os/ResultReceiver;
    sget-object v6, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session$Info;

    .line 724
    .restart local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->requestCallEndpointChange(Ljava/lang/String;Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V

    .line 726
    goto/16 :goto_453

    .line 703
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/CallEndpoint;
    .end local v5    # "_arg2":Landroid/os/ResultReceiver;
    .end local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_159
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 705
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 707
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, "_arg2":Ljava/lang/String;
    sget-object v6, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session$Info;

    .line 710
    .restart local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 712
    goto/16 :goto_453

    .line 691
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_176
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 693
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 695
    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 696
    .local v5, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 698
    goto/16 :goto_453

    .line 679
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_18f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 681
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 683
    .local v4, "_arg1":Landroid/os/Bundle;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 684
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 686
    goto/16 :goto_453

    .line 667
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/os/Bundle;
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1ac
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 669
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/ParcelableConnection;

    .line 671
    .local v4, "_arg1":Landroid/telecom/ParcelableConnection;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 672
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 674
    goto/16 :goto_453

    .line 655
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/ParcelableConnection;
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1c9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 657
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 659
    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 660
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 662
    goto/16 :goto_453

    .line 641
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1e2
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 643
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 647
    .local v5, "_arg2":I
    sget-object v6, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session$Info;

    .line 648
    .restart local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 650
    goto/16 :goto_453

    .line 627
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_1ff
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 629
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 631
    .local v4, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 633
    .restart local v5    # "_arg2":I
    sget-object v6, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session$Info;

    .line 634
    .restart local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V

    .line 636
    goto/16 :goto_453

    .line 615
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/net/Uri;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_220
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 617
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/StatusHints;

    .line 619
    .local v4, "_arg1":Landroid/telecom/StatusHints;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 620
    .local v5, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V

    .line 622
    goto/16 :goto_453

    .line 603
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/StatusHints;
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_23d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 607
    .local v4, "_arg1":Z
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 608
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 610
    goto/16 :goto_453

    .line 591
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_256
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 593
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 595
    .local v4, "_arg1":I
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 596
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 598
    goto/16 :goto_453

    .line 579
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_26f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 581
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v4

    .line 583
    .local v4, "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 584
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V

    .line 586
    goto/16 :goto_453

    .line 567
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_28c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    move-result-object v2

    .line 569
    .local v2, "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, "_arg1":Ljava/lang/String;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 572
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 574
    goto/16 :goto_453

    .line 555
    .end local v2    # "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_2a9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v4, v4

    .line 559
    .local v4, "_arg1":C
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 560
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    .line 562
    goto/16 :goto_453

    .line 543
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":C
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_2c3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 545
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, "_arg1":Ljava/lang/String;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 548
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 550
    goto/16 :goto_453

    .line 533
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_2dc
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 535
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 536
    .local v4, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 538
    goto/16 :goto_453

    .line 521
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_2f1
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 523
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/ParcelableConference;

    .line 525
    .local v4, "_arg1":Landroid/telecom/ParcelableConference;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 526
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V

    .line 528
    goto/16 :goto_453

    .line 511
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/ParcelableConference;
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_30e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 513
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 514
    .local v4, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 516
    goto/16 :goto_453

    .line 499
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_323
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, "_arg1":Ljava/lang/String;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 504
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 506
    goto/16 :goto_453

    .line 487
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_33c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 489
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 491
    .local v4, "_arg1":I
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 492
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 494
    goto/16 :goto_453

    .line 475
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_355
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 477
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 479
    .restart local v4    # "_arg1":I
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 480
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 482
    goto/16 :goto_453

    .line 463
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_36e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 465
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 467
    .local v4, "_arg1":Z
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 468
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 470
    goto/16 :goto_453

    .line 453
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_387
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 455
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 456
    .local v4, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 458
    goto/16 :goto_453

    .line 441
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_39c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 443
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/DisconnectCause;

    .line 445
    .local v4, "_arg1":Landroid/telecom/DisconnectCause;
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    .line 446
    .restart local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V

    .line 448
    goto/16 :goto_453

    .line 431
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/DisconnectCause;
    .end local v5    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_3b9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 433
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 434
    .local v4, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 436
    goto/16 :goto_453

    .line 421
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_3ce
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 424
    .restart local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 426
    goto/16 :goto_453

    .line 411
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_3e3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 414
    .restart local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 416
    goto :goto_453

    .line 401
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_3f7
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 403
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    .line 404
    .restart local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 406
    goto :goto_453

    .line 387
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_40b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 389
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/ConnectionRequest;

    .line 391
    .local v4, "_arg1":Landroid/telecom/ConnectionRequest;
    sget-object v5, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/ParcelableConference;

    .line 393
    .local v5, "_arg2":Landroid/telecom/ParcelableConference;
    sget-object v6, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session$Info;

    .line 394
    .restart local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V

    .line 396
    goto :goto_453

    .line 373
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/ConnectionRequest;
    .end local v5    # "_arg2":Landroid/telecom/ParcelableConference;
    .end local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_42f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 375
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/ConnectionRequest;

    .line 377
    .restart local v4    # "_arg1":Landroid/telecom/ConnectionRequest;
    sget-object v5, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/ParcelableConnection;

    .line 379
    .local v5, "_arg2":Landroid/telecom/ParcelableConnection;
    sget-object v6, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session$Info;

    .line 380
    .restart local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 382
    nop

    .line 859
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/telecom/ConnectionRequest;
    .end local v5    # "_arg2":Landroid/telecom/ParcelableConnection;
    .end local v6    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :goto_453
    return v1

    :pswitch_data_454
    .packed-switch 0x1
        :pswitch_42f
        :pswitch_40b
        :pswitch_3f7
        :pswitch_3e3
        :pswitch_3ce
        :pswitch_3b9
        :pswitch_39c
        :pswitch_387
        :pswitch_36e
        :pswitch_355
        :pswitch_33c
        :pswitch_323
        :pswitch_30e
        :pswitch_2f1
        :pswitch_2dc
        :pswitch_2c3
        :pswitch_2a9
        :pswitch_28c
        :pswitch_26f
        :pswitch_256
        :pswitch_23d
        :pswitch_220
        :pswitch_1ff
        :pswitch_1e2
        :pswitch_1c9
        :pswitch_1ac
        :pswitch_18f
        :pswitch_176
        :pswitch_159
        :pswitch_134
        :pswitch_113
        :pswitch_fe
        :pswitch_e5
        :pswitch_d0
        :pswitch_bb
        :pswitch_9e
        :pswitch_8d
        :pswitch_78
        :pswitch_5f
        :pswitch_46
        :pswitch_1f
    .end packed-switch
.end method
