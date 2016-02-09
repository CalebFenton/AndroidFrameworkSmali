.class Landroid/bluetooth/BluetoothGatt$1;
.super Landroid/bluetooth/BluetoothGattCallbackWrapper;
.source "BluetoothGatt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothGatt;

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 15
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "value"    # [B

    #@0
    .prologue
    .line 321
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 322
    return-void

    #@13
    .line 325
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@15
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@18
    move-result-object v3

    #@19
    monitor-enter v3

    #@1a
    .line 326
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@20
    move-result-object v4

    #@21
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v3

    #@25
    .line 329
    const/4 v2, 0x5

    #@26
    move/from16 v0, p2

    #@28
    if-eq v0, v2, :cond_1

    #@2a
    .line 330
    const/16 v2, 0xf

    #@2c
    move/from16 v0, p2

    #@2e
    if-ne v0, v2, :cond_2

    #@30
    .line 331
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@32
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    #@35
    move-result v2

    #@36
    if-nez v2, :cond_2

    #@38
    .line 333
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@3a
    const/4 v3, 0x1

    #@3b
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@3e
    .line 334
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@40
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    #@43
    move-result-object v2

    #@44
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@46
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    #@49
    move-result v3

    #@4a
    .line 336
    const/4 v10, 0x2

    #@4b
    move-object/from16 v4, p1

    #@4d
    move/from16 v5, p3

    #@4f
    move/from16 v6, p4

    #@51
    move-object/from16 v7, p5

    #@53
    move/from16 v8, p6

    #@55
    move-object/from16 v9, p7

    #@57
    .line 334
    invoke-interface/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@5a
    .line 337
    return-void

    #@5b
    .line 325
    :catchall_0
    move-exception v2

    #@5c
    monitor-exit v3

    #@5d
    throw v2

    #@5e
    .line 338
    :catch_0
    move-exception v12

    #@5f
    .line 339
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothGatt"

    #@62
    const-string/jumbo v3, ""

    #@65
    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    .line 343
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@6a
    const/4 v3, 0x0

    #@6b
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@6e
    .line 345
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@70
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@72
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@75
    move-result-object v3

    #@76
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@79
    move-result-object v4

    #@7a
    move/from16 v0, p4

    #@7c
    move/from16 v1, p3

    #@7e
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@81
    move-result-object v14

    #@82
    .line 347
    .local v14, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v14, :cond_3

    #@84
    return-void

    #@85
    .line 350
    :cond_3
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@88
    move-result-object v2

    #@89
    .line 349
    move/from16 v0, p6

    #@8b
    invoke-virtual {v14, v2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@8e
    move-result-object v11

    #@8f
    .line 351
    .local v11, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v11, :cond_4

    #@91
    return-void

    #@92
    .line 353
    :cond_4
    if-nez p2, :cond_5

    #@94
    move-object/from16 v0, p8

    #@96
    invoke-virtual {v11, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    #@99
    .line 356
    :cond_5
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@9b
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@9e
    move-result-object v2

    #@9f
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@a1
    move/from16 v0, p2

    #@a3
    invoke-virtual {v2, v3, v11, v0}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@a6
    .line 317
    :goto_0
    return-void

    #@a7
    .line 357
    :catch_1
    move-exception v13

    #@a8
    .line 358
    .local v13, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGatt"

    #@ab
    const-string/jumbo v3, "Unhandled exception in callback"

    #@ae
    invoke-static {v2, v3, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b1
    goto :goto_0
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 17
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 373
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@4
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 374
    return-void

    #@15
    .line 377
    :cond_0
    move-object/from16 v0, p0

    #@17
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@19
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@1c
    move-result-object v3

    #@1d
    monitor-enter v3

    #@1e
    .line 378
    :try_start_0
    move-object/from16 v0, p0

    #@20
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@22
    const/4 v4, 0x0

    #@23
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@26
    move-result-object v4

    #@27
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v3

    #@2b
    .line 381
    move-object/from16 v0, p0

    #@2d
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@33
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@36
    move-result-object v3

    #@37
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@3a
    move-result-object v4

    #@3b
    move/from16 v0, p4

    #@3d
    move/from16 v1, p3

    #@3f
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@42
    move-result-object v16

    #@43
    .line 383
    .local v16, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v16, :cond_1

    #@45
    return-void

    #@46
    .line 377
    .end local v16    # "service":Landroid/bluetooth/BluetoothGattService;
    :catchall_0
    move-exception v2

    #@47
    monitor-exit v3

    #@48
    throw v2

    #@49
    .line 386
    .restart local v16    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@4c
    move-result-object v2

    #@4d
    .line 385
    move-object/from16 v0, v16

    #@4f
    move/from16 v1, p6

    #@51
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@54
    move-result-object v13

    #@55
    .line 387
    .local v13, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v13, :cond_2

    #@57
    return-void

    #@58
    .line 389
    :cond_2
    const/4 v2, 0x5

    #@59
    move/from16 v0, p2

    #@5b
    if-eq v0, v2, :cond_3

    #@5d
    .line 390
    const/16 v2, 0xf

    #@5f
    move/from16 v0, p2

    #@61
    if-ne v0, v2, :cond_4

    #@63
    .line 391
    :cond_3
    move-object/from16 v0, p0

    #@65
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@67
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    #@6a
    move-result v2

    #@6b
    if-nez v2, :cond_4

    #@6d
    .line 393
    :try_start_1
    move-object/from16 v0, p0

    #@6f
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@71
    const/4 v3, 0x1

    #@72
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@75
    .line 394
    move-object/from16 v0, p0

    #@77
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@79
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    #@7c
    move-result-object v2

    #@7d
    move-object/from16 v0, p0

    #@7f
    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@81
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    #@84
    move-result v3

    #@85
    .line 396
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    #@88
    move-result v10

    #@89
    .line 397
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@8c
    move-result-object v12

    #@8d
    .line 396
    const/4 v11, 0x2

    #@8e
    move-object/from16 v4, p1

    #@90
    move/from16 v5, p3

    #@92
    move/from16 v6, p4

    #@94
    move-object/from16 v7, p5

    #@96
    move/from16 v8, p6

    #@98
    move-object/from16 v9, p7

    #@9a
    .line 394
    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@9d
    .line 398
    return-void

    #@9e
    .line 399
    :catch_0
    move-exception v14

    #@9f
    .line 400
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothGatt"

    #@a2
    const-string/jumbo v3, ""

    #@a5
    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a8
    .line 404
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object/from16 v0, p0

    #@aa
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@ac
    const/4 v3, 0x0

    #@ad
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@b0
    .line 407
    :try_start_2
    move-object/from16 v0, p0

    #@b2
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@b4
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@b7
    move-result-object v2

    #@b8
    move-object/from16 v0, p0

    #@ba
    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@bc
    move/from16 v0, p2

    #@be
    invoke-virtual {v2, v3, v13, v0}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@c1
    .line 369
    :goto_0
    return-void

    #@c2
    .line 408
    :catch_1
    move-exception v15

    #@c3
    .line 409
    .local v15, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGatt"

    #@c6
    const-string/jumbo v3, "Unhandled exception in callback"

    #@c9
    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@cc
    goto :goto_0
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    const-string/jumbo v2, "BluetoothGatt"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "onClientConnectionState() - status="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    .line 174
    const-string/jumbo v4, " clientIf="

    #@16
    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    .line 174
    const-string/jumbo v4, " device="

    #@21
    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 175
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@32
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    if-nez v2, :cond_0

    #@40
    .line 176
    return-void

    #@41
    .line 178
    :cond_0
    if-eqz p3, :cond_1

    #@43
    const/4 v1, 0x2

    #@44
    .line 181
    .local v1, "profileState":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@46
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@49
    move-result-object v2

    #@4a
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@4c
    invoke-virtual {v2, v3, p1, v1}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 186
    :goto_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@51
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get8(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    #@54
    move-result-object v3

    #@55
    monitor-enter v3

    #@56
    .line 187
    if-eqz p3, :cond_2

    #@58
    .line 188
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@5a
    const/4 v4, 0x2

    #@5b
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->-set2(Landroid/bluetooth/BluetoothGatt;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    :goto_2
    monitor-exit v3

    #@5f
    .line 194
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@61
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@64
    move-result-object v3

    #@65
    monitor-enter v3

    #@66
    .line 195
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@68
    const/4 v4, 0x0

    #@69
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6c
    move-result-object v4

    #@6d
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@70
    monitor-exit v3

    #@71
    .line 172
    return-void

    #@72
    .line 179
    .end local v1    # "profileState":I
    :cond_1
    const/4 v1, 0x0

    #@73
    .restart local v1    # "profileState":I
    goto :goto_0

    #@74
    .line 182
    :catch_0
    move-exception v0

    #@75
    .line 183
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGatt"

    #@78
    const-string/jumbo v3, "Unhandled exception in callback"

    #@7b
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7e
    goto :goto_1

    #@7f
    .line 190
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@81
    const/4 v4, 0x0

    #@82
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->-set2(Landroid/bluetooth/BluetoothGatt;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    goto :goto_2

    #@86
    .line 186
    :catchall_0
    move-exception v2

    #@87
    monitor-exit v3

    #@88
    throw v2

    #@89
    .line 194
    :catchall_1
    move-exception v2

    #@8a
    monitor-exit v3

    #@8b
    throw v2
.end method

.method public onClientRegistered(II)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 141
    const-string/jumbo v2, "BluetoothGatt"

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "onClientRegistered() - status="

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    .line 142
    const-string/jumbo v4, " clientIf="

    #@17
    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 150
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@28
    invoke-static {v2, p2}, Landroid/bluetooth/BluetoothGatt;->-set1(Landroid/bluetooth/BluetoothGatt;I)I

    #@2b
    .line 151
    if-eqz p1, :cond_0

    #@2d
    .line 152
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2f
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@32
    move-result-object v2

    #@33
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@35
    const/16 v4, 0x101

    #@37
    invoke-virtual {v2, v3, v4, v1}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    #@3a
    .line 154
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@3c
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get8(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    monitor-enter v2

    #@41
    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@43
    const/4 v3, 0x0

    #@44
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothGatt;->-set2(Landroid/bluetooth/BluetoothGatt;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    monitor-exit v2

    #@48
    .line 157
    return-void

    #@49
    .line 154
    :catchall_0
    move-exception v1

    #@4a
    monitor-exit v2

    #@4b
    throw v1

    #@4c
    .line 160
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@4e
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    #@51
    move-result-object v2

    #@52
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@54
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    #@57
    move-result v3

    #@58
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@5a
    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    .line 161
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@64
    invoke-static {v5}, Landroid/bluetooth/BluetoothGatt;->-get1(Landroid/bluetooth/BluetoothGatt;)Z

    #@67
    move-result v5

    #@68
    if-eqz v5, :cond_1

    #@6a
    :goto_0
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@6c
    invoke-static {v5}, Landroid/bluetooth/BluetoothGatt;->-get9(Landroid/bluetooth/BluetoothGatt;)I

    #@6f
    move-result v5

    #@70
    .line 160
    invoke-interface {v2, v3, v4, v1, v5}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@73
    .line 140
    :goto_1
    return-void

    #@74
    .line 161
    :cond_1
    const/4 v1, 0x1

    #@75
    goto :goto_0

    #@76
    .line 162
    :catch_0
    move-exception v0

    #@77
    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    #@7a
    const-string/jumbo v2, ""

    #@7d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@80
    goto :goto_1
.end method

.method public onConfigureMTU(Ljava/lang/String;II)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    #@0
    .prologue
    .line 598
    const-string/jumbo v1, "BluetoothGatt"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "onConfigureMTU() - Device="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    .line 599
    const-string/jumbo v3, " mtu="

    #@16
    .line 598
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 599
    const-string/jumbo v3, " status="

    #@21
    .line 598
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 600
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@32
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_0

    #@40
    .line 601
    return-void

    #@41
    .line 604
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@43
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@46
    move-result-object v1

    #@47
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@49
    invoke-virtual {v1, v2, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 597
    :goto_0
    return-void

    #@4d
    .line 605
    :catch_0
    move-exception v0

    #@4e
    .line 606
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothGatt"

    #@51
    const-string/jumbo v2, "Unhandled exception in callback"

    #@54
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    goto :goto_0
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 18
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .param p10, "value"    # [B

    #@0
    .prologue
    .line 455
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@4
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 456
    return-void

    #@15
    .line 459
    :cond_0
    move-object/from16 v0, p0

    #@17
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@19
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@1c
    move-result-object v3

    #@1d
    monitor-enter v3

    #@1e
    .line 460
    :try_start_0
    move-object/from16 v0, p0

    #@20
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@22
    const/4 v4, 0x0

    #@23
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@26
    move-result-object v4

    #@27
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v3

    #@2b
    .line 463
    move-object/from16 v0, p0

    #@2d
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@33
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@36
    move-result-object v3

    #@37
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@3a
    move-result-object v4

    #@3b
    move/from16 v0, p4

    #@3d
    move/from16 v1, p3

    #@3f
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@42
    move-result-object v17

    #@43
    .line 465
    .local v17, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v17, :cond_1

    #@45
    return-void

    #@46
    .line 459
    .end local v17    # "service":Landroid/bluetooth/BluetoothGattService;
    :catchall_0
    move-exception v2

    #@47
    monitor-exit v3

    #@48
    throw v2

    #@49
    .line 468
    .restart local v17    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@4c
    move-result-object v2

    #@4d
    .line 467
    move-object/from16 v0, v17

    #@4f
    move/from16 v1, p6

    #@51
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@54
    move-result-object v13

    #@55
    .line 469
    .local v13, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v13, :cond_2

    #@57
    return-void

    #@58
    .line 472
    :cond_2
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@5b
    move-result-object v2

    #@5c
    .line 471
    move/from16 v0, p8

    #@5e
    invoke-virtual {v13, v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattDescriptor;

    #@61
    move-result-object v14

    #@62
    .line 473
    .local v14, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v14, :cond_3

    #@64
    return-void

    #@65
    .line 475
    :cond_3
    if-nez p2, :cond_4

    #@67
    move-object/from16 v0, p10

    #@69
    invoke-virtual {v14, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    #@6c
    .line 477
    :cond_4
    const/4 v2, 0x5

    #@6d
    move/from16 v0, p2

    #@6f
    if-eq v0, v2, :cond_5

    #@71
    .line 478
    const/16 v2, 0xf

    #@73
    move/from16 v0, p2

    #@75
    if-ne v0, v2, :cond_6

    #@77
    .line 479
    :cond_5
    move-object/from16 v0, p0

    #@79
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@7b
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    #@7e
    move-result v2

    #@7f
    if-nez v2, :cond_6

    #@81
    .line 481
    :try_start_1
    move-object/from16 v0, p0

    #@83
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@85
    const/4 v3, 0x1

    #@86
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@89
    .line 482
    move-object/from16 v0, p0

    #@8b
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@8d
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    #@90
    move-result-object v2

    #@91
    move-object/from16 v0, p0

    #@93
    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@95
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    #@98
    move-result v3

    #@99
    .line 484
    const/4 v12, 0x2

    #@9a
    move-object/from16 v4, p1

    #@9c
    move/from16 v5, p3

    #@9e
    move/from16 v6, p4

    #@a0
    move-object/from16 v7, p5

    #@a2
    move/from16 v8, p6

    #@a4
    move-object/from16 v9, p7

    #@a6
    move/from16 v10, p8

    #@a8
    move-object/from16 v11, p9

    #@aa
    .line 482
    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@ad
    .line 485
    return-void

    #@ae
    .line 486
    :catch_0
    move-exception v15

    #@af
    .line 487
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothGatt"

    #@b2
    const-string/jumbo v3, ""

    #@b5
    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b8
    .line 491
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_6
    move-object/from16 v0, p0

    #@ba
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@bc
    const/4 v3, 0x1

    #@bd
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@c0
    .line 494
    :try_start_2
    move-object/from16 v0, p0

    #@c2
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@c4
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@c7
    move-result-object v2

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@cc
    move/from16 v0, p2

    #@ce
    invoke-virtual {v2, v3, v14, v0}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@d1
    .line 452
    :goto_0
    return-void

    #@d2
    .line 495
    :catch_1
    move-exception v16

    #@d3
    .line 496
    .local v16, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGatt"

    #@d6
    const-string/jumbo v3, "Unhandled exception in callback"

    #@d9
    move-object/from16 v0, v16

    #@db
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@de
    goto :goto_0
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 20
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 510
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@4
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 511
    return-void

    #@15
    .line 514
    :cond_0
    move-object/from16 v0, p0

    #@17
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@19
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@1c
    move-result-object v3

    #@1d
    monitor-enter v3

    #@1e
    .line 515
    :try_start_0
    move-object/from16 v0, p0

    #@20
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@22
    const/4 v4, 0x0

    #@23
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@26
    move-result-object v4

    #@27
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v3

    #@2b
    .line 518
    move-object/from16 v0, p0

    #@2d
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@33
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@36
    move-result-object v3

    #@37
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@3a
    move-result-object v4

    #@3b
    move/from16 v0, p4

    #@3d
    move/from16 v1, p3

    #@3f
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@42
    move-result-object v19

    #@43
    .line 520
    .local v19, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v19, :cond_1

    #@45
    return-void

    #@46
    .line 514
    .end local v19    # "service":Landroid/bluetooth/BluetoothGattService;
    :catchall_0
    move-exception v2

    #@47
    monitor-exit v3

    #@48
    throw v2

    #@49
    .line 523
    .restart local v19    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@4c
    move-result-object v2

    #@4d
    .line 522
    move-object/from16 v0, v19

    #@4f
    move/from16 v1, p6

    #@51
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@54
    move-result-object v15

    #@55
    .line 524
    .local v15, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v15, :cond_2

    #@57
    return-void

    #@58
    .line 527
    :cond_2
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@5b
    move-result-object v2

    #@5c
    .line 526
    move/from16 v0, p8

    #@5e
    invoke-virtual {v15, v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattDescriptor;

    #@61
    move-result-object v16

    #@62
    .line 528
    .local v16, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v16, :cond_3

    #@64
    return-void

    #@65
    .line 530
    :cond_3
    const/4 v2, 0x5

    #@66
    move/from16 v0, p2

    #@68
    if-eq v0, v2, :cond_4

    #@6a
    .line 531
    const/16 v2, 0xf

    #@6c
    move/from16 v0, p2

    #@6e
    if-ne v0, v2, :cond_5

    #@70
    .line 532
    :cond_4
    move-object/from16 v0, p0

    #@72
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@74
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    #@77
    move-result v2

    #@78
    if-nez v2, :cond_5

    #@7a
    .line 534
    :try_start_1
    move-object/from16 v0, p0

    #@7c
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@7e
    const/4 v3, 0x1

    #@7f
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@82
    .line 535
    move-object/from16 v0, p0

    #@84
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@86
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    #@89
    move-result-object v2

    #@8a
    move-object/from16 v0, p0

    #@8c
    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@8e
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    #@91
    move-result v3

    #@92
    .line 537
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    #@95
    move-result v12

    #@96
    .line 538
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    #@99
    move-result-object v14

    #@9a
    const/4 v13, 0x2

    #@9b
    move-object/from16 v4, p1

    #@9d
    move/from16 v5, p3

    #@9f
    move/from16 v6, p4

    #@a1
    move-object/from16 v7, p5

    #@a3
    move/from16 v8, p6

    #@a5
    move-object/from16 v9, p7

    #@a7
    move/from16 v10, p8

    #@a9
    move-object/from16 v11, p9

    #@ab
    .line 535
    invoke-interface/range {v2 .. v14}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@ae
    .line 539
    return-void

    #@af
    .line 540
    :catch_0
    move-exception v17

    #@b0
    .line 541
    .local v17, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothGatt"

    #@b3
    const-string/jumbo v3, ""

    #@b6
    move-object/from16 v0, v17

    #@b8
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@bb
    .line 545
    .end local v17    # "e":Landroid/os/RemoteException;
    :cond_5
    move-object/from16 v0, p0

    #@bd
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@bf
    const/4 v3, 0x0

    #@c0
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@c3
    .line 548
    :try_start_2
    move-object/from16 v0, p0

    #@c5
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@c7
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@ca
    move-result-object v2

    #@cb
    move-object/from16 v0, p0

    #@cd
    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@cf
    move-object/from16 v0, v16

    #@d1
    move/from16 v1, p2

    #@d3
    invoke-virtual {v2, v3, v0, v1}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@d6
    .line 507
    :goto_0
    return-void

    #@d7
    .line 549
    :catch_1
    move-exception v18

    #@d8
    .line 550
    .local v18, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGatt"

    #@db
    const-string/jumbo v3, "Unhandled exception in callback"

    #@de
    move-object/from16 v0, v18

    #@e0
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e3
    goto :goto_0
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 561
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 562
    return-void

    #@11
    .line 565
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@13
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@16
    move-result-object v2

    #@17
    monitor-enter v2

    #@18
    .line 566
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v2

    #@23
    .line 570
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@25
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@28
    move-result-object v1

    #@29
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2b
    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@2e
    .line 558
    :goto_0
    return-void

    #@2f
    .line 565
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v2

    #@31
    throw v1

    #@32
    .line 571
    :catch_0
    move-exception v0

    #@33
    .line 572
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothGatt"

    #@36
    const-string/jumbo v2, "Unhandled exception in callback"

    #@39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    goto :goto_0
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "charProps"    # I

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 254
    return-void

    #@11
    .line 256
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@13
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@15
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v0, v2, v3, p3, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@20
    move-result-object v1

    #@21
    .line 258
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_1

    #@23
    .line 259
    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    #@25
    .line 260
    invoke-virtual {p6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@28
    move-result-object v2

    #@29
    const/4 v5, 0x0

    #@2a
    move v3, p5

    #@2b
    move v4, p7

    #@2c
    .line 259
    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    #@2f
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    #@32
    .line 249
    :cond_1
    return-void
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "descrInstId"    # I
    .param p8, "descUuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 276
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 277
    return-void

    #@11
    .line 279
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@13
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@15
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v2, v3, v4, p3, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@20
    move-result-object v1

    #@21
    .line 281
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v1, :cond_1

    #@23
    return-void

    #@24
    .line 284
    :cond_1
    invoke-virtual {p6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@27
    move-result-object v2

    #@28
    .line 283
    invoke-virtual {v1, v2, p5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@2b
    move-result-object v0

    #@2c
    .line 285
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_2

    #@2e
    return-void

    #@2f
    .line 287
    :cond_2
    new-instance v2, Landroid/bluetooth/BluetoothGattDescriptor;

    #@31
    .line 288
    invoke-virtual {p8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@34
    move-result-object v3

    #@35
    const/4 v4, 0x0

    #@36
    .line 287
    invoke-direct {v2, v0, v3, p7, v4}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V

    #@39
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    #@3c
    .line 273
    return-void
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "inclSrvcType"    # I
    .param p6, "inclSrvcInstId"    # I
    .param p7, "inclSrvcUuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 227
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 228
    return-void

    #@11
    .line 230
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@13
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@15
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@18
    move-result-object v3

    #@19
    .line 231
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@1c
    move-result-object v4

    #@1d
    .line 230
    invoke-virtual {v2, v3, v4, p3, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@20
    move-result-object v1

    #@21
    .line 232
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@23
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@25
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@28
    move-result-object v3

    #@29
    .line 233
    invoke-virtual {p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@2c
    move-result-object v4

    #@2d
    .line 232
    invoke-virtual {v2, v3, v4, p6, p5}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@30
    move-result-object v0

    #@31
    .line 235
    .local v0, "includedService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_1

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 236
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->addIncludedService(Landroid/bluetooth/BluetoothGattService;)V

    #@38
    .line 223
    :cond_1
    return-void
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 209
    return-void

    #@11
    .line 211
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@13
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get7(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    new-instance v1, Landroid/bluetooth/BluetoothGattService;

    #@19
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@1b
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v1, v2, v3, p3, p2}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)V

    #@26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    .line 206
    return-void
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "value"    # [B

    #@0
    .prologue
    .line 424
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 425
    return-void

    #@11
    .line 427
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@13
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@15
    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v3, v4, v5, p3, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@20
    move-result-object v2

    #@21
    .line 429
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_1

    #@23
    return-void

    #@24
    .line 432
    :cond_1
    invoke-virtual {p6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@27
    move-result-object v3

    #@28
    .line 431
    invoke-virtual {v2, v3, p5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@2b
    move-result-object v0

    #@2c
    .line 433
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_2

    #@2e
    return-void

    #@2f
    .line 435
    :cond_2
    invoke-virtual {v0, p7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    #@32
    .line 438
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@34
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@37
    move-result-object v3

    #@38
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@3a
    invoke-virtual {v3, v4, v0}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 421
    :goto_0
    return-void

    #@3e
    .line 439
    :catch_0
    move-exception v1

    #@3f
    .line 440
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothGatt"

    #@42
    const-string/jumbo v4, "Unhandled exception in callback"

    #@45
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    goto :goto_0
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    #@0
    .prologue
    .line 583
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 584
    return-void

    #@11
    .line 587
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@13
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@19
    invoke-virtual {v1, v2, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 580
    :goto_0
    return-void

    #@1d
    .line 588
    :catch_0
    move-exception v0

    #@1e
    .line 589
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothGatt"

    #@21
    const-string/jumbo v2, "Unhandled exception in callback"

    #@24
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method

.method public onSearchComplete(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 299
    const-string/jumbo v1, "BluetoothGatt"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "onSearchComplete() = Device="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, " Status="

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 300
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@27
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    if-nez v1, :cond_0

    #@35
    .line 301
    return-void

    #@36
    .line 304
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@38
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@3e
    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 298
    :goto_0
    return-void

    #@42
    .line 305
    :catch_0
    move-exception v0

    #@43
    .line 306
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothGatt"

    #@46
    const-string/jumbo v2, "Unhandled exception in callback"

    #@49
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    goto :goto_0
.end method
