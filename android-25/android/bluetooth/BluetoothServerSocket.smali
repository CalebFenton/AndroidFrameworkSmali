.class public final Landroid/bluetooth/BluetoothServerSocket;
.super Ljava/lang/Object;
.source "BluetoothServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothServerSocket"


# instance fields
.field private mChannel:I

.field private mHandler:Landroid/os/Handler;

.field private mMessage:I

.field final mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(IZZI)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 87
    iput p4, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    #@6
    .line 88
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    #@8
    const/4 v2, -0x1

    #@9
    move v1, p1

    #@a
    move v3, p2

    #@b
    move v4, p3

    #@c
    move v6, p4

    #@d
    move-object v7, v5

    #@e
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    #@11
    iput-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@13
    .line 89
    const/4 v0, -0x2

    #@14
    if-ne p4, v0, :cond_0

    #@16
    .line 90
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@18
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothSocket;->setExcludeSdp(Z)V

    #@1c
    .line 86
    :cond_0
    return-void
.end method

.method constructor <init>(IZZIZZ)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .param p5, "mitm"    # Z
    .param p6, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 108
    iput p4, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    #@5
    .line 109
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    #@7
    const/4 v2, -0x1

    #@8
    const/4 v5, 0x0

    #@9
    const/4 v7, 0x0

    #@a
    move v1, p1

    #@b
    move v3, p2

    #@c
    move v4, p3

    #@d
    move v6, p4

    #@e
    move v8, p5

    #@f
    move/from16 v9, p6

    #@11
    invoke-direct/range {v0 .. v9}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;ZZ)V

    #@14
    iput-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@16
    .line 111
    const/4 v0, -0x2

    #@17
    if-ne p4, v0, :cond_0

    #@19
    .line 112
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@1b
    const/4 v1, 0x1

    #@1c
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothSocket;->setExcludeSdp(Z)V

    #@1f
    .line 107
    :cond_0
    return-void
.end method

.method constructor <init>(IZZLandroid/os/ParcelUuid;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 127
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    #@6
    const/4 v5, 0x0

    #@7
    move v1, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    move v6, v2

    #@b
    move-object v7, p4

    #@c
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    #@f
    iput-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@11
    .line 129
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@13
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    #@19
    .line 126
    return-void
.end method


# virtual methods
.method public accept()Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothServerSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@2
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    monitor-enter p0

    #@1
    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 171
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    #@7
    iget v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit p0

    #@11
    .line 174
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@13
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    #@16
    .line 168
    return-void

    #@17
    .line 169
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public getChannel()I
    .locals 1

    #@0
    .prologue
    .line 190
    iget v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    #@2
    return v0
.end method

.method setChannel(I)V
    .locals 3
    .param p1, "newChannel"    # I

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 203
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    #@9
    move-result v0

    #@a
    if-eq v0, p1, :cond_0

    #@c
    .line 204
    const-string/jumbo v0, "BluetoothServerSocket"

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "The port set is different that the underlying port. mSocket.getPort(): "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 205
    iget-object v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@1d
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    #@20
    move-result v2

    #@21
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 205
    const-string/jumbo v2, " requested newChannel: "

    #@28
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 208
    :cond_0
    iput p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    #@39
    .line 197
    return-void
.end method

.method declared-synchronized setCloseHandler(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 178
    :try_start_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    #@3
    .line 179
    iput p2, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 177
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method setServiceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "ServiceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@2
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->setServiceName(Ljava/lang/String;)V

    #@5
    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 214
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ServerSocket: Type: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 215
    iget-object v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    #@d
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    #@10
    move-result v1

    #@11
    packed-switch v1, :pswitch_data_0

    #@14
    .line 232
    :goto_0
    const-string/jumbo v1, " Channel: "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 218
    :pswitch_0
    const-string/jumbo v1, "TYPE_RFCOMM"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    goto :goto_0

    #@2c
    .line 223
    :pswitch_1
    const-string/jumbo v1, "TYPE_L2CAP"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    goto :goto_0

    #@33
    .line 228
    :pswitch_2
    const-string/jumbo v1, "TYPE_SCO"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    goto :goto_0

    #@3a
    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
