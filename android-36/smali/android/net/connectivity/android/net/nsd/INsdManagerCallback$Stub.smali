.class public abstract Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;
.super Landroid/os/Binder;
.source "INsdManagerCallback.java"

# interfaces
.implements Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDiscoverServicesFailed:I = 0x2

.field static final blacklist TRANSACTION_onDiscoverServicesStarted:I = 0x1

.field static final blacklist TRANSACTION_onRegisterServiceFailed:I = 0x7

.field static final blacklist TRANSACTION_onRegisterServiceSucceeded:I = 0x8

.field static final blacklist TRANSACTION_onResolveServiceFailed:I = 0xb

.field static final blacklist TRANSACTION_onResolveServiceSucceeded:I = 0xc

.field static final blacklist TRANSACTION_onServiceFound:I = 0x3

.field static final blacklist TRANSACTION_onServiceInfoCallbackRegistrationFailed:I = 0xf

.field static final blacklist TRANSACTION_onServiceInfoCallbackUnregistered:I = 0x12

.field static final blacklist TRANSACTION_onServiceLost:I = 0x4

.field static final blacklist TRANSACTION_onServiceUpdated:I = 0x10

.field static final blacklist TRANSACTION_onServiceUpdatedLost:I = 0x11

.field static final blacklist TRANSACTION_onStopDiscoveryFailed:I = 0x5

.field static final blacklist TRANSACTION_onStopDiscoverySucceeded:I = 0x6

.field static final blacklist TRANSACTION_onStopResolutionFailed:I = 0xd

.field static final blacklist TRANSACTION_onStopResolutionSucceeded:I = 0xe

.field static final blacklist TRANSACTION_onUnregisterServiceFailed:I = 0x9

.field static final blacklist TRANSACTION_onUnregisterServiceSucceeded:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    const-string v0, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 93
    if-nez p0, :cond_4

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_4
    const-string v0, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;

    if-eqz v1, :cond_14

    .line 98
    move-object v1, v0

    check-cast v1, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;

    return-object v1

    .line 100
    :cond_14
    new-instance v1, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 109
    packed-switch p0, :pswitch_data_3c

    .line 185
    const/4 v0, 0x0

    return-object v0

    .line 181
    :pswitch_5
    const-string v0, "onServiceInfoCallbackUnregistered"

    return-object v0

    .line 177
    :pswitch_8
    const-string v0, "onServiceUpdatedLost"

    return-object v0

    .line 173
    :pswitch_b
    const-string v0, "onServiceUpdated"

    return-object v0

    .line 169
    :pswitch_e
    const-string v0, "onServiceInfoCallbackRegistrationFailed"

    return-object v0

    .line 165
    :pswitch_11
    const-string v0, "onStopResolutionSucceeded"

    return-object v0

    .line 161
    :pswitch_14
    const-string v0, "onStopResolutionFailed"

    return-object v0

    .line 157
    :pswitch_17
    const-string v0, "onResolveServiceSucceeded"

    return-object v0

    .line 153
    :pswitch_1a
    const-string v0, "onResolveServiceFailed"

    return-object v0

    .line 149
    :pswitch_1d
    const-string v0, "onUnregisterServiceSucceeded"

    return-object v0

    .line 145
    :pswitch_20
    const-string v0, "onUnregisterServiceFailed"

    return-object v0

    .line 141
    :pswitch_23
    const-string v0, "onRegisterServiceSucceeded"

    return-object v0

    .line 137
    :pswitch_26
    const-string v0, "onRegisterServiceFailed"

    return-object v0

    .line 133
    :pswitch_29
    const-string v0, "onStopDiscoverySucceeded"

    return-object v0

    .line 129
    :pswitch_2c
    const-string v0, "onStopDiscoveryFailed"

    return-object v0

    .line 125
    :pswitch_2f
    const-string v0, "onServiceLost"

    return-object v0

    .line 121
    :pswitch_32
    const-string v0, "onServiceFound"

    return-object v0

    .line 117
    :pswitch_35
    const-string v0, "onDiscoverServicesFailed"

    return-object v0

    .line 113
    :pswitch_38
    const-string v0, "onDiscoverServicesStarted"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
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

    .line 104
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 649
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 192
    invoke-static {p1}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    const-string v0, "android.net.connectivity.android.net.nsd.INsdManagerCallback"

    .line 197
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 198
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 201
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    return v1

    .line 204
    :cond_16
    packed-switch p1, :pswitch_data_13c

    .line 378
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 371
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 372
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onServiceInfoCallbackUnregistered(I)V

    .line 374
    goto/16 :goto_13b

    .line 363
    .end local v2    # "_arg0":I
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onServiceUpdatedLost(I)V

    .line 366
    goto/16 :goto_13b

    .line 353
    .end local v2    # "_arg0":I
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    .line 356
    .local v3, "_arg1":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onServiceUpdated(ILandroid/net/nsd/NsdServiceInfo;)V

    .line 358
    goto/16 :goto_13b

    .line 343
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 346
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onServiceInfoCallbackRegistrationFailed(II)V

    .line 348
    goto/16 :goto_13b

    .line 335
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onStopResolutionSucceeded(I)V

    .line 338
    goto/16 :goto_13b

    .line 325
    .end local v2    # "_arg0":I
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 327
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 328
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onStopResolutionFailed(II)V

    .line 330
    goto/16 :goto_13b

    .line 315
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 317
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    .line 318
    .local v3, "_arg1":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onResolveServiceSucceeded(ILandroid/net/nsd/NsdServiceInfo;)V

    .line 320
    goto/16 :goto_13b

    .line 305
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 307
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 308
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onResolveServiceFailed(II)V

    .line 310
    goto/16 :goto_13b

    .line 297
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onUnregisterServiceSucceeded(I)V

    .line 300
    goto/16 :goto_13b

    .line 287
    .end local v2    # "_arg0":I
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onUnregisterServiceFailed(II)V

    .line 292
    goto/16 :goto_13b

    .line 277
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    .line 280
    .local v3, "_arg1":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onRegisterServiceSucceeded(ILandroid/net/nsd/NsdServiceInfo;)V

    .line 282
    goto/16 :goto_13b

    .line 267
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onRegisterServiceFailed(II)V

    .line 272
    goto :goto_13b

    .line 259
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onStopDiscoverySucceeded(I)V

    .line 262
    goto :goto_13b

    .line 249
    .end local v2    # "_arg0":I
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 252
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onStopDiscoveryFailed(II)V

    .line 254
    goto :goto_13b

    .line 239
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    .line 242
    .local v3, "_arg1":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onServiceLost(ILandroid/net/nsd/NsdServiceInfo;)V

    .line 244
    goto :goto_13b

    .line 229
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/nsd/NsdServiceInfo;

    .line 232
    .restart local v3    # "_arg1":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onServiceFound(ILandroid/net/nsd/NsdServiceInfo;)V

    .line 234
    goto :goto_13b

    .line 219
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onDiscoverServicesFailed(II)V

    .line 224
    goto :goto_13b

    .line 209
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/nsd/DiscoveryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/nsd/DiscoveryRequest;

    .line 212
    .local v3, "_arg1":Landroid/net/nsd/DiscoveryRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;->onDiscoverServicesStarted(ILandroid/net/nsd/DiscoveryRequest;)V

    .line 214
    nop

    .line 381
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/nsd/DiscoveryRequest;
    :goto_13b
    return v1

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_128
        :pswitch_119
        :pswitch_106
        :pswitch_f3
        :pswitch_e4
        :pswitch_d9
        :pswitch_ca
        :pswitch_b6
        :pswitch_a6
        :pswitch_9a
        :pswitch_8a
        :pswitch_76
        :pswitch_66
        :pswitch_5a
        :pswitch_4a
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
