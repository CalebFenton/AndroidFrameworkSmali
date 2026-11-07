.class Ljava/net/SocketOutputStream;
.super Ljava/io/FileOutputStream;
.source "SocketOutputStream.java"


# instance fields
.field private blacklist closing:Z

.field private blacklist impl:Ljava/net/AbstractPlainSocketImpl;

.field private blacklist socket:Ljava/net/Socket;

.field private blacklist temp:[B


# direct methods
.method constructor blacklist <init>(Ljava/net/AbstractPlainSocketImpl;)V
    .registers 4
    .param p1, "impl"    # Ljava/net/AbstractPlainSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 51
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/net/SocketOutputStream;->temp:[B

    .line 52
    iput-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    .line 62
    iput-object p1, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 63
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    .line 64
    return-void
.end method

.method private blacklist socketWrite([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    if-lez p3, :cond_3b

    if-ltz p2, :cond_3b

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_9

    goto :goto_3b

    .line 112
    :cond_9
    iget-object v0, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 115
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_f
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 116
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/net/SocketOutputStream;->socketWrite0(Ljava/io/FileDescriptor;[BII)V
    :try_end_19
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_19} :catch_22
    .catchall {:try_start_f .. :try_end_19} :catchall_20

    .line 124
    iget-object v1, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v1}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 125
    nop

    .line 126
    return-void

    .line 124
    :catchall_20
    move-exception v1

    goto :goto_35

    .line 117
    :catch_22
    move-exception v1

    .line 118
    .local v1, "se":Ljava/net/SocketException;
    :try_start_23
    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 119
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/SocketOutputStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v2

    .line 121
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/SocketOutputStream;
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_33
    nop

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/SocketOutputStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_20

    .line 124
    .end local v1    # "se":Ljava/net/SocketException;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/SocketOutputStream;
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :goto_35
    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 125
    throw v1

    .line 105
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    :cond_3b
    :goto_3b
    if-nez p3, :cond_3e

    .line 106
    return-void

    .line 108
    :cond_3e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " buffer length == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native blacklist socketWrite0(Ljava/io/FileDescriptor;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    if-eqz v0, :cond_5

    .line 166
    return-void

    .line 167
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    .line 168
    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1a

    .line 169
    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 170
    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_1f

    .line 172
    :cond_1a
    iget-object v0, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    .line 173
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    .line 174
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 179
    return-void
.end method

.method public final whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 2

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 135
    iget-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    .line 136
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    .line 145
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2, p3}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    .line 157
    return-void
.end method
