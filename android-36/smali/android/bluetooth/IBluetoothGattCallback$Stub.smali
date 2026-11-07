.class public abstract Landroid/bluetooth/IBluetoothGattCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattCallback"

.field static final blacklist TRANSACTION_onCharacteristicRead:I = 0x6

.field static final blacklist TRANSACTION_onCharacteristicWrite:I = 0x7

.field static final blacklist TRANSACTION_onClientConnectionState:I = 0x2

.field static final blacklist TRANSACTION_onClientRegistered:I = 0x1

.field static final blacklist TRANSACTION_onConfigureMTU:I = 0xd

.field static final blacklist TRANSACTION_onConnectionUpdated:I = 0xe

.field static final blacklist TRANSACTION_onDescriptorRead:I = 0x9

.field static final blacklist TRANSACTION_onDescriptorWrite:I = 0xa

.field static final blacklist TRANSACTION_onExecuteWrite:I = 0x8

.field static final blacklist TRANSACTION_onNotify:I = 0xb

.field static final blacklist TRANSACTION_onPhyRead:I = 0x4

.field static final blacklist TRANSACTION_onPhyUpdate:I = 0x3

.field static final blacklist TRANSACTION_onReadRemoteRssi:I = 0xc

.field static final blacklist TRANSACTION_onSearchComplete:I = 0x5

.field static final blacklist TRANSACTION_onServiceChanged:I = 0xf

.field static final blacklist TRANSACTION_onSubrateChange:I = 0x10


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 87
    if-nez p0, :cond_4

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 91
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattCallback;

    if-eqz v1, :cond_14

    .line 92
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    return-object v1

    .line 94
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 103
    packed-switch p0, :pswitch_data_36

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 167
    :pswitch_5
    const-string v0, "onSubrateChange"

    return-object v0

    .line 163
    :pswitch_8
    const-string v0, "onServiceChanged"

    return-object v0

    .line 159
    :pswitch_b
    const-string v0, "onConnectionUpdated"

    return-object v0

    .line 155
    :pswitch_e
    const-string v0, "onConfigureMTU"

    return-object v0

    .line 151
    :pswitch_11
    const-string v0, "onReadRemoteRssi"

    return-object v0

    .line 147
    :pswitch_14
    const-string v0, "onNotify"

    return-object v0

    .line 143
    :pswitch_17
    const-string v0, "onDescriptorWrite"

    return-object v0

    .line 139
    :pswitch_1a
    const-string v0, "onDescriptorRead"

    return-object v0

    .line 135
    :pswitch_1d
    const-string v0, "onExecuteWrite"

    return-object v0

    .line 131
    :pswitch_20
    const-string v0, "onCharacteristicWrite"

    return-object v0

    .line 127
    :pswitch_23
    const-string v0, "onCharacteristicRead"

    return-object v0

    .line 123
    :pswitch_26
    const-string v0, "onSearchComplete"

    return-object v0

    .line 119
    :pswitch_29
    const-string v0, "onPhyRead"

    return-object v0

    .line 115
    :pswitch_2c
    const-string v0, "onPhyUpdate"

    return-object v0

    .line 111
    :pswitch_2f
    const-string v0, "onClientConnectionState"

    return-object v0

    .line 107
    :pswitch_32
    const-string v0, "onClientRegistered"

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

    .line 98
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 676
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 178
    invoke-static {p1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 182
    const-string v7, "android.bluetooth.IBluetoothGattCallback"

    .line 183
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v0, 0xffffff

    if-gt p1, v0, :cond_d

    .line 184
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    :cond_d
    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_16

    .line 187
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    return v8

    .line 190
    :cond_16
    packed-switch p1, :pswitch_data_17e

    .line 402
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 385
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 389
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 391
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 393
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 395
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 396
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onSubrateChange(Ljava/lang/String;IIIII)V

    .line 398
    goto/16 :goto_17c

    .line 377
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onServiceChanged(Ljava/lang/String;)V

    .line 380
    goto/16 :goto_17c

    .line 361
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 367
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 369
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 370
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onConnectionUpdated(Ljava/lang/String;IIII)V

    .line 372
    goto/16 :goto_17c

    .line 349
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 353
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 354
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onConfigureMTU(Ljava/lang/String;II)V

    .line 356
    goto/16 :goto_17c

    .line 337
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 341
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 342
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onReadRemoteRssi(Ljava/lang/String;II)V

    .line 344
    goto/16 :goto_17c

    .line 325
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 329
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 330
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onNotify(Ljava/lang/String;I[B)V

    .line 332
    goto/16 :goto_17c

    .line 311
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 315
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 317
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 318
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorWrite(Ljava/lang/String;II[B)V

    .line 320
    goto/16 :goto_17c

    .line 297
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 303
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 304
    .restart local v4    # "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorRead(Ljava/lang/String;II[B)V

    .line 306
    goto/16 :goto_17c

    .line 287
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onExecuteWrite(Ljava/lang/String;I)V

    .line 292
    goto/16 :goto_17c

    .line 273
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 279
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 280
    .restart local v4    # "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicWrite(Ljava/lang/String;II[B)V

    .line 282
    goto/16 :goto_17c

    .line 259
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 266
    .restart local v4    # "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicRead(Ljava/lang/String;II[B)V

    .line 268
    goto :goto_17c

    .line 247
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 251
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 252
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V

    .line 254
    goto :goto_17c

    .line 233
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .end local v3    # "_arg2":I
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 240
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onPhyRead(Ljava/lang/String;III)V

    .line 242
    goto :goto_17c

    .line 219
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 225
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 226
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onPhyUpdate(Ljava/lang/String;III)V

    .line 228
    goto :goto_17c

    .line 205
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 209
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 211
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 214
    goto :goto_17c

    .line 195
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_16d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientRegistered(II)V

    .line 200
    nop

    .line 405
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :goto_17c
    return v8

    nop

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_16d
        :pswitch_156
        :pswitch_13f
        :pswitch_128
        :pswitch_113
        :pswitch_fc
        :pswitch_e4
        :pswitch_d4
        :pswitch_bc
        :pswitch_a4
        :pswitch_90
        :pswitch_7c
        :pswitch_68
        :pswitch_4b
        :pswitch_3f
        :pswitch_1e
    .end packed-switch
.end method
