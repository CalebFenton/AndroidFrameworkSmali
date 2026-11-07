.class public final Landroid/bluetooth/BluetoothServerSocket;
.super Ljava/lang/Object;
.source "BluetoothServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mChannel:I

.field final greylist mSocket:Landroid/bluetooth/BluetoothSocket;

.field private blacklist mSocketCreationLatencyMillis:J

.field private blacklist mSocketCreationTimeMillis:J

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 74
    const-class v0, Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothServerSocket;->TAG:Ljava/lang/String;

    .line 76
    sget-object v0, Landroid/bluetooth/BluetoothServerSocket;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothServerSocket;->DBG:Z

    return-void
.end method

.method constructor blacklist <init>(IZZI)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    .line 84
    iput-wide v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationLatencyMillis:J

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    .line 102
    iput p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mType:I

    .line 103
    iput p4, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 104
    new-instance v2, Landroid/bluetooth/BluetoothSocket;

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "type":I
    .end local p2    # "auth":Z
    .end local p3    # "encrypt":Z
    .end local p4    # "port":I
    .local v3, "type":I
    .local v4, "auth":Z
    .local v5, "encrypt":Z
    .local v6, "port":I
    invoke-direct/range {v2 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IZZILandroid/os/ParcelUuid;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 105
    const/4 p1, -0x2

    if-ne v6, p1, :cond_28

    .line 106
    iget-object p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothSocket;->setExcludeSdp(Z)V

    .line 108
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationLatencyMillis:J

    .line 109
    return-void
.end method

.method constructor blacklist <init>(IZZILandroid/os/ParcelUuid;ZZILjava/lang/String;JJI)V
    .registers 31
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .param p5, "uuid"    # Landroid/os/ParcelUuid;
    .param p6, "pitm"    # Z
    .param p7, "min16DigitPin"    # Z
    .param p8, "dataPath"    # I
    .param p9, "socketName"    # Ljava/lang/String;
    .param p10, "hubId"    # J
    .param p12, "endpointId"    # J
    .param p14, "maximumPacketSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    move-object/from16 v0, p0

    move/from16 v5, p4

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    .line 84
    iput-wide v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationLatencyMillis:J

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    .line 186
    move/from16 v2, p1

    iput v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mType:I

    .line 187
    iput v5, v0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 188
    new-instance v1, Landroid/bluetooth/BluetoothSocket;

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Landroid/bluetooth/BluetoothSocket;-><init>(IZZILandroid/os/ParcelUuid;ZZILjava/lang/String;JJI)V

    iput-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 202
    const/4 v1, -0x2

    if-ne v5, v1, :cond_3d

    .line 203
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothSocket;->setExcludeSdp(Z)V

    .line 205
    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationLatencyMillis:J

    .line 206
    return-void
.end method

.method constructor blacklist <init>(IZZIZZ)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .param p5, "pitm"    # Z
    .param p6, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    .line 84
    iput-wide v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationLatencyMillis:J

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    .line 126
    iput p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mType:I

    .line 127
    iput p4, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 128
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IZZILandroid/os/ParcelUuid;ZZ)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 129
    const/4 v0, -0x2

    if-ne p4, v0, :cond_2a

    .line 130
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothSocket;->setExcludeSdp(Z)V

    .line 132
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationLatencyMillis:J

    .line 133
    return-void
.end method

.method constructor blacklist <init>(IZZLandroid/os/ParcelUuid;)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    .line 84
    iput-wide v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationLatencyMillis:J

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    .line 147
    iput p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mType:I

    .line 148
    new-instance v2, Landroid/bluetooth/BluetoothSocket;

    const/4 v6, -0x1

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    .end local p1    # "type":I
    .end local p2    # "auth":Z
    .end local p3    # "encrypt":Z
    .end local p4    # "uuid":Landroid/os/ParcelUuid;
    .local v3, "type":I
    .local v4, "auth":Z
    .local v5, "encrypt":Z
    .local v7, "uuid":Landroid/os/ParcelUuid;
    invoke-direct/range {v2 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IZZILandroid/os/ParcelUuid;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 150
    iget-object p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result p1

    iput p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationLatencyMillis:J

    .line 152
    return-void
.end method


# virtual methods
.method public whitelist accept()Landroid/bluetooth/BluetoothSocket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothServerSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist accept(I)Landroid/bluetooth/BluetoothSocket;
    .registers 15
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 238
    .local v10, "socketConnectionTime":J
    const/4 v1, 0x0

    .line 240
    .local v1, "acceptedSocket":Landroid/bluetooth/BluetoothSocket;
    :try_start_5
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    move-object v1, v0

    .line 241
    iget-object v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    iget v3, p0, Landroid/bluetooth/BluetoothServerSocket;->mType:I

    iget v4, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    iget-wide v7, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_28

    move-wide v11, v10

    .end local v10    # "socketConnectionTime":J
    .local v11, "socketConnectionTime":J
    :try_start_15
    iget-wide v9, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationLatencyMillis:J
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_17} :catch_23

    const/4 v6, 0x1

    move v5, p1

    .end local p1    # "timeout":I
    .local v5, "timeout":I
    :try_start_19
    invoke-static/range {v1 .. v12}, Landroid/bluetooth/SocketMetrics;->logSocketAccept(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothSocket;IIIIJJJ)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1e

    move v4, v5

    .line 251
    .end local v5    # "timeout":I
    .local v4, "timeout":I
    return-object v1

    .line 252
    .end local v4    # "timeout":I
    .restart local v5    # "timeout":I
    :catch_1e
    move-exception v0

    move v4, v5

    move-object p1, v0

    move-object v0, v1

    .end local v5    # "timeout":I
    .restart local v4    # "timeout":I
    goto :goto_2d

    .end local v4    # "timeout":I
    .restart local p1    # "timeout":I
    :catch_23
    move-exception v0

    move v4, p1

    move-object p1, v0

    move-object v0, v1

    .end local p1    # "timeout":I
    .restart local v4    # "timeout":I
    goto :goto_2d

    .end local v4    # "timeout":I
    .end local v11    # "socketConnectionTime":J
    .restart local v10    # "socketConnectionTime":J
    .restart local p1    # "timeout":I
    :catch_28
    move-exception v0

    move v4, p1

    move-wide v11, v10

    move-object p1, v0

    move-object v0, v1

    .line 253
    .end local v1    # "acceptedSocket":Landroid/bluetooth/BluetoothSocket;
    .end local v10    # "socketConnectionTime":J
    .local v0, "acceptedSocket":Landroid/bluetooth/BluetoothSocket;
    .restart local v4    # "timeout":I
    .restart local v11    # "socketConnectionTime":J
    .local p1, "e":Ljava/io/IOException;
    :goto_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    iget v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mType:I

    iget v3, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    iget-wide v6, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationTimeMillis:J

    iget-wide v8, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocketCreationLatencyMillis:J

    const/16 v5, 0x7d0

    move-wide v10, v11

    .end local v11    # "socketConnectionTime":J
    .restart local v10    # "socketConnectionTime":J
    invoke-static/range {v0 .. v11}, Landroid/bluetooth/SocketMetrics;->logSocketAccept(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothSocket;IIIIJJJ)V

    .line 263
    move-wide v11, v10

    .end local v10    # "socketConnectionTime":J
    .restart local v11    # "socketConnectionTime":J
    throw p1
.end method

.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    sget-boolean v0, Landroid/bluetooth/BluetoothServerSocket;->DBG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Landroid/bluetooth/BluetoothServerSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothServerSocket:close() called. mChannel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1e
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 278
    return-void
.end method

.method public blacklist getChannel()I
    .registers 2

    .line 290
    iget v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return v0
.end method

.method public whitelist getPsm()I
    .registers 2

    .line 303
    iget v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return v0
.end method

.method blacklist setChannel(I)V
    .registers 5
    .param p1, "newChannel"    # I

    .line 315
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_34

    .line 316
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v0

    if-eq v0, p1, :cond_34

    .line 317
    sget-object v0, Landroid/bluetooth/BluetoothServerSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The port set is different that the underlying port. mSocket.getPort(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 320
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested newChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_34
    iput p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 326
    return-void
.end method

.method blacklist setServiceName(Ljava/lang/String;)V
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->setServiceName(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ServerSocket: Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    goto :goto_2c

    .line 345
    :pswitch_14
    const-string v1, "TYPE_L2CAP_LE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    goto :goto_2c

    .line 340
    :pswitch_1a
    const-string v1, "TYPE_L2CAP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    goto :goto_2c

    .line 350
    :pswitch_20
    const-string v1, "TYPE_SCO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 335
    :pswitch_26
    const-string v1, "TYPE_RFCOMM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    nop

    .line 354
    :goto_2c
    const-string v1, " Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_14
    .end packed-switch
.end method
