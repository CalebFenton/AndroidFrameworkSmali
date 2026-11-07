.class public abstract Lcom/android/internal/telecom/IInCallService$Stub;
.super Landroid/os/Binder;
.source "IInCallService.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallService"

.field static final greylist-max-o TRANSACTION_addCall:I = 0x2

.field static final greylist-max-o TRANSACTION_bringToForeground:I = 0xa

.field static final blacklist TRANSACTION_onAvailableCallEndpointsChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_onCallAudioStateChanged:I = 0x6

.field static final blacklist TRANSACTION_onCallEndpointChanged:I = 0x7

.field static final greylist-max-o TRANSACTION_onCanAddCallChanged:I = 0xb

.field static final greylist-max-o TRANSACTION_onConnectionEvent:I = 0xd

.field static final greylist-max-o TRANSACTION_onHandoverComplete:I = 0x11

.field static final greylist-max-o TRANSACTION_onHandoverFailed:I = 0x10

.field static final blacklist TRANSACTION_onMuteStateChanged:I = 0x9

.field static final greylist-max-o TRANSACTION_onRttInitiationFailure:I = 0xf

.field static final greylist-max-o TRANSACTION_onRttUpgradeRequest:I = 0xe

.field static final greylist-max-o TRANSACTION_setInCallAdapter:I = 0x1

.field static final greylist-max-o TRANSACTION_setPostDial:I = 0x4

.field static final greylist-max-o TRANSACTION_setPostDialWait:I = 0x5

.field static final greylist-max-o TRANSACTION_silenceRinger:I = 0xc

.field static final greylist-max-o TRANSACTION_updateCall:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    const-string v0, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 93
    if-nez p0, :cond_4

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_4
    const-string v0, "com.android.internal.telecom.IInCallService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallService;

    if-eqz v1, :cond_14

    .line 98
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IInCallService;

    return-object v1

    .line 100
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 109
    packed-switch p0, :pswitch_data_3e

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 177
    :pswitch_5
    const-string v0, "onHandoverComplete"

    return-object v0

    .line 173
    :pswitch_8
    const-string v0, "onHandoverFailed"

    return-object v0

    .line 169
    :pswitch_b
    const-string v0, "onRttInitiationFailure"

    return-object v0

    .line 165
    :pswitch_e
    const-string v0, "onRttUpgradeRequest"

    return-object v0

    .line 161
    :pswitch_11
    const-string v0, "onConnectionEvent"

    return-object v0

    .line 157
    :pswitch_14
    const-string/jumbo v0, "silenceRinger"

    return-object v0

    .line 153
    :pswitch_18
    const-string v0, "onCanAddCallChanged"

    return-object v0

    .line 149
    :pswitch_1b
    const-string v0, "bringToForeground"

    return-object v0

    .line 145
    :pswitch_1e
    const-string v0, "onMuteStateChanged"

    return-object v0

    .line 141
    :pswitch_21
    const-string v0, "onAvailableCallEndpointsChanged"

    return-object v0

    .line 137
    :pswitch_24
    const-string v0, "onCallEndpointChanged"

    return-object v0

    .line 133
    :pswitch_27
    const-string v0, "onCallAudioStateChanged"

    return-object v0

    .line 129
    :pswitch_2a
    const-string/jumbo v0, "setPostDialWait"

    return-object v0

    .line 125
    :pswitch_2e
    const-string/jumbo v0, "setPostDial"

    return-object v0

    .line 121
    :pswitch_32
    const-string/jumbo v0, "updateCall"

    return-object v0

    .line 117
    :pswitch_36
    const-string v0, "addCall"

    return-object v0

    .line 113
    :pswitch_39
    const-string/jumbo v0, "setInCallAdapter"

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_39
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

    .line 104
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 604
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 188
    invoke-static {p1}, Lcom/android/internal/telecom/IInCallService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    const-string v0, "com.android.internal.telecom.IInCallService"

    .line 193
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 194
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 197
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    return v1

    .line 200
    :cond_16
    packed-switch p1, :pswitch_data_112

    .line 351
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 344
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->onHandoverComplete(Ljava/lang/String;)V

    .line 347
    goto/16 :goto_111

    .line 334
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 337
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->onHandoverFailed(Ljava/lang/String;I)V

    .line 339
    goto/16 :goto_111

    .line 324
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->onRttInitiationFailure(Ljava/lang/String;I)V

    .line 329
    goto/16 :goto_111

    .line 314
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 317
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->onRttUpgradeRequest(Ljava/lang/String;I)V

    .line 319
    goto/16 :goto_111

    .line 302
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 307
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallService$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 309
    goto/16 :goto_111

    .line 296
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_72
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallService$Stub;->silenceRinger()V

    .line 297
    goto/16 :goto_111

    .line 289
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 290
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->onCanAddCallChanged(Z)V

    .line 292
    goto/16 :goto_111

    .line 281
    .end local v2    # "_arg0":Z
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 282
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->bringToForeground(Z)V

    .line 284
    goto/16 :goto_111

    .line 273
    .end local v2    # "_arg0":Z
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 274
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->onMuteStateChanged(Z)V

    .line 276
    goto/16 :goto_111

    .line 265
    .end local v2    # "_arg0":Z
    :pswitch_9b
    sget-object v2, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 266
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    .line 268
    goto :goto_111

    .line 257
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    :pswitch_a8
    sget-object v2, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallEndpoint;

    .line 258
    .local v2, "_arg0":Landroid/telecom/CallEndpoint;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    .line 260
    goto :goto_111

    .line 249
    .end local v2    # "_arg0":Landroid/telecom/CallEndpoint;
    :pswitch_b7
    sget-object v2, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallAudioState;

    .line 250
    .local v2, "_arg0":Landroid/telecom/CallAudioState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 252
    goto :goto_111

    .line 239
    .end local v2    # "_arg0":Landroid/telecom/CallAudioState;
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    goto :goto_111

    .line 229
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 232
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDial(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    goto :goto_111

    .line 221
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_e4
    sget-object v2, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    .line 222
    .local v2, "_arg0":Landroid/telecom/ParcelableCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    .line 224
    goto :goto_111

    .line 213
    .end local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    :pswitch_f3
    sget-object v2, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    .line 214
    .restart local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->addCall(Landroid/telecom/ParcelableCall;)V

    .line 216
    goto :goto_111

    .line 205
    .end local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;

    move-result-object v2

    .line 206
    .local v2, "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    .line 208
    nop

    .line 354
    .end local v2    # "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    :goto_111
    return v1

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_102
        :pswitch_f3
        :pswitch_e4
        :pswitch_d5
        :pswitch_c6
        :pswitch_b7
        :pswitch_a8
        :pswitch_9b
        :pswitch_8f
        :pswitch_83
        :pswitch_77
        :pswitch_72
        :pswitch_5a
        :pswitch_4a
        :pswitch_3a
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
