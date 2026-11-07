.class Landroid/bluetooth/BluetoothGattServer$1;
.super Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.source "BluetoothGattServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothGattServer;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothGattServer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothGattServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCharacteristicReadRequest(Ljava/lang/String;IIZI)V
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "handle"    # I

    .line 194
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 195
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v1, p5}, Landroid/bluetooth/BluetoothGattServer;->getCharacteristicByHandle(I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 196
    .local v1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v1, :cond_2d

    .line 197
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCharacteristicReadRequest() no char for handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 202
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3, v1}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_37

    .line 206
    goto :goto_41

    .line 204
    :catch_37
    move-exception v2

    .line 205
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unhandled exception in callback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public blacklist onCharacteristicWriteRequest(Ljava/lang/String;IIIZZI[B)V
    .registers 19
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "isPrep"    # Z
    .param p6, "needRsp"    # Z
    .param p7, "handle"    # I
    .param p8, "value"    # [B

    .line 250
    move/from16 v1, p7

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 251
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattServer;->getCharacteristicByHandle(I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    .line 252
    .local v5, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v5, :cond_2f

    .line 253
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCharacteristicWriteRequest() no char for handle "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 258
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    move v4, p2

    move v8, p3

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3f} :catch_40

    .line 262
    goto :goto_4a

    .line 260
    :catch_40
    move-exception v0

    .line 261
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unhandled exception in callback"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method

.method public blacklist onConnectionUpdated(Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "interval"    # I
    .param p3, "latency"    # I
    .param p4, "timeout"    # I
    .param p5, "status"    # I

    .line 447
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionUpdated() - Device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
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

    .line 447
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 461
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_53

    return-void

    .line 464
    :cond_53
    :try_start_53
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_59} :catch_64

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
    :try_start_5d
    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionUpdated(Landroid/bluetooth/BluetoothDevice;IIII)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    .line 467
    goto :goto_84

    .line 465
    :catch_61
    move-exception v0

    move-object p2, v0

    goto :goto_6a

    .end local v3    # "interval":I
    .end local v4    # "latency":I
    .end local v5    # "timeout":I
    .end local v6    # "status":I
    .restart local p2    # "interval":I
    .restart local p3    # "latency":I
    .restart local p4    # "timeout":I
    .restart local p5    # "status":I
    :catch_64
    move-exception v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object p2, v0

    .line 466
    .end local p3    # "latency":I
    .end local p4    # "timeout":I
    .end local p5    # "status":I
    .restart local v3    # "interval":I
    .restart local v4    # "latency":I
    .restart local v5    # "timeout":I
    .restart local v6    # "status":I
    .local p2, "ex":Ljava/lang/Exception;
    :goto_6a
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unhandled exception: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local p2    # "ex":Ljava/lang/Exception;
    :goto_84
    return-void
.end method

.method public blacklist onDescriptorReadRequest(Ljava/lang/String;IIZI)V
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "handle"    # I

    .line 219
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 220
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v1, p5}, Landroid/bluetooth/BluetoothGattServer;->getDescriptorByHandle(I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 221
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v1, :cond_2d

    .line 222
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDescriptorReadRequest() no desc for handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 227
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3, v1}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_37

    .line 230
    goto :goto_41

    .line 228
    :catch_37
    move-exception v2

    .line 229
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unhandled exception in callback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method public blacklist onDescriptorWriteRequest(Ljava/lang/String;IIIZZI[B)V
    .registers 19
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "isPrep"    # Z
    .param p6, "needRsp"    # Z
    .param p7, "handle"    # I
    .param p8, "value"    # [B

    .line 282
    move/from16 v1, p7

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 283
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattServer;->getDescriptorByHandle(I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v5

    .line 284
    .local v5, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v5, :cond_2f

    .line 285
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDescriptorWriteRequest() no desc for handle "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 290
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    move v4, p2

    move v8, p3

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3f} :catch_40

    .line 294
    goto :goto_4a

    .line 292
    :catch_40
    move-exception v0

    .line 293
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unhandled exception in callback"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method

.method public blacklist onExecuteWrite(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "execWrite"    # Z

    .line 305
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExecuteWrite() - device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "execWrite="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 317
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_3f

    return-void

    .line 320
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/bluetooth/BluetoothGattServerCallback;->onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_49

    .line 323
    goto :goto_53

    .line 321
    :catch_49
    move-exception v1

    .line 322
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unhandled exception in callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_53
    return-void
.end method

.method public blacklist onMtuChanged(Ljava/lang/String;I)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    .line 361
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMtuChanged() - device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 371
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_35

    return-void

    .line 374
    :cond_35
    :try_start_35
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/bluetooth/BluetoothGattServerCallback;->onMtuChanged(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_3f

    .line 377
    goto :goto_5a

    .line 375
    :catch_3f
    move-exception v1

    .line 376
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_5a
    return-void
.end method

.method public blacklist onNotificationSent(Ljava/lang/String;I)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 343
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 344
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_d

    return-void

    .line 347
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/bluetooth/BluetoothGattServerCallback;->onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_17

    .line 350
    goto :goto_32

    .line 348
    :catch_17
    move-exception v1

    .line 349
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public blacklist onPhyRead(Ljava/lang/String;III)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 417
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhyUpdate() - device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 421
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", txPHy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rxPHy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 429
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_3f

    return-void

    .line 432
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onPhyRead(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_49

    .line 435
    goto :goto_64

    .line 433
    :catch_49
    move-exception v1

    .line 434
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_64
    return-void
.end method

.method public blacklist onPhyUpdate(Ljava/lang/String;III)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "txPhy"    # I
    .param p3, "rxPhy"    # I
    .param p4, "status"    # I

    .line 388
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhyUpdate() - device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", txPHy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rxPHy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 400
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_3f

    return-void

    .line 403
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onPhyUpdate(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_49

    .line 406
    goto :goto_64

    .line 404
    :catch_49
    move-exception v1

    .line 405
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_64
    return-void
.end method

.method public blacklist onServerConnectionState(IIZLjava/lang/String;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;

    .line 112
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServerConnectionState() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serverIf="

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

    .line 121
    invoke-static {p4}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :try_start_3c
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 125
    invoke-virtual {v1, p4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 127
    if-eqz p3, :cond_50

    const/4 v2, 0x2

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    .line 124
    :goto_51
    invoke-virtual {v0, v1, p1, v2}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_54} :catch_55

    .line 130
    goto :goto_5f

    .line 128
    :catch_55
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method

.method public blacklist onServerRegistered(II)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "serverIf"    # I

    .line 85
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServerRegistered() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serverIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmServerIfLock(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 94
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1, p2}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fputmServerIf(Landroid/bluetooth/BluetoothGattServer;I)V

    .line 95
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmServerIfLock(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    goto :goto_4b

    .line 98
    :cond_42
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onServerRegistered: mCallback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_4b
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_2b .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public blacklist onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .registers 14
    .param p1, "status"    # I
    .param p2, "service"    # Landroid/bluetooth/BluetoothGattService;

    .line 141
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceAdded() - handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmPendingService(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 152
    return-void

    .line 155
    :cond_3f
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmPendingService(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 156
    .local v0, "tmp":Landroid/bluetooth/BluetoothGattService;
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fputmPendingService(Landroid/bluetooth/BluetoothGattServer;Landroid/bluetooth/BluetoothGattService;)V

    .line 159
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->setInstanceId(I)V

    .line 160
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, "temp_chars":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, "svc_chars":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9c

    .line 163
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 164
    .local v4, "temp_char":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 166
    .local v5, "svc_char":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->setInstanceId(I)V

    .line 168
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v6

    .line 169
    .local v6, "temp_descs":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v7

    .line 170
    .local v7, "svc_descs":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_7d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_99

    .line 171
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothGattDescriptor;->setInstanceId(I)V

    .line 170
    add-int/lit8 v8, v8, 0x1

    goto :goto_7d

    .line 162
    .end local v4    # "temp_char":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v5    # "svc_char":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v6    # "temp_descs":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    .end local v7    # "svc_descs":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    .end local v8    # "j":I
    :cond_99
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 175
    .end local v3    # "i":I
    :cond_9c
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmServices(Landroid/bluetooth/BluetoothGattServer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :try_start_a5
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Landroid/bluetooth/BluetoothGattServerCallback;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ae} :catch_af

    .line 181
    goto :goto_b9

    .line 179
    :catch_af
    move-exception v3

    .line 180
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unhandled exception in callback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_b9
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

    .line 484
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubrateChange() - Device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 488
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subrateFactor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", latency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmAdapter(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 501
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_5d

    .line 502
    return-void

    .line 506
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v1
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_63} :catch_6f

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
    :try_start_68
    invoke-virtual/range {v1 .. v7}, Landroid/bluetooth/BluetoothGattServerCallback;->onSubrateChange(Landroid/bluetooth/BluetoothDevice;IIIII)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 510
    goto :goto_90

    .line 508
    :catch_6c
    move-exception v0

    move-object p2, v0

    goto :goto_76

    .end local v3    # "subrateFactor":I
    .end local v4    # "latency":I
    .end local v5    # "contNum":I
    .end local v6    # "timeout":I
    .end local v7    # "status":I
    .restart local p2    # "subrateFactor":I
    .restart local p3    # "latency":I
    .restart local p4    # "contNum":I
    .restart local p5    # "timeout":I
    .restart local p6    # "status":I
    :catch_6f
    move-exception v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object p2, v0

    .line 509
    .end local p3    # "latency":I
    .end local p4    # "contNum":I
    .end local p5    # "timeout":I
    .end local p6    # "status":I
    .restart local v3    # "subrateFactor":I
    .restart local v4    # "latency":I
    .restart local v5    # "contNum":I
    .restart local v6    # "timeout":I
    .restart local v7    # "status":I
    .local p2, "ex":Ljava/lang/Exception;
    :goto_76
    invoke-static {}, Landroid/bluetooth/BluetoothGattServer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unhandled exception: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .end local p2    # "ex":Ljava/lang/Exception;
    :goto_90
    return-void
.end method
