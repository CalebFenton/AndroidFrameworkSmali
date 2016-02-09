.class public Landroid/net/LocalSocket;
.super Ljava/lang/Object;
.source "LocalSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final SOCKET_DGRAM:I = 0x1

.field public static final SOCKET_SEQPACKET:I = 0x3

.field public static final SOCKET_STREAM:I = 0x2

.field static final SOCKET_UNKNOWN:I


# instance fields
.field private final impl:Landroid/net/LocalSocketImpl;

.field private volatile implCreated:Z

.field private isBound:Z

.field private isConnected:Z

.field private localAddress:Landroid/net/LocalSocketAddress;

.field private final sockType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/net/LocalSocket;-><init>(I)V

    #@4
    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "sockType"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    new-instance v0, Landroid/net/LocalSocketImpl;

    #@3
    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    #@6
    invoke-direct {p0, v0, p1}, Landroid/net/LocalSocket;-><init>(Landroid/net/LocalSocketImpl;I)V

    #@9
    .line 63
    iput-boolean v1, p0, Landroid/net/LocalSocket;->isBound:Z

    #@b
    .line 64
    iput-boolean v1, p0, Landroid/net/LocalSocket;->isConnected:Z

    #@d
    .line 61
    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocketImpl;I)V
    .locals 1
    .param p1, "impl"    # Landroid/net/LocalSocketImpl;
    .param p2, "sockType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 82
    iput-object p1, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@6
    .line 83
    iput p2, p0, Landroid/net/LocalSocket;->sockType:I

    #@8
    .line 84
    iput-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z

    #@a
    .line 85
    iput-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z

    #@c
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 72
    new-instance v0, Landroid/net/LocalSocketImpl;

    #@3
    invoke-direct {v0, p1}, Landroid/net/LocalSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {p0, v0, v1}, Landroid/net/LocalSocket;-><init>(Landroid/net/LocalSocketImpl;I)V

    #@a
    .line 73
    iput-boolean v2, p0, Landroid/net/LocalSocket;->isBound:Z

    #@c
    .line 74
    iput-boolean v2, p0, Landroid/net/LocalSocket;->isConnected:Z

    #@e
    .line 71
    return-void
.end method

.method private implCreateIfNeeded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 103
    monitor-enter p0

    #@5
    .line 104
    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    if-nez v0, :cond_0

    #@9
    .line 106
    :try_start_1
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@b
    iget v1, p0, Landroid/net/LocalSocket;->sockType:I

    #@d
    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->create(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 108
    const/4 v0, 0x1

    #@11
    :try_start_2
    iput-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 101
    :cond_1
    return-void

    #@15
    .line 107
    :catchall_0
    move-exception v0

    #@16
    .line 108
    const/4 v1, 0x1

    #@17
    :try_start_3
    iput-boolean v1, p0, Landroid/net/LocalSocket;->implCreated:Z

    #@19
    .line 107
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1a
    .line 103
    :catchall_1
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method


# virtual methods
.method public bind(Landroid/net/LocalSocketAddress;)V
    .locals 2
    .param p1, "bindpoint"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    #@3
    .line 146
    monitor-enter p0

    #@4
    .line 147
    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 148
    new-instance v0, Ljava/io/IOException;

    #@a
    const-string/jumbo v1, "already bound"

    #@d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 146
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0

    #@14
    .line 151
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/net/LocalSocket;->localAddress:Landroid/net/LocalSocketAddress;

    #@16
    .line 152
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@18
    iget-object v1, p0, Landroid/net/LocalSocket;->localAddress:Landroid/net/LocalSocketAddress;

    #@1a
    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->bind(Landroid/net/LocalSocketAddress;)V

    #@1d
    .line 153
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit p0

    #@21
    .line 143
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    #@3
    .line 196
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@5
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    #@8
    .line 194
    return-void
.end method

.method public connect(Landroid/net/LocalSocketAddress;)V
    .locals 2
    .param p1, "endpoint"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    monitor-enter p0

    #@1
    .line 125
    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 126
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "already connected"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 124
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 129
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    #@14
    .line 130
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-virtual {v0, p1, v1}, Landroid/net/LocalSocketImpl;->connect(Landroid/net/LocalSocketAddress;I)V

    #@1a
    .line 131
    const/4 v0, 0x1

    #@1b
    iput-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z

    #@1d
    .line 132
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit p0

    #@21
    .line 123
    return-void
.end method

.method public connect(Landroid/net/LocalSocketAddress;I)V
    .locals 1
    .param p1, "endpoint"    # Landroid/net/LocalSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    #@3
    .line 174
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@5
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getInputStream()Ljava/io/InputStream;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getLocalSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Landroid/net/LocalSocket;->localAddress:Landroid/net/LocalSocketAddress;

    #@2
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    #@3
    .line 185
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@5
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getPeerCredentials()Landroid/net/Credentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getPeerCredentials()Landroid/net/Credentials;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    const/16 v1, 0x1002

    #@4
    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Integer;

    #@a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getRemoteSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    #@0
    .prologue
    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getSendBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    const/16 v1, 0x1001

    #@4
    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Integer;

    #@a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getSoTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    const/16 v1, 0x1006

    #@4
    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Integer;

    #@a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public declared-synchronized isBound()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 260
    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 255
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 250
    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isInputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fds"    # [Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/LocalSocketImpl;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    #@5
    .line 287
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x1002

    #@8
    invoke-virtual {v0, v2, v1}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    #@b
    .line 219
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x1001

    #@8
    invoke-virtual {v0, v2, v1}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    #@b
    .line 235
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x1006

    #@8
    invoke-virtual {v0, v2, v1}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    #@b
    .line 227
    return-void
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    #@3
    .line 206
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@5
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->shutdownInput()V

    #@8
    .line 204
    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    #@3
    .line 216
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@5
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->shutdownOutput()V

    #@8
    .line 214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, " impl:"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method
