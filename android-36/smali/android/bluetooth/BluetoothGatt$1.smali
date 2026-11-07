.class Landroid/bluetooth/BluetoothGatt$1;
.super Landroid/bluetooth/IBluetoothGattCallback$Stub;
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
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothGatt;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothGatt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCharacteristicRead(Ljava/lang/String;II[B)V
    .registers 15
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    .line 504
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 505
    return-void

    .line 508
    :cond_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 509
    :try_start_18
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 510
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_a3

    .line 512
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    .line 513
    .local v4, "clientIf":I
    const/4 v0, 0x5

    if-eq p2, v0, :cond_34

    const/16 v0, 0xf

    if-ne p2, v0, :cond_31

    goto :goto_34

    :cond_31
    move-object v5, p1

    move v6, p3

    goto :goto_7b

    :cond_34
    :goto_34
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_79

    if-lez v4, :cond_79

    .line 519
    :try_start_3f
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_4a

    .line 520
    move v7, v9

    goto :goto_4b

    .line 521
    :cond_4a
    move v7, v1

    :goto_4b
    nop

    .line 522
    .local v7, "authReq":I
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;

    move-result-object v8
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_58} :catch_6b

    move-object v5, p1

    move v6, p3

    .end local p1    # "address":Ljava/lang/String;
    .end local p3    # "handle":I
    .local v5, "address":Ljava/lang/String;
    .local v6, "handle":I
    :try_start_5a
    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;IILandroid/content/AttributionSource;)V

    .line 524
    iget-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {p1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result p3

    add-int/2addr p3, v9

    invoke-static {p1, p3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_67} :catch_68

    .line 525
    return-void

    .line 526
    .end local v7    # "authReq":I
    :catch_68
    move-exception v0

    move-object p1, v0

    goto :goto_6f

    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "handle":I
    .restart local p1    # "address":Ljava/lang/String;
    .restart local p3    # "handle":I
    :catch_6b
    move-exception v0

    move-object v5, p1

    move v6, p3

    move-object p1, v0

    .line 527
    .end local p3    # "handle":I
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "handle":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_6f
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    .line 513
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "handle":I
    .local p1, "address":Ljava/lang/String;
    .restart local p3    # "handle":I
    :cond_79
    move-object v5, p1

    move v6, p3

    .line 531
    .end local p1    # "address":Ljava/lang/String;
    .end local p3    # "handle":I
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "handle":I
    :goto_7b
    iget-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 533
    iget-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object p3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {p3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    .line 534
    invoke-virtual {p1, p3, v6}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    .line 535
    .local p1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez p1, :cond_98

    .line 536
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string v0, "onCharacteristicRead() failed to find characteristic!"

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 540
    :cond_98
    iget-object p3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v0, Landroid/bluetooth/BluetoothGatt$1$6;

    invoke-direct {v0, p0, p2, p1, p4}, Landroid/bluetooth/BluetoothGatt$1$6;-><init>(Landroid/bluetooth/BluetoothGatt$1;ILandroid/bluetooth/BluetoothGattCharacteristic;[B)V

    invoke-static {p3, v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 552
    return-void

    .line 510
    .end local v4    # "clientIf":I
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "handle":I
    .local p1, "address":Ljava/lang/String;
    .restart local p3    # "handle":I
    :catchall_a3
    move-exception v0

    move-object v5, p1

    move v6, p3

    move-object p1, v0

    .end local p1    # "address":Ljava/lang/String;
    .end local p3    # "handle":I
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "handle":I
    :goto_a7
    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a9

    throw p1

    :catchall_a9
    move-exception v0

    move-object p1, v0

    goto :goto_a7
.end method

.method public blacklist onCharacteristicWrite(Ljava/lang/String;II[B)V
    .registers 21
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    .line 573
    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 574
    return-void

    .line 577
    :cond_17
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 578
    :try_start_1e
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 579
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_bf

    .line 581
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 582
    move/from16 v6, p3

    invoke-virtual {v0, v3, v6}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v12

    .line 583
    .local v12, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v12, :cond_3a

    return-void

    .line 585
    :cond_3a
    const/4 v13, 0x5

    if-eq v2, v13, :cond_41

    const/16 v0, 0xf

    if-ne v2, v0, :cond_af

    :cond_41
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_af

    .line 590
    :try_start_4a
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v14, 0x1

    if-nez v0, :cond_55

    .line 591
    move v8, v14

    goto :goto_56

    .line 592
    :cond_55
    move v8, v3

    :goto_56
    nop

    .line 593
    .local v8, "authReq":I
    const v0, 0x7fffffff

    .line 594
    .local v0, "requestStatus":I
    iget-object v3, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    .line 595
    .local v4, "clientIf":I
    const/4 v3, 0x0

    move v15, v3

    .line 596
    .local v15, "i":I
    :goto_62
    if-ge v15, v13, :cond_9a

    if-lez v4, :cond_9a

    .line 598
    iget-object v3, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 603
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v7

    iget-object v9, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v9}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;

    move-result-object v10

    .line 599
    move-object/from16 v9, p4

    invoke-interface/range {v3 .. v10}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;III[BLandroid/content/AttributionSource;)I

    move-result v3
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_7c} :catch_a5

    .line 607
    .end local v0    # "requestStatus":I
    .local v3, "requestStatus":I
    const/16 v0, 0xc9

    if-eq v3, v0, :cond_82

    .line 609
    move v0, v3

    goto :goto_9a

    .line 612
    :cond_82
    const-wide/16 v5, 0xa

    :try_start_84
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_87} :catch_88
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_87} :catch_a5

    .line 615
    goto :goto_92

    .line 613
    :catch_88
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_89
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_92
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, p1

    move/from16 v6, p3

    move v0, v3

    goto :goto_62

    .line 617
    .end local v3    # "requestStatus":I
    .end local v15    # "i":I
    .local v0, "requestStatus":I
    :cond_9a
    :goto_9a
    iget-object v3, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v5

    add-int/2addr v5, v14

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_a4} :catch_a5

    .line 618
    return-void

    .line 619
    .end local v0    # "requestStatus":I
    .end local v4    # "clientIf":I
    .end local v8    # "authReq":I
    :catch_a5
    move-exception v0

    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_af
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v11}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 625
    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v3, Landroid/bluetooth/BluetoothGatt$1$7;

    invoke-direct {v3, v1, v12, v2}, Landroid/bluetooth/BluetoothGatt$1$7;-><init>(Landroid/bluetooth/BluetoothGatt$1;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 636
    return-void

    .line 579
    .end local v12    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catchall_bf
    move-exception v0

    :try_start_c0
    monitor-exit v3
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v0
.end method

.method public blacklist onClientConnectionState(IIZLjava/lang/String;)V
    .registers 10
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;

    .line 378
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientConnectionState() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    invoke-static {p4}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 388
    return-void

    .line 390
    :cond_53
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_59

    move v2, v0

    goto :goto_5a

    :cond_59
    move v2, v1

    .line 392
    .local v2, "profileState":I
    :goto_5a
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->unregisterGattClientDisconnected()Z

    move-result v3

    if-eqz v3, :cond_6f

    if-nez p3, :cond_6f

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAutoConnect(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 393
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$munregisterApp(Landroid/bluetooth/BluetoothGatt;)V

    .line 396
    :cond_6f
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v4, Landroid/bluetooth/BluetoothGatt$1$4;

    invoke-direct {v4, p0, p1, v2}, Landroid/bluetooth/BluetoothGatt$1$4;-><init>(Landroid/bluetooth/BluetoothGatt$1;II)V

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 408
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmStateLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 409
    if-eqz p3, :cond_88

    .line 410
    :try_start_82
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4, v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmConnState(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_8d

    .line 412
    :cond_88
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmConnState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 414
    :goto_8d
    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_a3

    .line 416
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 417
    :try_start_95
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 418
    monitor-exit v0

    .line 419
    return-void

    .line 418
    :catchall_a0
    move-exception v1

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_95 .. :try_end_a2} :catchall_a0

    throw v1

    .line 414
    :catchall_a3
    move-exception v0

    :try_start_a4
    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v0
.end method

.method public blacklist onClientRegistered(II)V
    .registers 14
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .line 236
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientRegistered() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmClientIf(Landroid/bluetooth/BluetoothGatt;I)V

    .line 243
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmStateLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 244
    :try_start_36
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmConnState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_cf

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5f

    .line 246
    :try_start_3f
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Client registration completed after closed, unregistering"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$munregisterApp(Landroid/bluetooth/BluetoothGatt;)V

    .line 252
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->unregisterGattClientDisconnected()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 253
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;)V

    .line 255
    :cond_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_3f .. :try_end_5a} :catchall_5b

    return-void

    .line 262
    :catchall_5b
    move-exception v0

    move v3, p2

    goto/16 :goto_d1

    :cond_5f
    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_cf

    .line 263
    const/4 v0, 0x0

    if-eqz p1, :cond_7e

    .line 264
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v2, Landroid/bluetooth/BluetoothGatt$1$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothGatt$1$1;-><init>(Landroid/bluetooth/BluetoothGatt$1;)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 278
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmStateLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 279
    :try_start_74
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmConnState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_7b
    move-exception v0

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_7b

    throw v0

    .line 285
    :cond_7e
    :try_start_7e
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddressType()I

    move-result v5

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAutoConnect(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v1

    if-nez v1, :cond_a1

    const/4 v0, 0x1

    :cond_a1
    move v6, v0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmTransport(Landroid/bluetooth/BluetoothGatt;)I

    move-result v7

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmOpportunistic(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v8

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmPhy(Landroid/bluetooth/BluetoothGatt;)I

    move-result v9

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;

    move-result-object v10
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_ba} :catch_c2

    .line 285
    move v3, p2

    .end local p2    # "clientIf":I
    .local v3, "clientIf":I
    :try_start_bb
    invoke-interface/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;IZIZILandroid/content/AttributionSource;)V
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_be} :catch_bf

    .line 296
    goto :goto_ce

    .line 294
    :catch_bf
    move-exception v0

    move-object p2, v0

    goto :goto_c5

    .end local v3    # "clientIf":I
    .restart local p2    # "clientIf":I
    :catch_c2
    move-exception v0

    move v3, p2

    move-object p2, v0

    .line 295
    .restart local v3    # "clientIf":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_c5
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    .end local p2    # "e":Landroid/os/RemoteException;
    :goto_ce
    return-void

    .line 262
    .end local v3    # "clientIf":I
    .local p2, "clientIf":I
    :catchall_cf
    move-exception v0

    move v3, p2

    .end local p2    # "clientIf":I
    .restart local v3    # "clientIf":I
    :goto_d1
    :try_start_d1
    monitor-exit v1
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d3

    throw v0

    :catchall_d3
    move-exception v0

    goto :goto_d1
.end method

.method public blacklist onConfigureMTU(Ljava/lang/String;II)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .line 875
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigureMTU() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 878
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 875
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 883
    return-void

    .line 886
    :cond_49
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$13;

    invoke-direct {v1, p0, p2, p3}, Landroid/bluetooth/BluetoothGatt$1$13;-><init>(Landroid/bluetooth/BluetoothGatt$1;II)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 896
    return-void
.end method

.method public blacklist onConnectionUpdated(Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "interval"    # I
    .param p3, "latency"    # I
    .param p4, "timeout"    # I
    .param p5, "status"    # I

    .line 907
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionUpdated() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 910
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " latency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 907
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 917
    return-void

    .line 920
    :cond_5d
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$14;

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "interval":I
    .end local p3    # "latency":I
    .end local p4    # "timeout":I
    .end local p5    # "status":I
    .local v3, "interval":I
    .local v4, "latency":I
    .local v5, "timeout":I
    .local v6, "status":I
    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothGatt$1$14;-><init>(Landroid/bluetooth/BluetoothGatt$1;IIII)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 935
    return-void
.end method

.method public blacklist onDescriptorRead(Ljava/lang/String;II[B)V
    .registers 15
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    .line 692
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 693
    return-void

    .line 696
    :cond_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 697
    :try_start_18
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 698
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_9a

    .line 700
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/BluetoothGatt;->getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 701
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v1, :cond_32

    return-void

    .line 703
    :cond_32
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    .line 704
    .local v4, "clientIf":I
    const/4 v0, 0x5

    if-eq p2, v0, :cond_43

    const/16 v0, 0xf

    if-ne p2, v0, :cond_40

    goto :goto_43

    :cond_40
    move-object v5, p1

    move v6, p3

    goto :goto_8a

    :cond_43
    :goto_43
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_88

    if-lez v4, :cond_88

    .line 710
    :try_start_4e
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_59

    .line 711
    move v7, v9

    goto :goto_5a

    .line 712
    :cond_59
    move v7, v3

    :goto_5a
    nop

    .line 713
    .local v7, "authReq":I
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;

    move-result-object v8
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_67} :catch_7a

    move-object v5, p1

    move v6, p3

    .end local p1    # "address":Ljava/lang/String;
    .end local p3    # "handle":I
    .local v5, "address":Ljava/lang/String;
    .local v6, "handle":I
    :try_start_69
    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;IILandroid/content/AttributionSource;)V

    .line 715
    iget-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {p1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result p3

    add-int/2addr p3, v9

    invoke-static {p1, p3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_76} :catch_77

    .line 716
    return-void

    .line 717
    .end local v7    # "authReq":I
    :catch_77
    move-exception v0

    move-object p1, v0

    goto :goto_7e

    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "handle":I
    .restart local p1    # "address":Ljava/lang/String;
    .restart local p3    # "handle":I
    :catch_7a
    move-exception v0

    move-object v5, p1

    move v6, p3

    move-object p1, v0

    .line 718
    .end local p3    # "handle":I
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "handle":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_7e
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8a

    .line 704
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "handle":I
    .local p1, "address":Ljava/lang/String;
    .restart local p3    # "handle":I
    :cond_88
    move-object v5, p1

    move v6, p3

    .line 722
    .end local p1    # "address":Ljava/lang/String;
    .end local p3    # "handle":I
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "handle":I
    :goto_8a
    iget-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 724
    iget-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance p3, Landroid/bluetooth/BluetoothGatt$1$9;

    invoke-direct {p3, p0, p2, v1, p4}, Landroid/bluetooth/BluetoothGatt$1$9;-><init>(Landroid/bluetooth/BluetoothGatt$1;ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-static {p1, p3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 736
    return-void

    .line 698
    .end local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v4    # "clientIf":I
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "handle":I
    .restart local p1    # "address":Ljava/lang/String;
    .restart local p3    # "handle":I
    :catchall_9a
    move-exception v0

    move-object v5, p1

    move v6, p3

    move-object p1, v0

    .end local p1    # "address":Ljava/lang/String;
    .end local p3    # "handle":I
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "handle":I
    :goto_9e
    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_a0

    throw p1

    :catchall_a0
    move-exception v0

    move-object p1, v0

    goto :goto_9e
.end method

.method public blacklist onDescriptorWrite(Ljava/lang/String;II[B)V
    .registers 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    .line 756
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 757
    return-void

    .line 760
    :cond_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 761
    :try_start_18
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 762
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_9e

    .line 764
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/BluetoothGatt;->getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 765
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v1, :cond_32

    return-void

    .line 767
    :cond_32
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    .line 768
    .local v4, "clientIf":I
    const/4 v0, 0x5

    if-eq p2, v0, :cond_44

    const/16 v0, 0xf

    if-ne p2, v0, :cond_40

    goto :goto_44

    :cond_40
    move-object v5, p1

    move v6, p3

    move-object v8, p4

    goto :goto_8e

    :cond_44
    :goto_44
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8b

    if-lez v4, :cond_8b

    .line 774
    :try_start_4f
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v10, 0x1

    if-nez v0, :cond_5a

    .line 775
    move v7, v10

    goto :goto_5b

    .line 776
    :cond_5a
    move v7, v3

    :goto_5b
    nop

    .line 777
    .local v7, "authReq":I
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothGatt;)Landroid/content/AttributionSource;

    move-result-object v9
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_68} :catch_7c

    move-object v5, p1

    move v6, p3

    move-object v8, p4

    .end local p1    # "address":Ljava/lang/String;
    .end local p3    # "handle":I
    .end local p4    # "value":[B
    .local v5, "address":Ljava/lang/String;
    .local v6, "handle":I
    .local v8, "value":[B
    :try_start_6b
    invoke-interface/range {v3 .. v9}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;II[BLandroid/content/AttributionSource;)I

    .line 779
    iget-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {p1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmAuthRetryState(Landroid/bluetooth/BluetoothGatt;)I

    move-result p3

    add-int/2addr p3, v10

    invoke-static {p1, p3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_78} :catch_79

    .line 780
    return-void

    .line 781
    .end local v7    # "authReq":I
    :catch_79
    move-exception v0

    move-object p1, v0

    goto :goto_81

    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "handle":I
    .end local v8    # "value":[B
    .restart local p1    # "address":Ljava/lang/String;
    .restart local p3    # "handle":I
    .restart local p4    # "value":[B
    :catch_7c
    move-exception v0

    move-object v5, p1

    move v6, p3

    move-object v8, p4

    move-object p1, v0

    .line 782
    .end local p3    # "handle":I
    .end local p4    # "value":[B
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "handle":I
    .restart local v8    # "value":[B
    .local p1, "e":Landroid/os/RemoteException;
    :goto_81
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, ""

    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e

    .line 768
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "handle":I
    .end local v8    # "value":[B
    .local p1, "address":Ljava/lang/String;
    .restart local p3    # "handle":I
    .restart local p4    # "value":[B
    :cond_8b
    move-object v5, p1

    move v6, p3

    move-object v8, p4

    .line 786
    .end local p1    # "address":Ljava/lang/String;
    .end local p3    # "handle":I
    .end local p4    # "value":[B
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "handle":I
    .restart local v8    # "value":[B
    :goto_8e
    iget-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmAuthRetryState(Landroid/bluetooth/BluetoothGatt;I)V

    .line 788
    iget-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance p3, Landroid/bluetooth/BluetoothGatt$1$10;

    invoke-direct {p3, p0, v1, p2}, Landroid/bluetooth/BluetoothGatt$1$10;-><init>(Landroid/bluetooth/BluetoothGatt$1;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    invoke-static {p1, p3}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 799
    return-void

    .line 762
    .end local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v4    # "clientIf":I
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "handle":I
    .end local v8    # "value":[B
    .restart local p1    # "address":Ljava/lang/String;
    .restart local p3    # "handle":I
    .restart local p4    # "value":[B
    :catchall_9e
    move-exception v0

    move-object v5, p1

    move v6, p3

    move-object v8, p4

    move-object p1, v0

    .end local p1    # "address":Ljava/lang/String;
    .end local p3    # "handle":I
    .end local p4    # "value":[B
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "handle":I
    .restart local v8    # "value":[B
    :goto_a3
    :try_start_a3
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a5

    throw p1

    :catchall_a5
    move-exception v0

    move-object p1, v0

    goto :goto_a3
.end method

.method public blacklist onExecuteWrite(Ljava/lang/String;I)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 816
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 817
    return-void

    .line 820
    :cond_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDeviceBusyLock(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 821
    :try_start_18
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fputmDeviceBusy(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)V

    .line 822
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_2e

    .line 824
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$11;

    invoke-direct {v1, p0, p2}, Landroid/bluetooth/BluetoothGatt$1$11;-><init>(Landroid/bluetooth/BluetoothGatt$1;I)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 835
    return-void

    .line 822
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public blacklist onNotify(Ljava/lang/String;I[B)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "value"    # [B

    .line 653
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 654
    return-void

    .line 657
    :cond_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v1, p2}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 659
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_20

    return-void

    .line 661
    :cond_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v2, Landroid/bluetooth/BluetoothGatt$1$8;

    invoke-direct {v2, p0, v0, p3}, Landroid/bluetooth/BluetoothGatt$1$8;-><init>(Landroid/bluetooth/BluetoothGatt$1;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 673
    return-void
.end method

.method public blacklist onPhyRead(Ljava/lang/String;III)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 341
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhyRead() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " txPhy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rxPhy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 351
    return-void

    .line 354
    :cond_53
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$3;

    invoke-direct {v1, p0, p2, p3, p4}, Landroid/bluetooth/BluetoothGatt$1$3;-><init>(Landroid/bluetooth/BluetoothGatt$1;III)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method public blacklist onPhyUpdate(Ljava/lang/String;III)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 307
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhyUpdate() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " txPhy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rxPhy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 317
    return-void

    .line 320
    :cond_53
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$2;

    invoke-direct {v1, p0, p2, p3, p4}, Landroid/bluetooth/BluetoothGatt$1$2;-><init>(Landroid/bluetooth/BluetoothGatt$1;III)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public blacklist onReadRemoteRssi(Ljava/lang/String;II)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .line 852
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 853
    return-void

    .line 855
    :cond_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$12;

    invoke-direct {v1, p0, p2, p3}, Landroid/bluetooth/BluetoothGatt$1$12;-><init>(Landroid/bluetooth/BluetoothGatt$1;II)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 865
    return-void
.end method

.method public blacklist onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V
    .registers 13
    .param p1, "address"    # Ljava/lang/String;
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;I)V"
        }
    .end annotation

    .line 432
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchComplete() = address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 440
    return-void

    .line 443
    :cond_39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 445
    .local v1, "s":Landroid/bluetooth/BluetoothGattService;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 446
    .end local v1    # "s":Landroid/bluetooth/BluetoothGattService;
    goto :goto_3d

    .line 448
    :cond_53
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->fixBluetoothGattGettingDuplicateServices()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 449
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmServices(Landroid/bluetooth/BluetoothGatt;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 452
    :cond_62
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmServices(Landroid/bluetooth/BluetoothGatt;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 455
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmServices(Landroid/bluetooth/BluetoothGatt;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 456
    .local v1, "fixedService":Landroid/bluetooth/BluetoothGattService;
    new-instance v2, Ljava/util/ArrayList;

    .line 457
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    .local v2, "includedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 460
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_95
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    .line 461
    .local v4, "brokenRef":Landroid/bluetooth/BluetoothGattService;
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v6}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 464
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    .line 465
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v8

    .line 462
    invoke-virtual {v5, v6, v7, v8}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 466
    .local v5, "includedService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v5, :cond_bb

    .line 467
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGattService;->addIncludedService(Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_c4

    .line 469
    :cond_bb
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Broken GATT database: can\'t find included service."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v4    # "brokenRef":Landroid/bluetooth/BluetoothGattService;
    .end local v5    # "includedService":Landroid/bluetooth/BluetoothGattService;
    :goto_c4
    goto :goto_95

    .line 472
    .end local v1    # "fixedService":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "includedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_c5
    goto :goto_75

    .line 474
    :cond_c6
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$5;

    invoke-direct {v1, p0, p3}, Landroid/bluetooth/BluetoothGatt$1$5;-><init>(Landroid/bluetooth/BluetoothGatt$1;I)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method

.method public blacklist onServiceChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 945
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceChanged() - Device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 948
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 945
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 952
    return-void

    .line 955
    :cond_2f
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$15;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothGatt$1$15;-><init>(Landroid/bluetooth/BluetoothGatt$1;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 965
    return-void
.end method

.method public blacklist onSubrateChange(Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "subrateFactor"    # I
    .param p3, "latency"    # I
    .param p4, "contNum"    # I
    .param p5, "timeout"    # I
    .param p6, "status"    # I

    .line 980
    invoke-static {}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubrateChange() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 983
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subrateFactor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " latency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 980
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$fgetmDevice(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 991
    return-void

    .line 994
    :cond_67
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$16;

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p2    # "subrateFactor":I
    .end local p3    # "latency":I
    .end local p4    # "contNum":I
    .end local p5    # "timeout":I
    .end local p6    # "status":I
    .local v3, "subrateFactor":I
    .local v4, "latency":I
    .local v5, "contNum":I
    .local v6, "timeout":I
    .local v7, "status":I
    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothGatt$1$16;-><init>(Landroid/bluetooth/BluetoothGatt$1;IIIII)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    .line 1010
    return-void
.end method
