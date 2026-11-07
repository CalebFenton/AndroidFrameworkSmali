.class public abstract Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattServerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattServerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattServerCallback"

.field static final blacklist TRANSACTION_onCharacteristicReadRequest:I = 0x4

.field static final blacklist TRANSACTION_onCharacteristicWriteRequest:I = 0x6

.field static final blacklist TRANSACTION_onConnectionUpdated:I = 0xd

.field static final blacklist TRANSACTION_onDescriptorReadRequest:I = 0x5

.field static final blacklist TRANSACTION_onDescriptorWriteRequest:I = 0x7

.field static final blacklist TRANSACTION_onExecuteWrite:I = 0x8

.field static final blacklist TRANSACTION_onMtuChanged:I = 0xa

.field static final blacklist TRANSACTION_onNotificationSent:I = 0x9

.field static final blacklist TRANSACTION_onPhyRead:I = 0xc

.field static final blacklist TRANSACTION_onPhyUpdate:I = 0xb

.field static final blacklist TRANSACTION_onServerConnectionState:I = 0x2

.field static final blacklist TRANSACTION_onServerRegistered:I = 0x1

.field static final blacklist TRANSACTION_onServiceAdded:I = 0x3

.field static final blacklist TRANSACTION_onSubrateChange:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_4

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    if-eqz v1, :cond_14

    .line 86
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    return-object v1

    .line 88
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 97
    packed-switch p0, :pswitch_data_30

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 153
    :pswitch_5
    const-string v0, "onSubrateChange"

    return-object v0

    .line 149
    :pswitch_8
    const-string v0, "onConnectionUpdated"

    return-object v0

    .line 145
    :pswitch_b
    const-string v0, "onPhyRead"

    return-object v0

    .line 141
    :pswitch_e
    const-string v0, "onPhyUpdate"

    return-object v0

    .line 137
    :pswitch_11
    const-string v0, "onMtuChanged"

    return-object v0

    .line 133
    :pswitch_14
    const-string v0, "onNotificationSent"

    return-object v0

    .line 129
    :pswitch_17
    const-string v0, "onExecuteWrite"

    return-object v0

    .line 125
    :pswitch_1a
    const-string v0, "onDescriptorWriteRequest"

    return-object v0

    .line 121
    :pswitch_1d
    const-string v0, "onCharacteristicWriteRequest"

    return-object v0

    .line 117
    :pswitch_20
    const-string v0, "onDescriptorReadRequest"

    return-object v0

    .line 113
    :pswitch_23
    const-string v0, "onCharacteristicReadRequest"

    return-object v0

    .line 109
    :pswitch_26
    const-string v0, "onServiceAdded"

    return-object v0

    .line 105
    :pswitch_29
    const-string v0, "onServerConnectionState"

    return-object v0

    .line 101
    :pswitch_2c
    const-string v0, "onServerRegistered"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
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

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 638
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 164
    invoke-static {p1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    move-object v9, p2

    const-string v10, "android.bluetooth.IBluetoothGattServerCallback"

    .line 169
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_e

    const v0, 0xffffff

    if-gt p1, v0, :cond_e

    .line 170
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    :cond_e
    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_19

    .line 173
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return v11

    .line 176
    :cond_19
    move-object/from16 v12, p3

    packed-switch p1, :pswitch_data_18a

    .line 384
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 367
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 373
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 375
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 377
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 378
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onSubrateChange(Ljava/lang/String;IIIII)V

    .line 380
    goto/16 :goto_188

    .line 351
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 353
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 357
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 359
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 360
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onConnectionUpdated(Ljava/lang/String;IIII)V

    .line 362
    goto/16 :goto_188

    .line 337
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_61
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

    .line 343
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 344
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onPhyRead(Ljava/lang/String;III)V

    .line 346
    goto/16 :goto_188

    .line 323
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 327
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 329
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 330
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onPhyUpdate(Ljava/lang/String;III)V

    .line 332
    goto/16 :goto_188

    .line 313
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onMtuChanged(Ljava/lang/String;I)V

    .line 318
    goto/16 :goto_188

    .line 303
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 306
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onNotificationSent(Ljava/lang/String;I)V

    .line 308
    goto/16 :goto_188

    .line 291
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 295
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 296
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onExecuteWrite(Ljava/lang/String;IZ)V

    .line 298
    goto/16 :goto_188

    .line 269
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 277
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 279
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 281
    .local v6, "_arg5":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 283
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 284
    .local v8, "_arg7":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZI[B)V

    .line 286
    goto/16 :goto_188

    .line 247
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":[B
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 255
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 257
    .restart local v5    # "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 259
    .restart local v6    # "_arg5":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 261
    .restart local v7    # "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 262
    .restart local v8    # "_arg7":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZI[B)V

    .line 264
    goto/16 :goto_188

    .line 231
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":[B
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 235
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 239
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 240
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorReadRequest(Ljava/lang/String;IIZI)V

    .line 242
    goto :goto_188

    .line 215
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 221
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 223
    .restart local v4    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 224
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicReadRequest(Ljava/lang/String;IIZI)V

    .line 226
    goto :goto_188

    .line 205
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .local v1, "_arg0":I
    sget-object v2, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 208
    .local v2, "_arg1":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V

    .line 210
    goto :goto_188

    .line 191
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothGattService;
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 197
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerConnectionState(IIZLjava/lang/String;)V

    .line 200
    goto :goto_188

    .line 181
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerRegistered(II)V

    .line 186
    nop

    .line 387
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :goto_188
    return v11

    nop

    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_179
        :pswitch_162
        :pswitch_14f
        :pswitch_133
        :pswitch_117
        :pswitch_ee
        :pswitch_c5
        :pswitch_b1
        :pswitch_a1
        :pswitch_91
        :pswitch_79
        :pswitch_61
        :pswitch_44
        :pswitch_23
    .end packed-switch
.end method
