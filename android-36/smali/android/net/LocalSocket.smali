.class public Landroid/net/LocalSocket;
.super Ljava/lang/Object;
.source "LocalSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final whitelist SOCKET_DGRAM:I = 0x1

.field public static final whitelist SOCKET_SEQPACKET:I = 0x3

.field public static final whitelist SOCKET_STREAM:I = 0x2

.field static final greylist-max-o SOCKET_UNKNOWN:I


# instance fields
.field private final greylist impl:Landroid/net/LocalSocketImpl;

.field private volatile greylist-max-o implCreated:Z

.field private greylist-max-o isBound:Z

.field private greylist-max-o isConnected:Z

.field private greylist-max-o localAddress:Landroid/net/LocalSocketAddress;

.field private final greylist-max-o sockType:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 64
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/LocalSocket;-><init>(I)V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "sockType"    # I

    .line 74
    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/net/LocalSocket;-><init>(Landroid/net/LocalSocketImpl;I)V

    .line 75
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/net/LocalSocketImpl;I)V
    .registers 4
    .param p1, "impl"    # Landroid/net/LocalSocketImpl;
    .param p2, "sockType"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 79
    iput p2, p0, Landroid/net/LocalSocket;->sockType:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z

    .line 81
    iput-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 107
    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0, p1}, Landroid/net/LocalSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/LocalSocket;-><init>(Landroid/net/LocalSocketImpl;I)V

    .line 108
    invoke-direct {p0}, Landroid/net/LocalSocket;->checkConnected()V

    .line 109
    return-void
.end method

.method private blacklist checkConnected()V
    .registers 4

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_9} :catch_12

    .line 89
    nop

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z

    .line 91
    iput-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z

    .line 92
    iput-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z

    .line 93
    return-void

    .line 87
    :catch_12
    move-exception v0

    .line 88
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a connected socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static greylist-max-o createLocalSocketForAccept(Landroid/net/LocalSocketImpl;)Landroid/net/LocalSocket;
    .registers 3
    .param p0, "impl"    # Landroid/net/LocalSocketImpl;

    .line 115
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/LocalSocket;-><init>(Landroid/net/LocalSocketImpl;I)V

    .line 116
    .local v0, "socket":Landroid/net/LocalSocket;
    invoke-direct {v0}, Landroid/net/LocalSocket;->checkConnected()V

    .line 117
    return-object v0
.end method

.method private greylist-max-o implCreateIfNeeded()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z

    if-nez v0, :cond_1e

    .line 135
    monitor-enter p0

    .line 136
    :try_start_5
    iget-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1b

    if-nez v0, :cond_19

    .line 138
    const/4 v0, 0x1

    :try_start_a
    iget-object v1, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    iget v2, p0, Landroid/net/LocalSocket;->sockType:I

    invoke-virtual {v1, v2}, Landroid/net/LocalSocketImpl;->create(I)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_14

    .line 140
    :try_start_11
    iput-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z

    .line 141
    goto :goto_19

    .line 140
    :catchall_14
    move-exception v1

    iput-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z

    .line 141
    nop

    .end local p0    # "this":Landroid/net/LocalSocket;
    throw v1

    .line 143
    .restart local p0    # "this":Landroid/net/LocalSocket;
    :cond_19
    :goto_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v0

    .line 145
    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public whitelist bind(Landroid/net/LocalSocketAddress;)V
    .registers 4
    .param p1, "bindpoint"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 178
    monitor-enter p0

    .line 179
    :try_start_4
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z

    if-nez v0, :cond_16

    .line 183
    iput-object p1, p0, Landroid/net/LocalSocket;->localAddress:Landroid/net/LocalSocketAddress;

    .line 184
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    iget-object v1, p0, Landroid/net/LocalSocket;->localAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->bind(Landroid/net/LocalSocketAddress;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z

    .line 186
    monitor-exit p0

    .line 187
    return-void

    .line 180
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "already bound"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/LocalSocket;
    .end local p1    # "bindpoint":Landroid/net/LocalSocketAddress;
    throw v0

    .line 186
    .restart local p0    # "this":Landroid/net/LocalSocket;
    .restart local p1    # "bindpoint":Landroid/net/LocalSocketAddress;
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 230
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    .line 231
    return-void
.end method

.method public whitelist connect(Landroid/net/LocalSocketAddress;)V
    .registers 4
    .param p1, "endpoint"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z

    if-nez v0, :cond_15

    .line 161
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 162
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/LocalSocketImpl;->connect(Landroid/net/LocalSocketAddress;I)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z

    .line 164
    iput-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z

    .line 165
    monitor-exit p0

    .line 166
    return-void

    .line 158
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/LocalSocket;
    .end local p1    # "endpoint":Landroid/net/LocalSocketAddress;
    throw v0

    .line 165
    .restart local p0    # "this":Landroid/net/LocalSocket;
    .restart local p1    # "endpoint":Landroid/net/LocalSocketAddress;
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public whitelist connect(Landroid/net/LocalSocketAddress;I)V
    .registers 4
    .param p1, "endpoint"    # Landroid/net/LocalSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 356
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 207
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalSocketAddress()Landroid/net/LocalSocketAddress;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/net/LocalSocket;->localAddress:Landroid/net/LocalSocketAddress;

    return-object v0
.end method

.method public whitelist getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 219
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPeerCredentials()Landroid/net/Credentials;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getRemoteSocketAddress()Landroid/net/LocalSocketAddress;
    .registers 2

    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getSendBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist isBound()Z
    .registers 2

    monitor-enter p0

    .line 294
    :try_start_1
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 294
    .end local p0    # "this":Landroid/net/LocalSocket;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist isClosed()Z
    .registers 2

    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized whitelist isConnected()Z
    .registers 2

    monitor-enter p0

    .line 284
    :try_start_1
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 284
    .end local p0    # "this":Landroid/net/LocalSocket;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist isInputShutdown()Z
    .registers 2

    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isOutputShutdown()Z
    .registers 2

    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fds"    # [Ljava/io/FileDescriptor;

    .line 322
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0, p1}, Landroid/net/LocalSocketImpl;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    .line 323
    return-void
.end method

.method public whitelist setReceiveBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 255
    return-void
.end method

.method public whitelist setSendBufferSize(I)V
    .registers 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 271
    return-void
.end method

.method public whitelist setSoTimeout(I)V
    .registers 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 263
    return-void
.end method

.method public whitelist shutdownInput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 240
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->shutdownInput()V

    .line 241
    return-void
.end method

.method public whitelist shutdownOutput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    .line 250
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->shutdownOutput()V

    .line 251
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " impl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
