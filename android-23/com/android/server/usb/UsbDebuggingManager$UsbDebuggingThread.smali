.class Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
.super Ljava/lang/Thread;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingThread"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/server/usb/UsbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDebuggingManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDebuggingManager;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@2
    .line 81
    const-string/jumbo v0, "UsbDebuggingManager"

    #@5
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@8
    .line 80
    return-void
.end method

.method private closeSocketLocked()V
    .locals 5

    #@0
    .prologue
    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 159
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    #@6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    #@9
    .line 160
    const/4 v2, 0x0

    #@a
    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 167
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 168
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    #@12
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    #@15
    .line 169
    const/4 v2, 0x0

    #@16
    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@18
    .line 155
    :cond_1
    :goto_1
    return-void

    #@19
    .line 162
    :catch_0
    move-exception v0

    #@1a
    .line 163
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "UsbDebuggingManager"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "Failed closing output stream: "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    goto :goto_0

    #@35
    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@36
    .line 172
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v2, "UsbDebuggingManager"

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "Failed closing socket: "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    goto :goto_1
.end method

.method private listenToSocket()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    const/16 v4, 0x1000

    #@2
    :try_start_0
    new-array v0, v4, [B

    #@4
    .line 131
    .local v0, "buffer":[B
    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    #@6
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v1

    #@a
    .line 132
    .local v1, "count":I
    if-gez v1, :cond_0

    #@c
    .line 149
    :goto_1
    monitor-enter p0

    #@d
    .line 150
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@10
    monitor-exit p0

    #@11
    .line 127
    return-void

    #@12
    .line 136
    :cond_0
    const/4 v4, 0x0

    #@13
    :try_start_2
    aget-byte v4, v0, v4

    #@15
    const/16 v5, 0x50

    #@17
    if-ne v4, v5, :cond_1

    #@19
    const/4 v4, 0x1

    #@1a
    aget-byte v4, v0, v4

    #@1c
    const/16 v5, 0x4b

    #@1e
    if-ne v4, v5, :cond_1

    #@20
    .line 137
    new-instance v2, Ljava/lang/String;

    #@22
    const/4 v4, 0x2

    #@23
    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@26
    move-result-object v4

    #@27
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    #@2a
    .line 138
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "UsbDebuggingManager"

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "Received public key: "

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 139
    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@46
    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->-get2(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;

    #@49
    move-result-object v4

    #@4a
    const/4 v5, 0x5

    #@4b
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@4e
    move-result-object v3

    #@4f
    .line 140
    .local v3, "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@51
    .line 141
    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@53
    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->-get2(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5a
    goto :goto_0

    #@5b
    .line 148
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    #@5c
    .line 149
    monitor-enter p0

    #@5d
    .line 150
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@60
    monitor-exit p0

    #@61
    .line 148
    throw v4

    #@62
    .line 143
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    :cond_1
    :try_start_4
    const-string/jumbo v4, "UsbDebuggingManager"

    #@65
    new-instance v5, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v6, "Wrong message: "

    #@6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    .line 144
    new-instance v6, Ljava/lang/String;

    #@73
    const/4 v7, 0x0

    #@74
    const/4 v8, 0x2

    #@75
    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@78
    move-result-object v7

    #@79
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    #@7c
    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@87
    goto :goto_1

    #@88
    .line 149
    :catchall_1
    move-exception v4

    #@89
    monitor-exit p0

    #@8a
    throw v4

    #@8b
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catchall_2
    move-exception v4

    #@8c
    monitor-exit p0

    #@8d
    throw v4
.end method

.method private openSocketLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    #@2
    const-string/jumbo v2, "adbd"

    #@5
    .line 112
    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@7
    .line 111
    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    #@a
    .line 113
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v2, 0x0

    #@b
    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    #@d
    .line 116
    new-instance v2, Landroid/net/LocalSocket;

    #@f
    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    #@12
    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    #@14
    .line 117
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    #@16
    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    #@19
    .line 119
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    #@1b
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    #@21
    .line 120
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    #@23
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@26
    move-result-object v2

    #@27
    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 109
    return-void

    #@2a
    .line 121
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    #@2b
    .line 122
    .local v1, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V

    #@2e
    .line 123
    throw v1
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x3e8

    #@2
    .line 88
    :goto_0
    monitor-enter p0

    #@3
    .line 89
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 91
    return-void

    #@9
    .line 94
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->openSocketLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    :goto_1
    monitor-exit p0

    #@d
    .line 101
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->listenToSocket()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@10
    goto :goto_0

    #@11
    .line 102
    :catch_0
    move-exception v0

    #@12
    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    #@15
    goto :goto_0

    #@16
    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@17
    .line 97
    .restart local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x3e8

    #@19
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1c
    goto :goto_1

    #@1d
    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit p0

    #@1f
    throw v1
.end method

.method sendResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 185
    monitor-enter p0

    #@1
    .line 186
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 188
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    #@b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    :cond_0
    :goto_0
    monitor-exit p0

    #@13
    .line 184
    return-void

    #@14
    .line 190
    :catch_0
    move-exception v0

    #@15
    .line 191
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "UsbDebuggingManager"

    #@18
    const-string/jumbo v2, "Failed to write response:"

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 185
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@20
    monitor-exit p0

    #@21
    throw v1
.end method

.method stopListening()V
    .locals 1

    #@0
    .prologue
    .line 178
    monitor-enter p0

    #@1
    .line 179
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z

    #@4
    .line 180
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 177
    return-void

    #@9
    .line 178
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method
