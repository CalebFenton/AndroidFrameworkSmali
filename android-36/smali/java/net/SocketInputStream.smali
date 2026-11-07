.class Ljava/net/SocketInputStream;
.super Ljava/io/FileInputStream;
.source "SocketInputStream.java"


# instance fields
.field private blacklist closing:Z

.field private blacklist eof:Z

.field private blacklist impl:Ljava/net/AbstractPlainSocketImpl;

.field private blacklist socket:Ljava/net/Socket;

.field private blacklist temp:[B


# direct methods
.method constructor blacklist <init>(Ljava/net/AbstractPlainSocketImpl;)V
    .registers 3
    .param p1, "impl"    # Ljava/net/AbstractPlainSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 54
    iput-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    .line 64
    iput-object p1, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 65
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    .line 66
    return-void
.end method

.method private blacklist socketRead(Ljava/io/FileDescriptor;[BIII)I
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct/range {p0 .. p5}, Ljava/net/SocketInputStream;->socketRead0(Ljava/io/FileDescriptor;[BIII)I

    move-result v0

    return v0
.end method

.method private native blacklist socketRead0(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    if-eqz v0, :cond_6

    .line 243
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_6
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    if-eqz v0, :cond_5

    .line 256
    return-void

    .line 257
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    .line 258
    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1a

    .line 259
    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 260
    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_1f

    .line 262
    :cond_1a
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    .line 263
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    .line 264
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 273
    return-void
.end method

.method public final whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 2

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 202
    return v1

    .line 204
    :cond_6
    const/4 v0, 0x1

    new-array v2, v0, [B

    iput-object v2, p0, Ljava/net/SocketInputStream;->temp:[B

    .line 205
    iget-object v2, p0, Ljava/net/SocketInputStream;->temp:[B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v0

    .line 206
    .local v0, "n":I
    if-gtz v0, :cond_15

    .line 207
    return v1

    .line 209
    :cond_15
    iget-object v1, p0, Ljava/net/SocketInputStream;->temp:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->getTimeout()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/net/SocketInputStream;->read([BIII)I

    move-result v0

    return v0
.end method

.method blacklist read([BIII)I
    .registers 14
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 151
    return v1

    .line 155
    :cond_6
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z

    move-result v0

    const-string v2, "Connection reset"

    if-nez v0, :cond_c2

    .line 160
    if-lez p3, :cond_8b

    if-ltz p2, :cond_8b

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1f

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    goto/16 :goto_90

    .line 169
    :cond_1f
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 172
    .local v4, "fd":Ljava/io/FileDescriptor;
    :try_start_25
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V
    :try_end_2c
    .catch Lsun/net/ConnectionResetException; {:try_start_25 .. :try_end_2c} :catch_4f
    .catchall {:try_start_25 .. :try_end_2c} :catchall_47

    .line 173
    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "length":I
    .end local p4    # "timeout":I
    .local v5, "b":[B
    .local v6, "off":I
    .local v7, "length":I
    .local v8, "timeout":I
    :try_start_31
    invoke-direct/range {v3 .. v8}, Ljava/net/SocketInputStream;->socketRead(Ljava/io/FileDescriptor;[BIII)I

    move-result p1
    :try_end_35
    .catch Lsun/net/ConnectionResetException; {:try_start_31 .. :try_end_35} :catch_44
    .catchall {:try_start_31 .. :try_end_35} :catchall_83

    .line 174
    .local p1, "n":I
    if-lez p1, :cond_3e

    .line 175
    nop

    .line 180
    iget-object p2, v3, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {p2}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 175
    return p1

    .line 180
    :cond_3e
    iget-object p2, v3, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {p2}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 181
    goto :goto_61

    .line 177
    .end local p1    # "n":I
    :catch_44
    move-exception v0

    move-object p1, v0

    goto :goto_56

    .line 180
    .end local v5    # "b":[B
    .end local v6    # "off":I
    .end local v7    # "length":I
    .end local v8    # "timeout":I
    .local p1, "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "length":I
    .restart local p4    # "timeout":I
    :catchall_47
    move-exception v0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object p1, v0

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "length":I
    .end local p4    # "timeout":I
    .restart local v5    # "b":[B
    .restart local v6    # "off":I
    .restart local v7    # "length":I
    .restart local v8    # "timeout":I
    goto :goto_85

    .line 177
    .end local v5    # "b":[B
    .end local v6    # "off":I
    .end local v7    # "length":I
    .end local v8    # "timeout":I
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "length":I
    .restart local p4    # "timeout":I
    :catch_4f
    move-exception v0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object p1, v0

    .line 178
    .end local p2    # "off":I
    .end local p3    # "length":I
    .end local p4    # "timeout":I
    .restart local v5    # "b":[B
    .restart local v6    # "off":I
    .restart local v7    # "length":I
    .restart local v8    # "timeout":I
    .local p1, "rstExc":Lsun/net/ConnectionResetException;
    :goto_56
    :try_start_56
    iget-object p2, v3, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {p2}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_83

    .line 180
    .end local p1    # "rstExc":Lsun/net/ConnectionResetException;
    iget-object p1, v3, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 181
    nop

    .line 187
    :goto_61
    iget-object p1, v3, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result p1

    if-nez p1, :cond_7b

    .line 190
    iget-object p1, v3, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z

    move-result p1

    if-nez p1, :cond_75

    .line 193
    const/4 p1, 0x1

    iput-boolean p1, v3, Ljava/net/SocketInputStream;->eof:Z

    .line 194
    return v1

    .line 191
    :cond_75
    new-instance p1, Ljava/net/SocketException;

    invoke-direct {p1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_7b
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Socket closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :catchall_83
    move-exception v0

    move-object p1, v0

    :goto_85
    iget-object p2, v3, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {p2}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 181
    throw p1

    .line 160
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "b":[B
    .end local v6    # "off":I
    .end local v7    # "length":I
    .end local v8    # "timeout":I
    .local p1, "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "length":I
    .restart local p4    # "timeout":I
    :cond_8b
    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .line 161
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "length":I
    .end local p4    # "timeout":I
    .restart local v5    # "b":[B
    .restart local v6    # "off":I
    .restart local v7    # "length":I
    .restart local v8    # "timeout":I
    :goto_90
    if-nez v7, :cond_94

    .line 162
    const/4 p1, 0x0

    return p1

    .line 164
    :cond_94
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "length == "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " off == "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " buffer length == "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, v5

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    .end local v5    # "b":[B
    .end local v6    # "off":I
    .end local v7    # "length":I
    .end local v8    # "timeout":I
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "length":I
    .restart local p4    # "timeout":I
    :cond_c2
    move-object v5, p1

    .end local p1    # "b":[B
    .restart local v5    # "b":[B
    new-instance p1, Ljava/net/SocketException;

    invoke-direct {p1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist setEOF(Z)V
    .registers 2
    .param p1, "eof"    # Z

    .line 267
    iput-boolean p1, p0, Ljava/net/SocketInputStream;->eof:Z

    .line 268
    return-void
.end method

.method public whitelist test-api skip(J)J
    .registers 12
    .param p1, "numbytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    .line 220
    return-wide v0

    .line 222
    :cond_7
    move-wide v2, p1

    .line 223
    .local v2, "n":J
    const-wide/16 v4, 0x400

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 224
    .local v4, "buflen":I
    new-array v5, v4, [B

    .line 225
    .local v5, "data":[B
    :goto_11
    cmp-long v6, v2, v0

    if-lez v6, :cond_26

    .line 226
    int-to-long v6, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7, v6}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v6

    .line 227
    .local v6, "r":I
    if-gez v6, :cond_23

    .line 228
    goto :goto_26

    .line 230
    :cond_23
    int-to-long v7, v6

    sub-long/2addr v2, v7

    .line 231
    .end local v6    # "r":I
    goto :goto_11

    .line 232
    :cond_26
    :goto_26
    sub-long v0, p1, v2

    return-wide v0
.end method
