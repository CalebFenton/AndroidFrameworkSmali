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
.field final synthetic this$0:Landroid/bluetooth/BluetoothGattServer;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGattServer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothGattServer;

    #@0
    .prologue
    .line 63
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@2
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "srvcType"    # I
    .param p6, "srvcInstId"    # I
    .param p7, "srvcId"    # Landroid/os/ParcelUuid;
    .param p8, "charInstId"    # I
    .param p9, "charId"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 135
    invoke-virtual {p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@3
    move-result-object v5

    #@4
    .line 136
    .local v5, "srvcUuid":Ljava/util/UUID;
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@7
    move-result-object v0

    #@8
    .line 140
    .local v0, "charUuid":Ljava/util/UUID;
    iget-object v6, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@a
    invoke-static {v6}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    #@d
    move-result-object v6

    #@e
    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@11
    move-result-object v2

    #@12
    .line 141
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@14
    invoke-virtual {v6, v5, p6, p5}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@17
    move-result-object v4

    #@18
    .line 142
    .local v4, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v4, :cond_0

    #@1a
    return-void

    #@1b
    .line 144
    :cond_0
    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@1e
    move-result-object v1

    #@1f
    .line 145
    .local v1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v1, :cond_1

    #@21
    return-void

    #@22
    .line 148
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@24
    invoke-static {v6}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v2, p2, p3, v1}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 134
    :goto_0
    return-void

    #@2c
    .line 149
    :catch_0
    move-exception v3

    #@2d
    .line 150
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "BluetoothGattServer"

    #@30
    const-string/jumbo v7, "Unhandled exception in callback"

    #@33
    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0
.end method

.method public onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 14
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "isPrep"    # Z
    .param p6, "needRsp"    # Z
    .param p7, "srvcType"    # I
    .param p8, "srvcInstId"    # I
    .param p9, "srvcId"    # Landroid/os/ParcelUuid;
    .param p10, "charInstId"    # I
    .param p11, "charId"    # Landroid/os/ParcelUuid;
    .param p12, "value"    # [B

    #@0
    .prologue
    .line 194
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@3
    move-result-object v13

    #@4
    .line 195
    .local v13, "srvcUuid":Ljava/util/UUID;
    invoke-virtual/range {p11 .. p11}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@7
    move-result-object v10

    #@8
    .line 199
    .local v10, "charUuid":Ljava/util/UUID;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@a
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@11
    move-result-object v3

    #@12
    .line 200
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@14
    move/from16 v0, p8

    #@16
    move/from16 v1, p7

    #@18
    invoke-virtual {v2, v13, v0, v1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@1b
    move-result-object v12

    #@1c
    .line 201
    .local v12, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v12, :cond_0

    #@1e
    return-void

    #@1f
    .line 203
    :cond_0
    invoke-virtual {v12, v10}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@22
    move-result-object v5

    #@23
    .line 204
    .local v5, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v5, :cond_1

    #@25
    return-void

    #@26
    .line 207
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@28
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    #@2b
    move-result-object v2

    #@2c
    move/from16 v4, p2

    #@2e
    move/from16 v6, p5

    #@30
    move/from16 v7, p6

    #@32
    move/from16 v8, p3

    #@34
    move-object/from16 v9, p12

    #@36
    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 193
    :goto_0
    return-void

    #@3a
    .line 209
    :catch_0
    move-exception v11

    #@3b
    .line 210
    .local v11, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGattServer"

    #@3e
    const-string/jumbo v4, "Unhandled exception in callback"

    #@41
    invoke-static {v2, v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    goto :goto_0
.end method

.method public onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "isLong"    # Z
    .param p5, "srvcType"    # I
    .param p6, "srvcInstId"    # I
    .param p7, "srvcId"    # Landroid/os/ParcelUuid;
    .param p8, "charInstId"    # I
    .param p9, "charId"    # Landroid/os/ParcelUuid;
    .param p10, "descrId"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 162
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@3
    move-result-object v9

    #@4
    .line 163
    .local v9, "srvcUuid":Ljava/util/UUID;
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@7
    move-result-object v2

    #@8
    .line 164
    .local v2, "charUuid":Ljava/util/UUID;
    invoke-virtual/range {p10 .. p10}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@b
    move-result-object v4

    #@c
    .line 169
    .local v4, "descrUuid":Ljava/util/UUID;
    iget-object v10, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@e
    invoke-static {v10}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    #@11
    move-result-object v10

    #@12
    invoke-virtual {v10, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@15
    move-result-object v6

    #@16
    .line 170
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v10, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@18
    move/from16 v0, p6

    #@1a
    move/from16 v1, p5

    #@1c
    invoke-virtual {v10, v9, v0, v1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@1f
    move-result-object v8

    #@20
    .line 171
    .local v8, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v8, :cond_0

    #@22
    return-void

    #@23
    .line 173
    :cond_0
    invoke-virtual {v8, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@26
    move-result-object v3

    #@27
    .line 174
    .local v3, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v3, :cond_1

    #@29
    return-void

    #@2a
    .line 176
    :cond_1
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    #@2d
    move-result-object v5

    #@2e
    .line 177
    .local v5, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v5, :cond_2

    #@30
    return-void

    #@31
    .line 180
    :cond_2
    :try_start_0
    iget-object v10, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@33
    invoke-static {v10}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    #@36
    move-result-object v10

    #@37
    invoke-virtual {v10, v6, p2, p3, v5}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 161
    :goto_0
    return-void

    #@3b
    .line 181
    :catch_0
    move-exception v7

    #@3c
    .line 182
    .local v7, "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "BluetoothGattServer"

    #@3f
    const-string/jumbo v11, "Unhandled exception in callback"

    #@42
    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    goto :goto_0
.end method

.method public onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V
    .locals 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "isPrep"    # Z
    .param p6, "needRsp"    # Z
    .param p7, "srvcType"    # I
    .param p8, "srvcInstId"    # I
    .param p9, "srvcId"    # Landroid/os/ParcelUuid;
    .param p10, "charInstId"    # I
    .param p11, "charId"    # Landroid/os/ParcelUuid;
    .param p12, "descrId"    # Landroid/os/ParcelUuid;
    .param p13, "value"    # [B

    #@0
    .prologue
    .line 224
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@3
    move-result-object v15

    #@4
    .line 225
    .local v15, "srvcUuid":Ljava/util/UUID;
    invoke-virtual/range {p11 .. p11}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@7
    move-result-object v10

    #@8
    .line 226
    .local v10, "charUuid":Ljava/util/UUID;
    invoke-virtual/range {p12 .. p12}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@b
    move-result-object v12

    #@c
    .line 231
    .local v12, "descrUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    #@e
    iget-object v2, v0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@10
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    #@13
    move-result-object v2

    #@14
    move-object/from16 v0, p1

    #@16
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@19
    move-result-object v3

    #@1a
    .line 233
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    #@1c
    iget-object v2, v0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@1e
    move/from16 v0, p8

    #@20
    move/from16 v1, p7

    #@22
    invoke-virtual {v2, v15, v0, v1}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@25
    move-result-object v14

    #@26
    .line 234
    .local v14, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v14, :cond_0

    #@28
    return-void

    #@29
    .line 236
    :cond_0
    invoke-virtual {v14, v10}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@2c
    move-result-object v11

    #@2d
    .line 237
    .local v11, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v11, :cond_1

    #@2f
    return-void

    #@30
    .line 239
    :cond_1
    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    #@33
    move-result-object v5

    #@34
    .line 240
    .local v5, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v5, :cond_2

    #@36
    return-void

    #@37
    .line 243
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    #@39
    iget-object v2, v0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@3b
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    #@3e
    move-result-object v2

    #@3f
    move/from16 v4, p2

    #@41
    move/from16 v6, p5

    #@43
    move/from16 v7, p6

    #@45
    move/from16 v8, p3

    #@47
    move-object/from16 v9, p13

    #@49
    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 223
    :goto_0
    return-void

    #@4d
    .line 245
    :catch_0
    move-exception v13

    #@4e
    .line 246
    .local v13, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGattServer"

    #@51
    const-string/jumbo v4, "Unhandled exception in callback"

    #@54
    invoke-static {v2, v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    goto :goto_0
.end method

.method public onExecuteWrite(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transId"    # I
    .param p3, "execWrite"    # Z

    #@0
    .prologue
    .line 256
    const-string/jumbo v2, "BluetoothGattServer"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "onExecuteWrite() - device="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    .line 257
    const-string/jumbo v4, ", transId="

    #@16
    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    .line 258
    const-string/jumbo v4, "execWrite="

    #@21
    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 260
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@32
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@39
    move-result-object v0

    #@3a
    .line 261
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    #@3c
    return-void

    #@3d
    .line 264
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@3f
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, v0, p2, p3}, Landroid/bluetooth/BluetoothGattServerCallback;->onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 255
    :goto_0
    return-void

    #@47
    .line 265
    :catch_0
    move-exception v1

    #@48
    .line 266
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGattServer"

    #@4b
    const-string/jumbo v3, "Unhandled exception in callback"

    #@4e
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    goto :goto_0
.end method

.method public onMtuChanged(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    #@0
    .prologue
    .line 293
    const-string/jumbo v2, "BluetoothGattServer"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "onMtuChanged() - device="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    .line 294
    const-string/jumbo v4, ", mtu="

    #@16
    .line 293
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 296
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@27
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@2e
    move-result-object v0

    #@2f
    .line 297
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    #@31
    return-void

    #@32
    .line 300
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@34
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, v0, p2}, Landroid/bluetooth/BluetoothGattServerCallback;->onMtuChanged(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 292
    :goto_0
    return-void

    #@3c
    .line 301
    :catch_0
    move-exception v1

    #@3d
    .line 302
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGattServer"

    #@40
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "Unhandled exception: "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    goto :goto_0
.end method

.method public onNotificationSent(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 278
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@2
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@9
    move-result-object v0

    #@a
    .line 279
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    #@c
    return-void

    #@d
    .line 282
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@f
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v0, p2}, Landroid/bluetooth/BluetoothGattServerCallback;->onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 274
    :goto_0
    return-void

    #@17
    .line 283
    :catch_0
    move-exception v1

    #@18
    .line 284
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGattServer"

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Unhandled exception: "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    goto :goto_0
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "advData"    # [B

    #@0
    .prologue
    .line 86
    return-void
.end method

.method public onServerConnectionState(IIZLjava/lang/String;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    const-string/jumbo v1, "BluetoothGattServer"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "onServerConnectionState() - status="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    .line 98
    const-string/jumbo v3, " serverIf="

    #@16
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 98
    const-string/jumbo v3, " device="

    #@21
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@32
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    #@35
    move-result-object v2

    #@36
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@38
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    #@3f
    move-result-object v3

    #@40
    .line 101
    if-eqz p3, :cond_0

    #@42
    const/4 v1, 0x2

    #@43
    .line 100
    :goto_0
    invoke-virtual {v2, v3, p1, v1}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 96
    :goto_1
    return-void

    #@47
    .line 102
    :cond_0
    const/4 v1, 0x0

    #@48
    goto :goto_0

    #@49
    .line 103
    :catch_0
    move-exception v0

    #@4a
    .line 104
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothGattServer"

    #@4d
    const-string/jumbo v2, "Unhandled exception in callback"

    #@50
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_1
.end method

.method public onServerRegistered(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "BluetoothGattServer"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "onServerRegistered() - status="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 70
    const-string/jumbo v2, " serverIf="

    #@16
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 71
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@27
    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-get2(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    monitor-enter v1

    #@2c
    .line 72
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@2e
    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    #@31
    move-result-object v0

    #@32
    if-eqz v0, :cond_0

    #@34
    .line 73
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@36
    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothGattServer;->-set0(Landroid/bluetooth/BluetoothGattServer;I)I

    #@39
    .line 74
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@3b
    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-get2(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    :goto_0
    monitor-exit v1

    #@43
    .line 68
    return-void

    #@44
    .line 77
    :cond_0
    :try_start_1
    const-string/jumbo v0, "BluetoothGattServer"

    #@47
    const-string/jumbo v2, "onServerRegistered: mCallback is null"

    #@4a
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 71
    :catchall_0
    move-exception v0

    #@4f
    monitor-exit v1

    #@50
    throw v0
.end method

.method public onServiceAdded(IIILandroid/os/ParcelUuid;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 114
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@3
    move-result-object v2

    #@4
    .line 115
    .local v2, "srvcUuid":Ljava/util/UUID;
    const-string/jumbo v3, "BluetoothGattServer"

    #@7
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "onServiceAdded() - service="

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    .line 116
    const-string/jumbo v5, "status="

    #@1a
    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 118
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@2b
    invoke-virtual {v3, v2, p3, p2}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@2e
    move-result-object v1

    #@2f
    .line 119
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v1, :cond_0

    #@31
    return-void

    #@32
    .line 122
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    #@34
    invoke-static {v3}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p1, v1}, Landroid/bluetooth/BluetoothGattServerCallback;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 113
    :goto_0
    return-void

    #@3c
    .line 123
    :catch_0
    move-exception v0

    #@3d
    .line 124
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothGattServer"

    #@40
    const-string/jumbo v4, "Unhandled exception in callback"

    #@43
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@46
    goto :goto_0
.end method
