.class public abstract Landroid/bluetooth/IBluetoothScan$Stub;
.super Landroid/os/Binder;
.source "IBluetoothScan.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothScan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothScan$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_flushPendingBatchResults:I = 0x7

.field static final blacklist TRANSACTION_numHwTrackFiltersAvailable:I = 0xc

.field static final blacklist TRANSACTION_registerScanner:I = 0x1

.field static final blacklist TRANSACTION_registerSync:I = 0x8

.field static final blacklist TRANSACTION_startScan:I = 0x3

.field static final blacklist TRANSACTION_startScanForIntent:I = 0x4

.field static final blacklist TRANSACTION_stopScan:I = 0x5

.field static final blacklist TRANSACTION_stopScanForIntent:I = 0x6

.field static final blacklist TRANSACTION_transferSetInfo:I = 0xb

.field static final blacklist TRANSACTION_transferSync:I = 0xa

.field static final blacklist TRANSACTION_unregisterScanner:I = 0x2

.field static final blacklist TRANSACTION_unregisterSync:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "android.bluetooth.IBluetoothScan"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothScan$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothScan;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothScan"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothScan;

    if-eqz v1, :cond_14

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothScan;

    return-object v1

    .line 83
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothScan$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothScan$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 92
    packed-switch p0, :pswitch_data_2a

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 140
    :pswitch_5
    const-string v0, "numHwTrackFiltersAvailable"

    return-object v0

    .line 136
    :pswitch_8
    const-string v0, "transferSetInfo"

    return-object v0

    .line 132
    :pswitch_b
    const-string v0, "transferSync"

    return-object v0

    .line 128
    :pswitch_e
    const-string v0, "unregisterSync"

    return-object v0

    .line 124
    :pswitch_11
    const-string v0, "registerSync"

    return-object v0

    .line 120
    :pswitch_14
    const-string v0, "flushPendingBatchResults"

    return-object v0

    .line 116
    :pswitch_17
    const-string v0, "stopScanForIntent"

    return-object v0

    .line 112
    :pswitch_1a
    const-string v0, "stopScan"

    return-object v0

    .line 108
    :pswitch_1d
    const-string v0, "startScanForIntent"

    return-object v0

    .line 104
    :pswitch_20
    const-string v0, "startScan"

    return-object v0

    .line 100
    :pswitch_23
    const-string v0, "unregisterScanner"

    return-object v0

    .line 96
    :pswitch_26
    const-string v0, "registerScanner"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
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

    .line 87
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 567
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 151
    invoke-static {p1}, Landroid/bluetooth/IBluetoothScan$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    const-string v6, "android.bluetooth.IBluetoothScan"

    .line 156
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 157
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 160
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v7

    .line 163
    :cond_16
    packed-switch p1, :pswitch_data_19a

    .line 324
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 315
    :pswitch_1e
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 316
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothScan$Stub;->numHwTrackFiltersAvailable(Landroid/content/AttributionSource;)I

    move-result v2

    .line 318
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    goto/16 :goto_198

    .line 298
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":I
    :pswitch_35
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 300
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 302
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 304
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v4

    .line 306
    .local v4, "_arg3":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 307
    .local v5, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothScan$Stub;->transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto/16 :goto_198

    .line 283
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .end local v5    # "_arg4":Landroid/content/AttributionSource;
    :pswitch_61
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 285
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 287
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 289
    .restart local v3    # "_arg2":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 290
    .local v4, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothScan$Stub;->transferSync(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto/16 :goto_198

    .line 272
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v1

    .line 274
    .local v1, "_arg0":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 275
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothScan$Stub;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    goto/16 :goto_198

    .line 255
    .end local v1    # "_arg0":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_9f
    sget-object v1, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 257
    .local v1, "_arg0":Landroid/bluetooth/le/ScanResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 259
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 261
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v4

    .line 263
    .local v4, "_arg3":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 264
    .restart local v5    # "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothScan$Stub;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto/16 :goto_198

    .line 244
    .end local v1    # "_arg0":Landroid/bluetooth/le/ScanResult;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .end local v5    # "_arg4":Landroid/content/AttributionSource;
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 246
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 247
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothScan$Stub;->flushPendingBatchResults(ILandroid/content/AttributionSource;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto/16 :goto_198

    .line 233
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_e2
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 235
    .local v1, "_arg0":Landroid/app/PendingIntent;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 236
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothScan$Stub;->stopScanForIntent(Landroid/app/PendingIntent;Landroid/content/AttributionSource;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto/16 :goto_198

    .line 222
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 224
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 225
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothScan$Stub;->stopScan(ILandroid/content/AttributionSource;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto/16 :goto_198

    .line 207
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_114
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 209
    .local v1, "_arg0":Landroid/app/PendingIntent;
    sget-object v2, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanSettings;

    .line 211
    .local v2, "_arg1":Landroid/bluetooth/le/ScanSettings;
    sget-object v3, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 213
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 214
    .local v4, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothScan$Stub;->startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto :goto_198

    .line 192
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    .local v1, "_arg0":I
    sget-object v2, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanSettings;

    .line 196
    .restart local v2    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    sget-object v3, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 198
    .restart local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 199
    .restart local v4    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothScan$Stub;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/content/AttributionSource;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    goto :goto_198

    .line 181
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 184
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothScan$Stub;->unregisterScanner(ILandroid/content/AttributionSource;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_198

    .line 168
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/le/IScannerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;

    move-result-object v1

    .line 170
    .local v1, "_arg0":Landroid/bluetooth/le/IScannerCallback;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 172
    .local v2, "_arg1":Landroid/os/WorkSource;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 173
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothScan$Stub;->registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;Landroid/content/AttributionSource;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    nop

    .line 327
    .end local v1    # "_arg0":Landroid/bluetooth/le/IScannerCallback;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :goto_198
    return v7

    nop

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_176
        :pswitch_160
        :pswitch_13c
        :pswitch_114
        :pswitch_fd
        :pswitch_e2
        :pswitch_cb
        :pswitch_9f
        :pswitch_84
        :pswitch_61
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
