.class Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothSocketManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSocketManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSocketManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 274
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 286
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.bluetooth.IBluetoothSocketManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 293
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v3, p0, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 296
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 297
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    .line 300
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    nop

    .line 303
    return-object v3

    .line 300
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    throw v2
.end method

.method public blacklist connectSocketWithOffload(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;IIILjava/lang/String;JJI)Landroid/os/ParcelFileDescriptor;
    .registers 29
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I
    .param p6, "dataPath"    # I
    .param p7, "socketName"    # Ljava/lang/String;
    .param p8, "hubId"    # J
    .param p10, "endpointId"    # J
    .param p12, "maximumPacketSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 308
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 311
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.bluetooth.IBluetoothSocketManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 313
    move/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_83

    .line 314
    move-object/from16 v5, p3

    :try_start_1e
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_7f

    .line 315
    move/from16 v6, p4

    :try_start_23
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_7b

    .line 316
    move/from16 v7, p5

    :try_start_28
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_77

    .line 317
    move/from16 v8, p6

    :try_start_2d
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_73

    .line 318
    move-object/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_6f

    .line 319
    move-wide/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_6b

    .line 320
    move-wide/from16 v12, p10

    :try_start_3c
    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_67

    .line 321
    move/from16 v14, p12

    :try_start_41
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_63

    .line 322
    move-object/from16 v15, p0

    :try_start_46
    iget-object v0, v15, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 323
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 324
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_61

    .line 327
    .end local v0    # "_status":Z
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 329
    nop

    .line 330
    return-object v3

    .line 327
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_61
    move-exception v0

    goto :goto_96

    :catchall_63
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_96

    :catchall_67
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_94

    :catchall_6b
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_92

    :catchall_6f
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_90

    :catchall_73
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8e

    :catchall_77
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8c

    :catchall_7b
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8a

    :catchall_7f
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_88

    :catchall_83
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v5, p3

    :goto_88
    move/from16 v6, p4

    :goto_8a
    move/from16 v7, p5

    :goto_8c
    move/from16 v8, p6

    :goto_8e
    move-object/from16 v9, p7

    :goto_90
    move-wide/from16 v10, p8

    :goto_92
    move-wide/from16 v12, p10

    :goto_94
    move/from16 v14, p12

    :goto_96
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 329
    throw v0
.end method

.method public blacklist createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "type"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.bluetooth.IBluetoothSocketManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 342
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object v3, p0, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 345
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 346
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    .line 349
    .end local v2    # "_status":Z
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    nop

    .line 352
    return-object v3

    .line 349
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    throw v2
.end method

.method public blacklist createSocketChannelWithOffload(ILjava/lang/String;Landroid/os/ParcelUuid;IIILjava/lang/String;JJI)Landroid/os/ParcelFileDescriptor;
    .registers 29
    .param p1, "type"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I
    .param p6, "dataPath"    # I
    .param p7, "socketName"    # Ljava/lang/String;
    .param p8, "hubId"    # J
    .param p10, "endpointId"    # J
    .param p12, "maximumPacketSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 357
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 360
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "android.bluetooth.IBluetoothSocketManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_83

    .line 363
    const/4 v0, 0x0

    move-object/from16 v5, p3

    :try_start_1e
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_7f

    .line 364
    move/from16 v6, p4

    :try_start_23
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_7b

    .line 365
    move/from16 v7, p5

    :try_start_28
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_77

    .line 366
    move/from16 v8, p6

    :try_start_2d
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_73

    .line 367
    move-object/from16 v9, p7

    :try_start_32
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_6f

    .line 368
    move-wide/from16 v10, p8

    :try_start_37
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_6b

    .line 369
    move-wide/from16 v12, p10

    :try_start_3c
    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_67

    .line 370
    move/from16 v14, p12

    :try_start_41
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_63

    .line 371
    move-object/from16 v15, p0

    :try_start_46
    iget-object v0, v15, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 372
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 373
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_61

    .line 376
    .end local v0    # "_status":Z
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    nop

    .line 379
    return-object v3

    .line 376
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_61
    move-exception v0

    goto :goto_96

    :catchall_63
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_96

    :catchall_67
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_94

    :catchall_6b
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_92

    :catchall_6f
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_90

    :catchall_73
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8e

    :catchall_77
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8c

    :catchall_7b
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8a

    :catchall_7f
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_88

    :catchall_83
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v5, p3

    :goto_88
    move/from16 v6, p4

    :goto_8a
    move/from16 v7, p5

    :goto_8c
    move/from16 v8, p6

    :goto_8e
    move-object/from16 v9, p7

    :goto_90
    move-wide/from16 v10, p8

    :goto_92
    move-wide/from16 v12, p10

    :goto_94
    move/from16 v14, p12

    :goto_96
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    throw v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 281
    const-string v0, "android.bluetooth.IBluetoothSocketManager"

    return-object v0
.end method

.method public blacklist getL2capLocalChannelId(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)I
    .registers 8
    .param p1, "connectionUuid"    # Landroid/os/ParcelUuid;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.bluetooth.IBluetoothSocketManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 404
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 405
    iget-object v3, p0, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 406
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 410
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    nop

    .line 413
    return v3

    .line 410
    .end local v3    # "_result":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    throw v2
.end method

.method public blacklist getL2capRemoteChannelId(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)I
    .registers 8
    .param p1, "connectionUuid"    # Landroid/os/ParcelUuid;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 421
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.bluetooth.IBluetoothSocketManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 422
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 423
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 424
    iget-object v3, p0, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 425
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 429
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    nop

    .line 432
    return v3

    .line 429
    .end local v3    # "_result":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    throw v2
.end method

.method public blacklist requestMaximumTxDataLength(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 384
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.bluetooth.IBluetoothSocketManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 388
    iget-object v3, p0, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 389
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 392
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    nop

    .line 395
    return-void

    .line 392
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    throw v2
.end method
