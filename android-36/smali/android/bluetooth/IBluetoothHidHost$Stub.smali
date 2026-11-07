.class public abstract Landroid/bluetooth/IBluetoothHidHost$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHidHost.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHidHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHidHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHidHost"

.field static final blacklist TRANSACTION_connect:I = 0x1

.field static final blacklist TRANSACTION_disconnect:I = 0x2

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x3

.field static final blacklist TRANSACTION_getConnectionPolicy:I = 0x7

.field static final blacklist TRANSACTION_getConnectionState:I = 0x5

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final blacklist TRANSACTION_getIdleTime:I = 0x10

.field static final blacklist TRANSACTION_getPreferredTransport:I = 0x9

.field static final blacklist TRANSACTION_getProtocolMode:I = 0xa

.field static final blacklist TRANSACTION_getReport:I = 0xd

.field static final blacklist TRANSACTION_sendData:I = 0xf

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0x6

.field static final blacklist TRANSACTION_setIdleTime:I = 0x11

.field static final blacklist TRANSACTION_setPreferredTransport:I = 0x8

.field static final blacklist TRANSACTION_setProtocolMode:I = 0xc

.field static final blacklist TRANSACTION_setReport:I = 0xe

.field static final blacklist TRANSACTION_virtualUnplug:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 101
    const-string v0, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHidHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidHost;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 109
    if-nez p0, :cond_4

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothHidHost"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 113
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHidHost;

    if-eqz v1, :cond_14

    .line 114
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothHidHost;

    return-object v1

    .line 116
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 125
    packed-switch p0, :pswitch_data_38

    .line 197
    const/4 v0, 0x0

    return-object v0

    .line 193
    :pswitch_5
    const-string v0, "setIdleTime"

    return-object v0

    .line 189
    :pswitch_8
    const-string v0, "getIdleTime"

    return-object v0

    .line 185
    :pswitch_b
    const-string v0, "sendData"

    return-object v0

    .line 181
    :pswitch_e
    const-string v0, "setReport"

    return-object v0

    .line 177
    :pswitch_11
    const-string v0, "getReport"

    return-object v0

    .line 173
    :pswitch_14
    const-string v0, "setProtocolMode"

    return-object v0

    .line 169
    :pswitch_17
    const-string v0, "virtualUnplug"

    return-object v0

    .line 165
    :pswitch_1a
    const-string v0, "getProtocolMode"

    return-object v0

    .line 161
    :pswitch_1d
    const-string v0, "getPreferredTransport"

    return-object v0

    .line 157
    :pswitch_20
    const-string v0, "setPreferredTransport"

    return-object v0

    .line 153
    :pswitch_23
    const-string v0, "getConnectionPolicy"

    return-object v0

    .line 149
    :pswitch_26
    const-string v0, "setConnectionPolicy"

    return-object v0

    .line 145
    :pswitch_29
    const-string v0, "getConnectionState"

    return-object v0

    .line 141
    :pswitch_2c
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 137
    :pswitch_2f
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 133
    :pswitch_32
    const-string v0, "disconnect"

    return-object v0

    .line 129
    :pswitch_35
    const-string v0, "connect"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
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

    .line 120
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 818
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 204
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 208
    const-string v0, "android.bluetooth.IBluetoothHidHost"

    .line 209
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 210
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 213
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    return v1

    .line 216
    :cond_16
    packed-switch p1, :pswitch_data_25a

    .line 442
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 429
    :pswitch_1f
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 431
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 433
    .local v3, "_arg1":B
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 434
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothHidHost$Stub;->setIdleTime(Landroid/bluetooth/BluetoothDevice;BLandroid/content/AttributionSource;)Z

    move-result v5

    .line 436
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 438
    move-object v3, p0

    goto/16 :goto_259

    .line 417
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_43
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 419
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 420
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getIdleTime(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 422
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 424
    move-object v3, p0

    goto/16 :goto_259

    .line 403
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_63
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 405
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 408
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothHidHost$Stub;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v5

    .line 410
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 412
    move-object v3, p0

    goto/16 :goto_259

    .line 387
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_87
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 389
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 391
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "_arg2":Ljava/lang/String;
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 394
    .local v5, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothHidHost$Stub;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v6

    .line 396
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 398
    move-object v3, p0

    goto/16 :goto_259

    .line 369
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    :pswitch_af
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 371
    .local v4, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 373
    .local v5, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 375
    .local v6, "_arg2":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 377
    .local v7, "_arg3":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/content/AttributionSource;

    .line 378
    .local v8, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getReport(Landroid/bluetooth/BluetoothDevice;BBILandroid/content/AttributionSource;)Z

    move-result v2

    .line 380
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 382
    goto/16 :goto_259

    .line 355
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "_arg1":B
    .end local v6    # "_arg2":B
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/content/AttributionSource;
    :pswitch_dd
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 357
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 359
    .local v4, "_arg1":I
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 360
    .local v5, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2, v4, v5}, Landroid/bluetooth/IBluetoothHidHost$Stub;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v6

    .line 362
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 364
    goto/16 :goto_259

    .line 343
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    :pswitch_101
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 345
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 346
    .local v4, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothHidHost$Stub;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v5

    .line 348
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 350
    goto/16 :goto_259

    .line 331
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_121
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 333
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 334
    .restart local v4    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v5

    .line 336
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 338
    goto/16 :goto_259

    .line 319
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_141
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 321
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 322
    .restart local v4    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getPreferredTransport(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v5

    .line 324
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    goto/16 :goto_259

    .line 305
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":I
    :pswitch_161
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 307
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 309
    .local v4, "_arg1":I
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 310
    .local v5, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v2, v4, v5}, Landroid/bluetooth/IBluetoothHidHost$Stub;->setPreferredTransport(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v6

    .line 312
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    goto/16 :goto_259

    .line 293
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    :pswitch_185
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 295
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 296
    .local v4, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v5

    .line 298
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    goto/16 :goto_259

    .line 279
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":I
    :pswitch_1a5
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 281
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 283
    .local v4, "_arg1":I
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 284
    .local v5, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2, v4, v5}, Landroid/bluetooth/IBluetoothHidHost$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v6

    .line 286
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto/16 :goto_259

    .line 267
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    :pswitch_1c9
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 269
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 270
    .local v4, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v5

    .line 272
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    goto/16 :goto_259

    .line 255
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":I
    :pswitch_1e9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 257
    .local v2, "_arg0":[I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 258
    .restart local v4    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v5

    .line 260
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-static {p3, v5, v1}, Landroid/bluetooth/IBluetoothHidHost$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 262
    goto :goto_259

    .line 245
    .end local v2    # "_arg0":[I
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_204
    move-object v3, p0

    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 246
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothHidHost$Stub;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v4

    .line 248
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-static {p3, v4, v1}, Landroid/bluetooth/IBluetoothHidHost$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 250
    goto :goto_259

    .line 233
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_21b
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 235
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 236
    .local v4, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothHidHost$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v5

    .line 238
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 240
    goto :goto_259

    .line 221
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_23a
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 223
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 224
    .restart local v4    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothHidHost$Stub;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v5

    .line 226
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 228
    nop

    .line 445
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :goto_259
    return v1

    :pswitch_data_25a
    .packed-switch 0x1
        :pswitch_23a
        :pswitch_21b
        :pswitch_204
        :pswitch_1e9
        :pswitch_1c9
        :pswitch_1a5
        :pswitch_185
        :pswitch_161
        :pswitch_141
        :pswitch_121
        :pswitch_101
        :pswitch_dd
        :pswitch_af
        :pswitch_87
        :pswitch_63
        :pswitch_43
        :pswitch_1f
    .end packed-switch
.end method
