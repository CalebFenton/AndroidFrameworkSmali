.class public abstract Lcom/android/internal/telecom/ICallEventCallback$Stub;
.super Landroid/os/Binder;
.source "ICallEventCallback.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAddCallControl:I = 0x1

.field static final blacklist TRANSACTION_onAnswer:I = 0x4

.field static final blacklist TRANSACTION_onAvailableCallEndpointsChanged:I = 0x9

.field static final blacklist TRANSACTION_onCallEndpointChanged:I = 0x8

.field static final blacklist TRANSACTION_onCallStreamingFailed:I = 0x7

.field static final blacklist TRANSACTION_onCallStreamingStarted:I = 0x6

.field static final blacklist TRANSACTION_onDisconnect:I = 0x5

.field static final blacklist TRANSACTION_onEvent:I = 0xc

.field static final blacklist TRANSACTION_onMuteStateChanged:I = 0xa

.field static final blacklist TRANSACTION_onSetActive:I = 0x2

.field static final blacklist TRANSACTION_onSetInactive:I = 0x3

.field static final blacklist TRANSACTION_onVideoStateChanged:I = 0xb

.field static final blacklist TRANSACTION_removeCallFromTransactionalServiceWrapper:I = 0xd


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "com.android.internal.telecom.ICallEventCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallEventCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_4

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallEventCallback;

    if-eqz v1, :cond_14

    .line 87
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallEventCallback;

    return-object v1

    .line 89
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 98
    packed-switch p0, :pswitch_data_2e

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 150
    :pswitch_5
    const-string/jumbo v0, "removeCallFromTransactionalServiceWrapper"

    return-object v0

    .line 146
    :pswitch_9
    const-string v0, "onEvent"

    return-object v0

    .line 142
    :pswitch_c
    const-string v0, "onVideoStateChanged"

    return-object v0

    .line 138
    :pswitch_f
    const-string v0, "onMuteStateChanged"

    return-object v0

    .line 134
    :pswitch_12
    const-string v0, "onAvailableCallEndpointsChanged"

    return-object v0

    .line 130
    :pswitch_15
    const-string v0, "onCallEndpointChanged"

    return-object v0

    .line 126
    :pswitch_18
    const-string v0, "onCallStreamingFailed"

    return-object v0

    .line 122
    :pswitch_1b
    const-string v0, "onCallStreamingStarted"

    return-object v0

    .line 118
    :pswitch_1e
    const-string v0, "onDisconnect"

    return-object v0

    .line 114
    :pswitch_21
    const-string v0, "onAnswer"

    return-object v0

    .line 110
    :pswitch_24
    const-string v0, "onSetInactive"

    return-object v0

    .line 106
    :pswitch_27
    const-string v0, "onSetActive"

    return-object v0

    .line 102
    :pswitch_2a
    const-string v0, "onAddCallControl"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 93
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 532
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 161
    invoke-static {p1}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 165
    const-string v0, "com.android.internal.telecom.ICallEventCallback"

    .line 166
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 170
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return v1

    .line 173
    :cond_16
    packed-switch p1, :pswitch_data_124

    .line 315
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 308
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->removeCallFromTransactionalServiceWrapper(Ljava/lang/String;)V

    .line 311
    goto/16 :goto_123

    .line 296
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 301
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 303
    goto/16 :goto_123

    .line 286
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 289
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onVideoStateChanged(Ljava/lang/String;I)V

    .line 291
    goto/16 :goto_123

    .line 276
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 279
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onMuteStateChanged(Ljava/lang/String;Z)V

    .line 281
    goto/16 :goto_123

    .line 266
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 269
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 271
    goto/16 :goto_123

    .line 256
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallEndpoint;

    .line 259
    .local v3, "_arg1":Landroid/telecom/CallEndpoint;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;)V

    .line 261
    goto/16 :goto_123

    .line 246
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/CallEndpoint;
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 249
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onCallStreamingFailed(Ljava/lang/String;I)V

    .line 251
    goto/16 :goto_123

    .line 236
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 239
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onCallStreamingStarted(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 241
    goto/16 :goto_123

    .line 224
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/DisconnectCause;

    .line 228
    .local v3, "_arg1":Landroid/telecom/DisconnectCause;
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 229
    .local v4, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onDisconnect(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/os/ResultReceiver;)V

    .line 231
    goto :goto_123

    .line 212
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/DisconnectCause;
    .end local v4    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 216
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 217
    .restart local v4    # "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onAnswer(Ljava/lang/String;ILandroid/os/ResultReceiver;)V

    .line 219
    goto :goto_123

    .line 202
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 205
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onSetInactive(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 207
    goto :goto_123

    .line 192
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 195
    .restart local v3    # "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onSetActive(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 197
    goto :goto_123

    .line 178
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telecom/ICallControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallControl;

    move-result-object v4

    .line 184
    .local v4, "_arg2":Lcom/android/internal/telecom/ICallControl;
    sget-object v5, Landroid/telecom/CallException;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/CallException;

    .line 185
    .local v5, "_arg3":Landroid/telecom/CallException;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onAddCallControl(Ljava/lang/String;ILcom/android/internal/telecom/ICallControl;Landroid/telecom/CallException;)V

    .line 187
    nop

    .line 318
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/internal/telecom/ICallControl;
    .end local v5    # "_arg3":Landroid/telecom/CallException;
    :goto_123
    return v1

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_104
        :pswitch_f1
        :pswitch_de
        :pswitch_c7
        :pswitch_ac
        :pswitch_98
        :pswitch_88
        :pswitch_74
        :pswitch_62
        :pswitch_52
        :pswitch_42
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
