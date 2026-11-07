.class public abstract Landroid/bluetooth/IBluetoothAdvertise$Stub;
.super Landroid/os/Binder;
.source "IBluetoothAdvertise.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothAdvertise;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothAdvertise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothAdvertise$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enableAdvertisingSet:I = 0x4

.field static final blacklist TRANSACTION_getOwnAddress:I = 0x3

.field static final blacklist TRANSACTION_setAdvertisingData:I = 0x5

.field static final blacklist TRANSACTION_setAdvertisingParameters:I = 0x7

.field static final blacklist TRANSACTION_setPeriodicAdvertisingData:I = 0x9

.field static final blacklist TRANSACTION_setPeriodicAdvertisingEnable:I = 0xa

.field static final blacklist TRANSACTION_setPeriodicAdvertisingParameters:I = 0x8

.field static final blacklist TRANSACTION_setScanResponseData:I = 0x6

.field static final blacklist TRANSACTION_startAdvertisingSet:I = 0x1

.field static final blacklist TRANSACTION_stopAdvertisingSet:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.bluetooth.IBluetoothAdvertise"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothAdvertise;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothAdvertise"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothAdvertise;

    if-eqz v1, :cond_14

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothAdvertise;

    return-object v1

    .line 76
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothAdvertise$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothAdvertise$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_24

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_5
    const-string v0, "setPeriodicAdvertisingEnable"

    return-object v0

    .line 121
    :pswitch_8
    const-string v0, "setPeriodicAdvertisingData"

    return-object v0

    .line 117
    :pswitch_b
    const-string v0, "setPeriodicAdvertisingParameters"

    return-object v0

    .line 113
    :pswitch_e
    const-string v0, "setAdvertisingParameters"

    return-object v0

    .line 109
    :pswitch_11
    const-string v0, "setScanResponseData"

    return-object v0

    .line 105
    :pswitch_14
    const-string v0, "setAdvertisingData"

    return-object v0

    .line 101
    :pswitch_17
    const-string v0, "enableAdvertisingSet"

    return-object v0

    .line 97
    :pswitch_1a
    const-string v0, "getOwnAddress"

    return-object v0

    .line 93
    :pswitch_1d
    const-string v0, "stopAdvertisingSet"

    return-object v0

    .line 89
    :pswitch_20
    const-string v0, "startAdvertisingSet"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 507
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "android.bluetooth.IBluetoothAdvertise"

    .line 141
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v11, v14, :cond_13

    const v1, 0xffffff

    if-gt v11, v1, :cond_13

    .line 142
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_13
    const v1, 0x5f4e5446

    if-ne v11, v1, :cond_1e

    .line 145
    move-object/from16 v15, p3

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v14

    .line 148
    :cond_1e
    move-object/from16 v15, p3

    packed-switch v11, :pswitch_data_180

    .line 296
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 284
    :pswitch_28
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 288
    .local v2, "_arg1":Z
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 289
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->setPeriodicAdvertisingEnable(IZLandroid/content/AttributionSource;)V

    .line 291
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_17f

    .line 271
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_43
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 273
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/AdvertiseData;

    .line 275
    .local v2, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 276
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;)V

    .line 278
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_17f

    .line 258
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_62
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 260
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .line 262
    .local v2, "_arg1":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 263
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/content/AttributionSource;)V

    .line 265
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    goto/16 :goto_17f

    .line 245
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_81
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/AdvertisingSetParameters;

    .line 249
    .local v2, "_arg1":Landroid/bluetooth/le/AdvertisingSetParameters;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 250
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;Landroid/content/AttributionSource;)V

    .line 252
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto/16 :goto_17f

    .line 232
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/le/AdvertisingSetParameters;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_a0
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 234
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/AdvertiseData;

    .line 236
    .local v2, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 237
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;)V

    .line 239
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_17f

    .line 219
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_bf
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 221
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/AdvertiseData;

    .line 223
    .restart local v2    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 224
    .restart local v3    # "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;)V

    .line 226
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto/16 :goto_17f

    .line 202
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_de
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 204
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 206
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 210
    .local v4, "_arg3":I
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 211
    .local v5, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->enableAdvertisingSet(IZIILandroid/content/AttributionSource;)V

    .line 213
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto/16 :goto_17f

    .line 191
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/AttributionSource;
    :pswitch_101
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 194
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->getOwnAddress(ILandroid/content/AttributionSource;)V

    .line 196
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto :goto_17f

    .line 180
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_117
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v1

    .line 182
    .local v1, "_arg0":Landroid/bluetooth/le/IAdvertisingSetCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 183
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;)V

    .line 185
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_17f

    .line 153
    .end local v1    # "_arg0":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_131
    sget-object v1, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/AdvertisingSetParameters;

    .line 155
    .local v1, "_arg0":Landroid/bluetooth/le/AdvertisingSetParameters;
    sget-object v2, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/AdvertiseData;

    .line 157
    .local v2, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    sget-object v3, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/AdvertiseData;

    .line 159
    .local v3, "_arg2":Landroid/bluetooth/le/AdvertiseData;
    sget-object v4, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .line 161
    .local v4, "_arg3":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    sget-object v5, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/le/AdvertiseData;

    .line 163
    .local v5, "_arg4":Landroid/bluetooth/le/AdvertiseData;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 165
    .local v6, "_arg5":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 167
    .local v7, "_arg6":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 169
    .local v8, "_arg7":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v9

    .line 171
    .local v9, "_arg8":Landroid/bluetooth/le/IAdvertisingSetCallback;
    sget-object v10, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/AttributionSource;

    .line 172
    .local v10, "_arg9":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual/range {v0 .. v10}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IIILandroid/bluetooth/le/IAdvertisingSetCallback;Landroid/content/AttributionSource;)V

    .line 174
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    nop

    .line 299
    .end local v1    # "_arg0":Landroid/bluetooth/le/AdvertisingSetParameters;
    .end local v2    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v3    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    .end local v4    # "_arg3":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .end local v5    # "_arg4":Landroid/bluetooth/le/AdvertiseData;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/bluetooth/le/IAdvertisingSetCallback;
    .end local v10    # "_arg9":Landroid/content/AttributionSource;
    :goto_17f
    return v14

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_131
        :pswitch_117
        :pswitch_101
        :pswitch_de
        :pswitch_bf
        :pswitch_a0
        :pswitch_81
        :pswitch_62
        :pswitch_43
        :pswitch_28
    .end packed-switch
.end method
