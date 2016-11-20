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
    .line 134
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Ljava/lang/String;II[B)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 252
    const-string/jumbo v3, "BluetoothGatt"

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "onCharacteristicRead() - Device="

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    .line 253
    const-string/jumbo v5, " handle="

    #@17
    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 253
    const-string/jumbo v5, " Status="

    #@22
    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 255
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@33
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v3

    #@3f
    if-nez v3, :cond_0

    #@41
    .line 256
    return-void

    #@42
    .line 259
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@44
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@47
    move-result-object v4

    #@48
    monitor-enter v4

    #@49
    .line 260
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@4b
    const/4 v5, 0x0

    #@4c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4f
    move-result-object v5

    #@50
    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    monitor-exit v4

    #@54
    .line 263
    const/4 v3, 0x5

    #@55
    if-eq p2, v3, :cond_1

    #@57
    .line 264
    const/16 v3, 0xf

    #@59
    if-ne p2, v3, :cond_2

    #@5b
    .line 265
    :cond_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@5d
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    #@60
    move-result v3

    #@61
    if-nez v3, :cond_2

    #@63
    .line 267
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@65
    const/4 v4, 0x1

    #@66
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@69
    .line 268
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@6b
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    #@6e
    move-result-object v3

    #@6f
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@71
    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    #@74
    move-result v4

    #@75
    const/4 v5, 0x2

    #@76
    invoke-interface {v3, v4, p1, p3, v5}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@79
    .line 269
    return-void

    #@7a
    .line 259
    :catchall_0
    move-exception v3

    #@7b
    monitor-exit v4

    #@7c
    throw v3

    #@7d
    .line 270
    :catch_0
    move-exception v1

    #@7e
    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothGatt"

    #@81
    const-string/jumbo v4, ""

    #@84
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@87
    .line 275
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@89
    invoke-static {v3, v6}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@8c
    .line 277
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@8e
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@90
    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v3, v4, p3}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@97
    move-result-object v0

    #@98
    .line 278
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_3

    #@9a
    .line 279
    const-string/jumbo v3, "BluetoothGatt"

    #@9d
    const-string/jumbo v4, "onCharacteristicRead() failed to find characteristic!"

    #@a0
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 280
    return-void

    #@a4
    .line 283
    :cond_3
    if-nez p2, :cond_4

    #@a6
    invoke-virtual {v0, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    #@a9
    .line 286
    :cond_4
    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@ab
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@ae
    move-result-object v3

    #@af
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@b1
    invoke-virtual {v3, v4, v0, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@b4
    .line 248
    :goto_0
    return-void

    #@b5
    .line 287
    :catch_1
    move-exception v2

    #@b6
    .line 288
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothGatt"

    #@b9
    const-string/jumbo v4, "Unhandled exception in callback"

    #@bc
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@bf
    goto :goto_0
.end method

.method public onCharacteristicWrite(Ljava/lang/String;II)V
    .locals 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 301
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@3
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 302
    return-void

    #@12
    .line 305
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@14
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@17
    move-result-object v1

    #@18
    monitor-enter v1

    #@19
    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v1

    #@24
    .line 309
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@26
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@28
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@2f
    move-result-object v7

    #@30
    .line 310
    .local v7, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v7, :cond_1

    #@32
    return-void

    #@33
    .line 305
    .end local v7    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catchall_0
    move-exception v0

    #@34
    monitor-exit v1

    #@35
    throw v0

    #@36
    .line 312
    .restart local v7    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    const/4 v0, 0x5

    #@37
    if-eq p2, v0, :cond_2

    #@39
    .line 313
    const/16 v0, 0xf

    #@3b
    if-ne p2, v0, :cond_3

    #@3d
    .line 314
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@3f
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_3

    #@45
    .line 316
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@47
    const/4 v1, 0x1

    #@48
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@4b
    .line 317
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@4d
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    #@50
    move-result-object v0

    #@51
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@53
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    #@56
    move-result v1

    #@57
    .line 318
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    #@5a
    move-result v4

    #@5b
    .line 319
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    #@5e
    move-result-object v6

    #@5f
    .line 318
    const/4 v5, 0x2

    #@60
    move-object v2, p1

    #@61
    move v3, p3

    #@62
    .line 317
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;III[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@65
    .line 320
    return-void

    #@66
    .line 321
    :catch_0
    move-exception v8

    #@67
    .line 322
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    #@6a
    const-string/jumbo v1, ""

    #@6d
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@70
    .line 326
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@72
    invoke-static {v0, v10}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@75
    .line 329
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@77
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@7a
    move-result-object v0

    #@7b
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@7d
    invoke-virtual {v0, v1, v7, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@80
    .line 297
    :goto_0
    return-void

    #@81
    .line 330
    :catch_1
    move-exception v9

    #@82
    .line 331
    .local v9, "ex":Ljava/lang/Exception;
    const-string/jumbo v0, "BluetoothGatt"

    #@85
    const-string/jumbo v1, "Unhandled exception in callback"

    #@88
    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8b
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
    .line 172
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
    .line 173
    const-string/jumbo v4, " clientIf="

    #@16
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    .line 173
    const-string/jumbo v4, " device="

    #@21
    .line 172
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
    .line 174
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
    .line 175
    return-void

    #@41
    .line 177
    :cond_0
    if-eqz p3, :cond_1

    #@43
    const/4 v1, 0x2

    #@44
    .line 180
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
    .line 185
    :goto_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@51
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get8(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    #@54
    move-result-object v3

    #@55
    monitor-enter v3

    #@56
    .line 186
    if-eqz p3, :cond_2

    #@58
    .line 187
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
    .line 193
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@61
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@64
    move-result-object v3

    #@65
    monitor-enter v3

    #@66
    .line 194
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
    .line 171
    return-void

    #@72
    .line 178
    .end local v1    # "profileState":I
    :cond_1
    const/4 v1, 0x0

    #@73
    .restart local v1    # "profileState":I
    goto :goto_0

    #@74
    .line 181
    :catch_0
    move-exception v0

    #@75
    .line 182
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGatt"

    #@78
    const-string/jumbo v3, "Unhandled exception in callback"

    #@7b
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7e
    goto :goto_1

    #@7f
    .line 189
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
    .line 185
    :catchall_0
    move-exception v2

    #@87
    monitor-exit v3

    #@88
    throw v2

    #@89
    .line 193
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
    .line 140
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
    .line 141
    const-string/jumbo v4, " clientIf="

    #@17
    .line 140
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
    .line 149
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@28
    invoke-static {v2, p2}, Landroid/bluetooth/BluetoothGatt;->-set1(Landroid/bluetooth/BluetoothGatt;I)I

    #@2b
    .line 150
    if-eqz p1, :cond_0

    #@2d
    .line 151
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
    .line 153
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@3c
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get8(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    monitor-enter v2

    #@41
    .line 154
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
    .line 156
    return-void

    #@49
    .line 153
    :catchall_0
    move-exception v1

    #@4a
    monitor-exit v2

    #@4b
    throw v1

    #@4c
    .line 159
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
    .line 160
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
    .line 159
    invoke-interface {v2, v3, v4, v1, v5}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@73
    .line 139
    :goto_1
    return-void

    #@74
    .line 160
    :cond_1
    const/4 v1, 0x1

    #@75
    goto :goto_0

    #@76
    .line 161
    :catch_0
    move-exception v0

    #@77
    .line 162
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
    .line 485
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
    .line 486
    const-string/jumbo v3, " mtu="

    #@16
    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 486
    const-string/jumbo v3, " status="

    #@21
    .line 485
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
    .line 487
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
    .line 488
    return-void

    #@41
    .line 491
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
    .line 484
    :goto_0
    return-void

    #@4d
    .line 492
    :catch_0
    move-exception v0

    #@4e
    .line 493
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothGatt"

    #@51
    const-string/jumbo v2, "Unhandled exception in callback"

    #@54
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    goto :goto_0
.end method

.method public onDescriptorRead(Ljava/lang/String;II[B)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I
    .param p4, "value"    # [B

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 366
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@3
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 367
    return-void

    #@12
    .line 370
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@14
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@17
    move-result-object v4

    #@18
    monitor-enter v4

    #@19
    .line 371
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1f
    move-result-object v5

    #@20
    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v4

    #@24
    .line 374
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@26
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@28
    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v3, v4, p3}, Landroid/bluetooth/BluetoothGatt;->getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;

    #@2f
    move-result-object v0

    #@30
    .line 375
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v0, :cond_1

    #@32
    return-void

    #@33
    .line 370
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :catchall_0
    move-exception v3

    #@34
    monitor-exit v4

    #@35
    throw v3

    #@36
    .line 377
    .restart local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    if-nez p2, :cond_2

    #@38
    invoke-virtual {v0, p4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    #@3b
    .line 379
    :cond_2
    const/4 v3, 0x5

    #@3c
    if-eq p2, v3, :cond_3

    #@3e
    .line 380
    const/16 v3, 0xf

    #@40
    if-ne p2, v3, :cond_4

    #@42
    .line 381
    :cond_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@44
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    #@47
    move-result v3

    #@48
    if-nez v3, :cond_4

    #@4a
    .line 383
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@4c
    const/4 v4, 0x1

    #@4d
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@50
    .line 384
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@52
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    #@55
    move-result-object v3

    #@56
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@58
    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    #@5b
    move-result v4

    #@5c
    const/4 v5, 0x2

    #@5d
    invoke-interface {v3, v4, p1, p3, v5}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@60
    .line 385
    return-void

    #@61
    .line 386
    :catch_0
    move-exception v1

    #@62
    .line 387
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothGatt"

    #@65
    const-string/jumbo v4, ""

    #@68
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b
    .line 391
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@6d
    invoke-static {v3, v6}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@70
    .line 394
    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@72
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@75
    move-result-object v3

    #@76
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@78
    invoke-virtual {v3, v4, v0, p2}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@7b
    .line 363
    :goto_0
    return-void

    #@7c
    .line 395
    :catch_1
    move-exception v2

    #@7d
    .line 396
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothGatt"

    #@80
    const-string/jumbo v4, "Unhandled exception in callback"

    #@83
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@86
    goto :goto_0
.end method

.method public onDescriptorWrite(Ljava/lang/String;II)V
    .locals 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "handle"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 407
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@3
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 408
    return-void

    #@12
    .line 411
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@14
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@17
    move-result-object v1

    #@18
    monitor-enter v1

    #@19
    .line 412
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothGatt;->-set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v1

    #@24
    .line 415
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@26
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@28
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/BluetoothGatt;->getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;

    #@2f
    move-result-object v7

    #@30
    .line 416
    .local v7, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v7, :cond_1

    #@32
    return-void

    #@33
    .line 411
    .end local v7    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :catchall_0
    move-exception v0

    #@34
    monitor-exit v1

    #@35
    throw v0

    #@36
    .line 418
    .restart local v7    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    const/4 v0, 0x5

    #@37
    if-eq p2, v0, :cond_2

    #@39
    .line 419
    const/16 v0, 0xf

    #@3b
    if-ne p2, v0, :cond_3

    #@3d
    .line 420
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@3f
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get0(Landroid/bluetooth/BluetoothGatt;)Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_3

    #@45
    .line 422
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@47
    const/4 v1, 0x1

    #@48
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@4b
    .line 423
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@4d
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get6(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    #@50
    move-result-object v0

    #@51
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@53
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get3(Landroid/bluetooth/BluetoothGatt;)I

    #@56
    move-result v1

    #@57
    .line 425
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    #@5a
    move-result-object v6

    #@5b
    .line 424
    const/4 v4, 0x2

    #@5c
    .line 425
    const/4 v5, 0x2

    #@5d
    move-object v2, p1

    #@5e
    move v3, p3

    #@5f
    .line 423
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;III[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@62
    .line 426
    return-void

    #@63
    .line 427
    :catch_0
    move-exception v8

    #@64
    .line 428
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    #@67
    const-string/jumbo v1, ""

    #@6a
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    .line 432
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@6f
    invoke-static {v0, v10}, Landroid/bluetooth/BluetoothGatt;->-set0(Landroid/bluetooth/BluetoothGatt;Z)Z

    #@72
    .line 435
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@74
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@77
    move-result-object v0

    #@78
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@7a
    invoke-virtual {v0, v1, v7, p2}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@7d
    .line 404
    :goto_0
    return-void

    #@7e
    .line 436
    :catch_1
    move-exception v9

    #@7f
    .line 437
    .local v9, "ex":Ljava/lang/Exception;
    const-string/jumbo v0, "BluetoothGatt"

    #@82
    const-string/jumbo v1, "Unhandled exception in callback"

    #@85
    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@88
    goto :goto_0
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 448
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
    .line 449
    return-void

    #@11
    .line 452
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@13
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->-get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    #@16
    move-result-object v2

    #@17
    monitor-enter v2

    #@18
    .line 453
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
    .line 457
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
    .line 445
    :goto_0
    return-void

    #@2f
    .line 452
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v2

    #@31
    throw v1

    #@32
    .line 458
    :catch_0
    move-exception v0

    #@33
    .line 459
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothGatt"

    #@36
    const-string/jumbo v2, "Unhandled exception in callback"

    #@39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    goto :goto_0
.end method

.method public onNotify(Ljava/lang/String;I[B)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "value"    # [B

    #@0
    .prologue
    .line 343
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
    .line 344
    return-void

    #@11
    .line 347
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@13
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@15
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v2, v3, p2}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    #@1c
    move-result-object v0

    #@1d
    .line 348
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_1

    #@1f
    return-void

    #@20
    .line 350
    :cond_1
    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    #@23
    .line 353
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@25
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@28
    move-result-object v2

    #@29
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2b
    invoke-virtual {v2, v3, v0}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 340
    :goto_0
    return-void

    #@2f
    .line 354
    :catch_0
    move-exception v1

    #@30
    .line 355
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "BluetoothGatt"

    #@33
    const-string/jumbo v3, "Unhandled exception in callback"

    #@36
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    #@0
    .prologue
    .line 470
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
    .line 471
    return-void

    #@11
    .line 474
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
    .line 467
    :goto_0
    return-void

    #@1d
    .line 475
    :catch_0
    move-exception v0

    #@1e
    .line 476
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "BluetoothGatt"

    #@21
    const-string/jumbo v2, "Unhandled exception in callback"

    #@24
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method

.method public onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V
    .locals 15
    .param p1, "address"    # Ljava/lang/String;
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 207
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    const-string/jumbo v10, "BluetoothGatt"

    #@3
    new-instance v11, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v12, "onSearchComplete() = Device="

    #@b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v11

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v11

    #@15
    const-string/jumbo v12, " Status="

    #@18
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v11

    #@1c
    move/from16 v0, p3

    #@1e
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v11

    #@22
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v11

    #@26
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 208
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@2b
    invoke-static {v10}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@2e
    move-result-object v10

    #@2f
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@32
    move-result-object v10

    #@33
    move-object/from16 v0, p1

    #@35
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v10

    #@39
    if-nez v10, :cond_0

    #@3b
    .line 209
    return-void

    #@3c
    .line 212
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v9

    #@40
    .local v9, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v10

    #@44
    if-eqz v10, :cond_1

    #@46
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v8

    #@4a
    check-cast v8, Landroid/bluetooth/BluetoothGattService;

    #@4c
    .line 214
    .local v8, "s":Landroid/bluetooth/BluetoothGattService;
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@4e
    invoke-static {v10}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@51
    move-result-object v10

    #@52
    invoke-virtual {v8, v10}, Landroid/bluetooth/BluetoothGattService;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    #@55
    goto :goto_0

    #@56
    .line 217
    .end local v8    # "s":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@58
    invoke-static {v10}, Landroid/bluetooth/BluetoothGatt;->-get7(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;

    #@5b
    move-result-object v10

    #@5c
    move-object/from16 v0, p2

    #@5e
    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@61
    .line 220
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@63
    invoke-static {v10}, Landroid/bluetooth/BluetoothGatt;->-get7(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;

    #@66
    move-result-object v10

    #@67
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v5

    #@6b
    .local v5, "fixedService$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v10

    #@6f
    if-eqz v10, :cond_4

    #@71
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v4

    #@75
    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    #@77
    .line 222
    .local v4, "fixedService":Landroid/bluetooth/BluetoothGattService;
    new-instance v7, Ljava/util/ArrayList;

    #@79
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    #@7c
    move-result-object v10

    #@7d
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@80
    .line 223
    .local v7, "includedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    #@83
    move-result-object v10

    #@84
    invoke-interface {v10}, Ljava/util/List;->clear()V

    #@87
    .line 225
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8a
    move-result-object v2

    #@8b
    .local v2, "brokenRef$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@8e
    move-result v10

    #@8f
    if-eqz v10, :cond_2

    #@91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@94
    move-result-object v1

    #@95
    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    #@97
    .line 226
    .local v1, "brokenRef":Landroid/bluetooth/BluetoothGattService;
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@99
    iget-object v11, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@9b
    invoke-static {v11}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    #@9e
    move-result-object v11

    #@9f
    .line 227
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    #@a2
    move-result-object v12

    #@a3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    #@a6
    move-result v13

    #@a7
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    #@aa
    move-result v14

    #@ab
    .line 226
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    #@ae
    move-result-object v6

    #@af
    .line 228
    .local v6, "includedService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v6, :cond_3

    #@b1
    .line 229
    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothGattService;->addIncludedService(Landroid/bluetooth/BluetoothGattService;)V

    #@b4
    goto :goto_1

    #@b5
    .line 231
    :cond_3
    const-string/jumbo v10, "BluetoothGatt"

    #@b8
    const-string/jumbo v11, "Broken GATT database: can\'t find included service."

    #@bb
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    goto :goto_1

    #@bf
    .line 237
    .end local v1    # "brokenRef":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "brokenRef$iterator":Ljava/util/Iterator;
    .end local v4    # "fixedService":Landroid/bluetooth/BluetoothGattService;
    .end local v6    # "includedService":Landroid/bluetooth/BluetoothGattService;
    .end local v7    # "includedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_4
    :try_start_0
    iget-object v10, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@c1
    invoke-static {v10}, Landroid/bluetooth/BluetoothGatt;->-get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    #@c4
    move-result-object v10

    #@c5
    iget-object v11, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    #@c7
    move/from16 v0, p3

    #@c9
    invoke-virtual {v10, v11, v0}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@cc
    .line 206
    :goto_2
    return-void

    #@cd
    .line 238
    :catch_0
    move-exception v3

    #@ce
    .line 239
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "BluetoothGatt"

    #@d1
    const-string/jumbo v11, "Unhandled exception in callback"

    #@d4
    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d7
    goto :goto_2
.end method
