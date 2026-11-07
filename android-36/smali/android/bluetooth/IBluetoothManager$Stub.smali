.class public abstract Landroid/bluetooth/IBluetoothManager$Stub;
.super Landroid/os/Binder;
.source "IBluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothManager"

.field static final blacklist TRANSACTION_disable:I = 0x5

.field static final blacklist TRANSACTION_disableBle:I = 0xc

.field static final greylist-max-r TRANSACTION_enable:I = 0x3

.field static final blacklist TRANSACTION_enableBle:I = 0xb

.field static final blacklist TRANSACTION_enableNoAutoConnect:I = 0x4

.field static final blacklist TRANSACTION_getAddress:I = 0x7

.field static final blacklist TRANSACTION_getBtHciSnoopLogMode:I = 0xf

.field static final blacklist TRANSACTION_getName:I = 0x8

.field static final blacklist TRANSACTION_getState:I = 0x6

.field static final blacklist TRANSACTION_isAutoOnEnabled:I = 0x11

.field static final blacklist TRANSACTION_isAutoOnSupported:I = 0x10

.field static final blacklist TRANSACTION_isBleScanAvailable:I = 0xa

.field static final blacklist TRANSACTION_isHearingAidProfileSupported:I = 0xd

.field static final blacklist TRANSACTION_onFactoryReset:I = 0x9

.field static final blacklist TRANSACTION_registerAdapter:I = 0x1

.field static final blacklist TRANSACTION_setAutoOnEnabled:I = 0x12

.field static final blacklist TRANSACTION_setBtHciSnoopLogMode:I = 0xe

.field static final blacklist TRANSACTION_unregisterAdapter:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    const-string v0, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 111
    if-nez p0, :cond_4

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 115
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_14

    .line 116
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothManager;

    return-object v1

    .line 118
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 127
    packed-switch p0, :pswitch_data_3c

    .line 203
    const/4 v0, 0x0

    return-object v0

    .line 199
    :pswitch_5
    const-string v0, "setAutoOnEnabled"

    return-object v0

    .line 195
    :pswitch_8
    const-string v0, "isAutoOnEnabled"

    return-object v0

    .line 191
    :pswitch_b
    const-string v0, "isAutoOnSupported"

    return-object v0

    .line 187
    :pswitch_e
    const-string v0, "getBtHciSnoopLogMode"

    return-object v0

    .line 183
    :pswitch_11
    const-string v0, "setBtHciSnoopLogMode"

    return-object v0

    .line 179
    :pswitch_14
    const-string v0, "isHearingAidProfileSupported"

    return-object v0

    .line 175
    :pswitch_17
    const-string v0, "disableBle"

    return-object v0

    .line 171
    :pswitch_1a
    const-string v0, "enableBle"

    return-object v0

    .line 167
    :pswitch_1d
    const-string v0, "isBleScanAvailable"

    return-object v0

    .line 163
    :pswitch_20
    const-string v0, "onFactoryReset"

    return-object v0

    .line 159
    :pswitch_23
    const-string v0, "getName"

    return-object v0

    .line 155
    :pswitch_26
    const-string v0, "getAddress"

    return-object v0

    .line 151
    :pswitch_29
    const-string v0, "getState"

    return-object v0

    .line 147
    :pswitch_2c
    const-string v0, "disable"

    return-object v0

    .line 143
    :pswitch_2f
    const-string v0, "enableNoAutoConnect"

    return-object v0

    .line 139
    :pswitch_32
    const-string v0, "enable"

    return-object v0

    .line 135
    :pswitch_35
    const-string v0, "unregisterAdapter"

    return-object v0

    .line 131
    :pswitch_38
    const-string v0, "registerAdapter"

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

    .line 122
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 752
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 210
    invoke-static {p1}, Landroid/bluetooth/IBluetoothManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 214
    const-string v0, "android.bluetooth.IBluetoothManager"

    .line 215
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 216
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 219
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    return v1

    .line 222
    :cond_16
    packed-switch p1, :pswitch_data_172

    .line 392
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 384
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 385
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->setAutoOnEnabled(Z)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto/16 :goto_170

    .line 376
    .end local v2    # "_arg0":Z
    :pswitch_2d
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isAutoOnEnabled()Z

    move-result v2

    .line 377
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 379
    goto/16 :goto_170

    .line 369
    .end local v2    # "_result":Z
    :pswitch_39
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isAutoOnSupported()Z

    move-result v2

    .line 370
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 372
    goto/16 :goto_170

    .line 362
    .end local v2    # "_result":Z
    :pswitch_45
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getBtHciSnoopLogMode()I

    move-result v2

    .line 363
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    goto/16 :goto_170

    .line 353
    .end local v2    # "_result":I
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 354
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->setBtHciSnoopLogMode(I)I

    move-result v3

    .line 356
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    goto/16 :goto_170

    .line 345
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_64
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isHearingAidProfileSupported()Z

    move-result v2

    .line 346
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 348
    goto/16 :goto_170

    .line 334
    .end local v2    # "_result":Z
    :pswitch_70
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 336
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 337
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->disableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z

    move-result v4

    .line 339
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 341
    goto/16 :goto_170

    .line 322
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_8b
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 324
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 325
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->enableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z

    move-result v4

    .line 327
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    goto/16 :goto_170

    .line 314
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_a6
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isBleScanAvailable()Z

    move-result v2

    .line 315
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    goto/16 :goto_170

    .line 305
    .end local v2    # "_result":Z
    :pswitch_b2
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 306
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->onFactoryReset(Landroid/content/AttributionSource;)Z

    move-result v3

    .line 308
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 310
    goto/16 :goto_170

    .line 295
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_c9
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 296
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->getName(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    goto/16 :goto_170

    .line 285
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_e0
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 286
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->getAddress(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    goto/16 :goto_170

    .line 277
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f7
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getState()I

    move-result v2

    .line 278
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    goto :goto_170

    .line 266
    .end local v2    # "_result":I
    :pswitch_102
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 268
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 269
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->disable(Landroid/content/AttributionSource;Z)Z

    move-result v4

    .line 271
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 273
    goto :goto_170

    .line 256
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_11c
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 257
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->enableNoAutoConnect(Landroid/content/AttributionSource;)Z

    move-result v3

    .line 259
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 261
    goto :goto_170

    .line 246
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_132
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 247
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->enable(Landroid/content/AttributionSource;)Z

    move-result v3

    .line 249
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 251
    goto :goto_170

    .line 237
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :pswitch_148
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v2

    .line 238
    .local v2, "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto :goto_170

    .line 227
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    :pswitch_15a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v2

    .line 228
    .restart local v2    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/os/IBinder;

    move-result-object v3

    .line 230
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 232
    nop

    .line 395
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v3    # "_result":Landroid/os/IBinder;
    :goto_170
    return v1

    nop

    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_15a
        :pswitch_148
        :pswitch_132
        :pswitch_11c
        :pswitch_102
        :pswitch_f7
        :pswitch_e0
        :pswitch_c9
        :pswitch_b2
        :pswitch_a6
        :pswitch_8b
        :pswitch_70
        :pswitch_64
        :pswitch_51
        :pswitch_45
        :pswitch_39
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
