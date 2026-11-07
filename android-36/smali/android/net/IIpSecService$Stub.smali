.class public abstract Landroid/net/IIpSecService$Stub;
.super Landroid/os/Binder;
.source "IIpSecService.java"

# interfaces
.implements Landroid/net/IIpSecService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpSecService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.IIpSecService"

.field static final greylist-max-o TRANSACTION_addAddressToTunnelInterface:I = 0x6

.field static final greylist-max-o TRANSACTION_allocateSecurityParameterIndex:I = 0x1

.field static final greylist-max-o TRANSACTION_applyTransportModeTransform:I = 0xe

.field static final greylist-max-o TRANSACTION_applyTunnelModeTransform:I = 0xf

.field static final greylist-max-o TRANSACTION_closeUdpEncapsulationSocket:I = 0x4

.field static final greylist-max-o TRANSACTION_createTransform:I = 0xa

.field static final greylist-max-o TRANSACTION_createTunnelInterface:I = 0x5

.field static final greylist-max-o TRANSACTION_deleteTransform:I = 0xc

.field static final greylist-max-o TRANSACTION_deleteTunnelInterface:I = 0x9

.field static final blacklist TRANSACTION_getTransformState:I = 0xd

.field static final blacklist TRANSACTION_migrateTransform:I = 0xb

.field static final greylist-max-o TRANSACTION_openUdpEncapsulationSocket:I = 0x3

.field static final greylist-max-o TRANSACTION_releaseSecurityParameterIndex:I = 0x2

.field static final greylist-max-o TRANSACTION_removeAddressFromTunnelInterface:I = 0x7

.field static final greylist-max-o TRANSACTION_removeTransportModeTransforms:I = 0x10

.field static final blacklist TRANSACTION_setNetworkForTunnelInterface:I = 0x8


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "android.net.IIpSecService"

    invoke-virtual {p0, p0, v0}, Landroid/net/IIpSecService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/IIpSecService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 89
    if-nez p0, :cond_4

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_4
    const-string v0, "android.net.IIpSecService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IIpSecService;

    if-eqz v1, :cond_14

    .line 94
    move-object v1, v0

    check-cast v1, Landroid/net/IIpSecService;

    return-object v1

    .line 96
    :cond_14
    new-instance v1, Landroid/net/IIpSecService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IIpSecService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 105
    packed-switch p0, :pswitch_data_36

    .line 173
    const/4 v0, 0x0

    return-object v0

    .line 169
    :pswitch_5
    const-string v0, "removeTransportModeTransforms"

    return-object v0

    .line 165
    :pswitch_8
    const-string v0, "applyTunnelModeTransform"

    return-object v0

    .line 161
    :pswitch_b
    const-string v0, "applyTransportModeTransform"

    return-object v0

    .line 157
    :pswitch_e
    const-string v0, "getTransformState"

    return-object v0

    .line 153
    :pswitch_11
    const-string v0, "deleteTransform"

    return-object v0

    .line 149
    :pswitch_14
    const-string v0, "migrateTransform"

    return-object v0

    .line 145
    :pswitch_17
    const-string v0, "createTransform"

    return-object v0

    .line 141
    :pswitch_1a
    const-string v0, "deleteTunnelInterface"

    return-object v0

    .line 137
    :pswitch_1d
    const-string v0, "setNetworkForTunnelInterface"

    return-object v0

    .line 133
    :pswitch_20
    const-string v0, "removeAddressFromTunnelInterface"

    return-object v0

    .line 129
    :pswitch_23
    const-string v0, "addAddressToTunnelInterface"

    return-object v0

    .line 125
    :pswitch_26
    const-string v0, "createTunnelInterface"

    return-object v0

    .line 121
    :pswitch_29
    const-string v0, "closeUdpEncapsulationSocket"

    return-object v0

    .line 117
    :pswitch_2c
    const-string v0, "openUdpEncapsulationSocket"

    return-object v0

    .line 113
    :pswitch_2f
    const-string v0, "releaseSecurityParameterIndex"

    return-object v0

    .line 109
    :pswitch_32
    const-string v0, "allocateSecurityParameterIndex"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
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

    .line 100
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 714
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 180
    invoke-static {p1}, Landroid/net/IIpSecService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    const-string v0, "android.net.IIpSecService"

    .line 185
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 186
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 189
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    return v1

    .line 192
    :cond_16
    packed-switch p1, :pswitch_data_1ac

    .line 393
    move-object v5, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 385
    :pswitch_1f
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 386
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Landroid/net/IIpSecService$Stub;->removeTransportModeTransforms(Landroid/os/ParcelFileDescriptor;)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    move-object v5, p0

    goto/16 :goto_1ab

    .line 370
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 372
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 374
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 376
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/IIpSecService$Stub;->applyTunnelModeTransform(IIILjava/lang/String;)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    move-object v5, p0

    goto/16 :goto_1ab

    .line 357
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_4f
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 359
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 361
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 362
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IIpSecService$Stub;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;II)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    move-object v5, p0

    goto/16 :goto_1ab

    .line 347
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2}, Landroid/net/IIpSecService$Stub;->getTransformState(I)Landroid/net/IpSecTransformState;

    move-result-object v3

    .line 350
    .local v3, "_result":Landroid/net/IpSecTransformState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 352
    move-object v5, p0

    goto/16 :goto_1ab

    .line 338
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/net/IpSecTransformState;
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2}, Landroid/net/IIpSecService$Stub;->deleteTransform(I)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    move-object v5, p0

    goto/16 :goto_1ab

    .line 323
    .end local v2    # "_arg0":I
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 325
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 330
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/IIpSecService$Stub;->migrateTransform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    move-object v5, p0

    goto/16 :goto_1ab

    .line 309
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_ab
    sget-object v2, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpSecConfig;

    .line 311
    .local v2, "_arg0":Landroid/net/IpSecConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 313
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 314
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IIpSecService$Stub;->createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;

    move-result-object v5

    .line 316
    .local v5, "_result":Landroid/net/IpSecTransformResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 318
    move-object v5, p0

    goto/16 :goto_1ab

    .line 298
    .end local v2    # "_arg0":Landroid/net/IpSecConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/net/IpSecTransformResponse;
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2, v3}, Landroid/net/IIpSecService$Stub;->deleteTunnelInterface(ILjava/lang/String;)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    move-object v5, p0

    goto/16 :goto_1ab

    .line 285
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 287
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Network;

    .line 289
    .local v3, "_arg1":Landroid/net/Network;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 290
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IIpSecService$Stub;->setNetworkForTunnelInterface(ILandroid/net/Network;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    move-object v5, p0

    goto/16 :goto_1ab

    .line 272
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/Network;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 276
    .local v3, "_arg1":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 277
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IIpSecService$Stub;->removeAddressFromTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    move-object v5, p0

    goto/16 :goto_1ab

    .line 259
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/LinkAddress;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 261
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 263
    .restart local v3    # "_arg1":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 264
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IIpSecService$Stub;->addAddressToTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    move-object v5, p0

    goto/16 :goto_1ab

    .line 241
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/LinkAddress;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/net/Network;

    .line 247
    .local v8, "_arg2":Landroid/net/Network;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 249
    .local v9, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/net/IIpSecService$Stub;->createTunnelInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTunnelInterfaceResponse;

    move-result-object v2

    .line 252
    .local v2, "_result":Landroid/net/IpSecTunnelInterfaceResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 254
    goto :goto_1ab

    .line 232
    .end local v2    # "_result":Landroid/net/IpSecTunnelInterfaceResponse;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/net/Network;
    .end local v9    # "_arg3":Landroid/os/IBinder;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_15b
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/net/IIpSecService$Stub;->closeUdpEncapsulationSocket(I)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto :goto_1ab

    .line 220
    .end local v2    # "_arg0":I
    :pswitch_16a
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 223
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2, v3}, Landroid/net/IIpSecService$Stub;->openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;

    move-result-object v4

    .line 225
    .local v4, "_result":Landroid/net/IpSecUdpEncapResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 227
    goto :goto_1ab

    .line 211
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/net/IpSecUdpEncapResponse;
    :pswitch_181
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Landroid/net/IIpSecService$Stub;->releaseSecurityParameterIndex(I)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto :goto_1ab

    .line 197
    .end local v2    # "_arg0":I
    :pswitch_190
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 201
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 202
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IIpSecService$Stub;->allocateSecurityParameterIndex(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;

    move-result-object v6

    .line 204
    .local v6, "_result":Landroid/net/IpSecSpiResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    nop

    .line 396
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v6    # "_result":Landroid/net/IpSecSpiResponse;
    :goto_1ab
    return v1

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_190
        :pswitch_181
        :pswitch_16a
        :pswitch_15b
        :pswitch_133
        :pswitch_117
        :pswitch_fb
        :pswitch_df
        :pswitch_cb
        :pswitch_ab
        :pswitch_8f
        :pswitch_7f
        :pswitch_6b
        :pswitch_4f
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
