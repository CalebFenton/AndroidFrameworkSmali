.class Ljava/net/SocketOutputStream;
.super Ljava/io/FileOutputStream;
.source "SocketOutputStream.java"


# instance fields
.field private closing:Z

.field private impl:Ljava/net/AbstractPlainSocketImpl;

.field private socket:Ljava/net/Socket;

.field private temp:[B


# direct methods
.method constructor <init>(Ljava/net/AbstractPlainSocketImpl;)V
    .locals 2
    .param p1, "impl"    # Ljava/net/AbstractPlainSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 58
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@8
    .line 47
    iput-object v1, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@a
    .line 48
    const/4 v0, 0x1

    #@b
    new-array v0, v0, [B

    #@d
    iput-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    #@f
    .line 49
    iput-object v1, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    #@11
    .line 163
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    #@14
    .line 59
    iput-object p1, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@16
    .line 60
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getSocket()Ljava/net/Socket;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    #@1c
    .line 57
    return-void
.end method

.method private socketWrite([BII)V
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    if-lez p3, :cond_0

    #@2
    if-gez p2, :cond_1

    #@4
    .line 101
    :cond_0
    if-nez p3, :cond_2

    #@6
    .line 102
    return-void

    #@7
    .line 100
    :cond_1
    add-int v4, p2, p3

    #@9
    array-length v5, p1

    #@a
    if-gt v4, v5, :cond_0

    #@c
    .line 107
    invoke-static {}, Lsun/misc/IoTrace;->socketWriteBegin()Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    .line 109
    .local v3, "traceContext":Ljava/lang/Object;
    iget-object v4, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@12
    invoke-virtual {v4}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    #@15
    move-result-object v1

    #@16
    .line 111
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@19
    move-result-object v4

    #@1a
    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@1d
    .line 112
    invoke-direct {p0, v1, p1, p2, p3}, Ljava/net/SocketOutputStream;->socketWrite0(Ljava/io/FileDescriptor;[BII)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 113
    move v0, p3

    #@21
    .line 125
    .local v0, "bytesWritten":I
    iget-object v4, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@23
    iget-object v4, v4, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@25
    iget-object v5, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@27
    iget v5, v5, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@29
    int-to-long v6, p3

    #@2a
    invoke-static {v3, v4, v5, v6, v7}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    #@2d
    .line 98
    return-void

    #@2e
    .line 104
    .end local v0    # "bytesWritten":I
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "traceContext":Ljava/lang/Object;
    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@30
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@33
    throw v4

    #@34
    .line 114
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "traceContext":Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@35
    .line 115
    .local v2, "se":Ljava/net/SocketException;
    :try_start_1
    instance-of v4, v2, Lsun/net/ConnectionResetException;

    #@37
    if-eqz v4, :cond_3

    #@39
    .line 116
    iget-object v4, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@3b
    invoke-virtual {v4}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V

    #@3e
    .line 117
    new-instance v2, Ljava/net/SocketException;

    #@40
    .end local v2    # "se":Ljava/net/SocketException;
    const-string/jumbo v4, "Connection reset"

    #@43
    invoke-direct {v2, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@46
    .line 119
    .restart local v2    # "se":Ljava/net/SocketException;
    :cond_3
    iget-object v4, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@48
    invoke-virtual {v4}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_4

    #@4e
    .line 120
    new-instance v4, Ljava/net/SocketException;

    #@50
    const-string/jumbo v5, "Socket closed"

    #@53
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@56
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 124
    .end local v2    # "se":Ljava/net/SocketException;
    :catchall_0
    move-exception v4

    #@58
    .line 125
    iget-object v5, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@5a
    iget-object v5, v5, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@5c
    iget-object v6, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@5e
    iget v6, v6, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@60
    const-wide/16 v8, 0x0

    #@62
    invoke-static {v3, v5, v6, v8, v9}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    #@65
    .line 124
    throw v4

    #@66
    .line 122
    .restart local v2    # "se":Ljava/net/SocketException;
    :cond_4
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private native socketWrite0(Ljava/io/FileDescriptor;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    iget-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 167
    return-void

    #@5
    .line 168
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    #@8
    .line 169
    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 170
    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    #@e
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 171
    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    #@16
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@19
    .line 174
    :cond_1
    :goto_0
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    #@1c
    .line 164
    return-void

    #@1d
    .line 173
    :cond_2
    iget-object v0, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@1f
    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    #@22
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 180
    return-void
.end method

.method public final getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 135
    iget-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    #@3
    int-to-byte v1, p1

    #@4
    aput-byte v1, v0, v2

    #@6
    .line 136
    iget-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    #@8
    const/4 v1, 0x1

    #@9
    invoke-direct {p0, v0, v2, v1}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    #@c
    .line 134
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    #@5
    .line 144
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    #@3
    .line 156
    return-void
.end method
