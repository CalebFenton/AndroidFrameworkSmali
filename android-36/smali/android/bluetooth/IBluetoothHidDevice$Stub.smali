.class public abstract Landroid/bluetooth/IBluetoothHidDevice$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHidDevice.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHidDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHidDevice"

.field static final blacklist TRANSACTION_connect:I = 0x7

.field static final blacklist TRANSACTION_disconnect:I = 0x8

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x9

.field static final blacklist TRANSACTION_getConnectionState:I = 0xb

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0xa

.field static final blacklist TRANSACTION_getUserAppName:I = 0xc

.field static final blacklist TRANSACTION_registerApp:I = 0x1

.field static final blacklist TRANSACTION_replyReport:I = 0x4

.field static final blacklist TRANSACTION_reportError:I = 0x5

.field static final blacklist TRANSACTION_sendReport:I = 0x3

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0xd

.field static final blacklist TRANSACTION_unplug:I = 0x6

.field static final blacklist TRANSACTION_unregisterApp:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDevice;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_4

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v1, :cond_14

    .line 93
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothHidDevice;

    return-object v1

    .line 95
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_2c

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 156
    :pswitch_5
    const-string v0, "setConnectionPolicy"

    return-object v0

    .line 152
    :pswitch_8
    const-string v0, "getUserAppName"

    return-object v0

    .line 148
    :pswitch_b
    const-string v0, "getConnectionState"

    return-object v0

    .line 144
    :pswitch_e
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 140
    :pswitch_11
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 136
    :pswitch_14
    const-string v0, "disconnect"

    return-object v0

    .line 132
    :pswitch_17
    const-string v0, "connect"

    return-object v0

    .line 128
    :pswitch_1a
    const-string v0, "unplug"

    return-object v0

    .line 124
    :pswitch_1d
    const-string v0, "reportError"

    return-object v0

    .line 120
    :pswitch_20
    const-string v0, "replyReport"

    return-object v0

    .line 116
    :pswitch_23
    const-string v0, "sendReport"

    return-object v0

    .line 112
    :pswitch_26
    const-string v0, "unregisterApp"

    return-object v0

    .line 108
    :pswitch_29
    const-string v0, "registerApp"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
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

    .line 99
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 646
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 167
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 171
    const-string v6, "android.bluetooth.IBluetoothHidDevice"

    .line 172
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 173
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 176
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    return v7

    .line 179
    :cond_16
    packed-switch p1, :pswitch_data_1c8

    .line 353
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 340
    :pswitch_1e
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 342
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 345
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v4

    .line 347
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 349
    goto/16 :goto_1c7

    .line 330
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_41
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 331
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getUserAppName(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    goto/16 :goto_1c7

    .line 318
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_58
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 320
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 321
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v3

    .line 323
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    goto/16 :goto_1c7

    .line 306
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":I
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 308
    .local v1, "_arg0":[I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 309
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3

    .line 311
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-static {p3, v3, v7}, Landroid/bluetooth/IBluetoothHidDevice$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 313
    goto/16 :goto_1c7

    .line 296
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_92
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 297
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2

    .line 299
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-static {p3, v2, v7}, Landroid/bluetooth/IBluetoothHidDevice$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 301
    goto/16 :goto_1c7

    .line 284
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_a9
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 286
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 287
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v3

    .line 289
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 291
    goto/16 :goto_1c7

    .line 272
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_c8
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 274
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 275
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v3

    .line 277
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    goto/16 :goto_1c7

    .line 260
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_e7
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 262
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 263
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->unplug(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v3

    .line 265
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 267
    goto/16 :goto_1c7

    .line 246
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_106
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 248
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 250
    .local v2, "_arg1":B
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 251
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->reportError(Landroid/bluetooth/BluetoothDevice;BLandroid/content/AttributionSource;)Z

    move-result v4

    .line 253
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 255
    goto/16 :goto_1c7

    .line 228
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":B
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_129
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 230
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 232
    .restart local v2    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 234
    .local v3, "_arg2":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 236
    .local v4, "_arg3":[B
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 237
    .local v5, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[BLandroid/content/AttributionSource;)Z

    move-result v8

    .line 239
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 241
    goto :goto_1c7

    .line 212
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":B
    .end local v3    # "_arg2":B
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":Landroid/content/AttributionSource;
    .end local v8    # "_result":Z
    :pswitch_154
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 214
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 218
    .local v3, "_arg2":[B
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 219
    .local v4, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->sendReport(Landroid/bluetooth/BluetoothDevice;I[BLandroid/content/AttributionSource;)Z

    move-result v5

    .line 221
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    goto :goto_1c7

    .line 202
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_17a
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 203
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->unregisterApp(Landroid/content/AttributionSource;)Z

    move-result v2

    .line 205
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    goto :goto_1c7

    .line 184
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    :pswitch_190
    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    .line 186
    .local v1, "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    sget-object v2, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 188
    .local v2, "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    sget-object v3, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 190
    .local v3, "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v4

    .line 192
    .local v4, "_arg3":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 193
    .local v5, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;Landroid/content/AttributionSource;)Z

    move-result v8

    .line 195
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 197
    nop

    .line 356
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v4    # "_arg3":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .end local v5    # "_arg4":Landroid/content/AttributionSource;
    .end local v8    # "_result":Z
    :goto_1c7
    return v7

    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_190
        :pswitch_17a
        :pswitch_154
        :pswitch_129
        :pswitch_106
        :pswitch_e7
        :pswitch_c8
        :pswitch_a9
        :pswitch_92
        :pswitch_77
        :pswitch_58
        :pswitch_41
        :pswitch_1e
    .end packed-switch
.end method
