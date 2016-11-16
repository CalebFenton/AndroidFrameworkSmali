.class Ljava/net/SocketInputStream;
.super Ljava/io/FileInputStream;
.source "SocketInputStream.java"


# instance fields
.field private closing:Z

.field private eof:Z

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
    .line 60
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@8
    .line 49
    iput-object v1, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@a
    .line 51
    iput-object v1, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    #@c
    .line 253
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    #@f
    .line 61
    iput-object p1, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@11
    .line 62
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getSocket()Ljava/net/Socket;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    #@17
    .line 59
    return-void
.end method

.method private native socketRead0(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 244
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 246
    :cond_0
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@8
    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->available()I

    #@b
    move-result v0

    #@c
    return v0
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
    .line 256
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 257
    return-void

    #@5
    .line 258
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    #@8
    .line 259
    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 260
    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    #@e
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 261
    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    #@16
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@19
    .line 264
    :cond_1
    :goto_0
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    #@1c
    .line 254
    return-void

    #@1d
    .line 263
    :cond_2
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@1f
    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    #@22
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 274
    return-void
.end method

.method public final getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    #@0
    .prologue
    .line 78
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 202
    iget-boolean v1, p0, Ljava/net/SocketInputStream;->eof:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 203
    return v3

    #@8
    .line 205
    :cond_0
    new-array v1, v4, [B

    #@a
    iput-object v1, p0, Ljava/net/SocketInputStream;->temp:[B

    #@c
    .line 206
    iget-object v1, p0, Ljava/net/SocketInputStream;->temp:[B

    #@e
    invoke-virtual {p0, v1, v2, v4}, Ljava/net/SocketInputStream;->read([BII)I

    #@11
    move-result v0

    #@12
    .line 207
    .local v0, "n":I
    if-gtz v0, :cond_1

    #@14
    .line 208
    return v3

    #@15
    .line 210
    :cond_1
    iget-object v1, p0, Ljava/net/SocketInputStream;->temp:[B

    #@17
    aget-byte v1, v1, v2

    #@19
    and-int/lit16 v1, v1, 0xff

    #@1b
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/net/SocketInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@2
    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->getTimeout()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/net/SocketInputStream;->read([BIII)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method read([BIII)I
    .locals 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    const/4 v9, 0x0

    #@1
    .line 127
    .local v9, "n":I
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 128
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 132
    :cond_0
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@9
    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 133
    new-instance v0, Ljava/net/SocketException;

    #@11
    const-string/jumbo v2, "Connection reset"

    #@14
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 137
    :cond_1
    if-lez p3, :cond_2

    #@1a
    if-gez p2, :cond_3

    #@1c
    .line 138
    :cond_2
    if-nez p3, :cond_4

    #@1e
    .line 139
    const/4 v0, 0x0

    #@1f
    return v0

    #@20
    .line 137
    :cond_3
    add-int v0, p2, p3

    #@22
    array-length v2, p1

    #@23
    if-gt v0, v2, :cond_2

    #@25
    .line 144
    const/4 v8, 0x0

    #@26
    .line 146
    .local v8, "gotReset":Z
    invoke-static {}, Lsun/misc/IoTrace;->socketReadBegin()Ljava/lang/Object;

    #@29
    move-result-object v11

    #@2a
    .line 148
    .local v11, "traceContext":Ljava/lang/Object;
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@2c
    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    #@2f
    move-result-object v1

    #@30
    .line 150
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@33
    move-result-object v0

    #@34
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@37
    move-object v0, p0

    #@38
    move-object v2, p1

    #@39
    move v3, p2

    #@3a
    move v4, p3

    #@3b
    move/from16 v5, p4

    #@3d
    .line 151
    invoke-direct/range {v0 .. v5}, Ljava/net/SocketInputStream;->socketRead0(Ljava/io/FileDescriptor;[BIII)I
    :try_end_0
    .catch Lsun/net/ConnectionResetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result v9

    #@41
    .line 152
    if-lez v9, :cond_6

    #@43
    .line 158
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@45
    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@47
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@49
    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@4b
    .line 159
    if-lez v9, :cond_5

    #@4d
    move v0, v9

    #@4e
    :goto_0
    int-to-long v6, v0

    #@4f
    move-object v2, v11

    #@50
    move/from16 v5, p4

    #@52
    .line 158
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@55
    .line 153
    return v9

    #@56
    .line 141
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v8    # "gotReset":Z
    .end local v11    # "traceContext":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@58
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@5b
    throw v0

    #@5c
    .line 159
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v8    # "gotReset":Z
    .restart local v11    # "traceContext":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    #@5d
    goto :goto_0

    #@5e
    .line 158
    :cond_6
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@60
    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@62
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@64
    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@66
    .line 159
    if-lez v9, :cond_7

    #@68
    move v0, v9

    #@69
    :goto_1
    int-to-long v6, v0

    #@6a
    move-object v2, v11

    #@6b
    move/from16 v5, p4

    #@6d
    .line 158
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@70
    .line 166
    :goto_2
    if-eqz v8, :cond_a

    #@72
    .line 167
    invoke-static {}, Lsun/misc/IoTrace;->socketReadBegin()Ljava/lang/Object;

    #@75
    move-result-object v11

    #@76
    .line 168
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@78
    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V

    #@7b
    move-object v0, p0

    #@7c
    move-object v2, p1

    #@7d
    move v3, p2

    #@7e
    move v4, p3

    #@7f
    move/from16 v5, p4

    #@81
    .line 170
    :try_start_1
    invoke-direct/range {v0 .. v5}, Ljava/net/SocketInputStream;->socketRead0(Ljava/io/FileDescriptor;[BIII)I
    :try_end_1
    .catch Lsun/net/ConnectionResetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@84
    move-result v9

    #@85
    .line 171
    if-lez v9, :cond_9

    #@87
    .line 176
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@89
    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@8b
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@8d
    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@8f
    .line 177
    if-lez v9, :cond_8

    #@91
    move v0, v9

    #@92
    :goto_3
    int-to-long v6, v0

    #@93
    move-object v2, v11

    #@94
    move/from16 v5, p4

    #@96
    .line 176
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@99
    .line 172
    return v9

    #@9a
    .line 159
    :cond_7
    const/4 v0, 0x0

    #@9b
    goto :goto_1

    #@9c
    .line 155
    :catch_0
    move-exception v10

    #@9d
    .line 156
    .local v10, "rstExc":Lsun/net/ConnectionResetException;
    const/4 v8, 0x1

    #@9e
    .line 158
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@a0
    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@a2
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@a4
    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@a6
    .line 159
    const/4 v0, 0x0

    #@a7
    int-to-long v6, v0

    #@a8
    move-object v2, v11

    #@a9
    move/from16 v5, p4

    #@ab
    .line 158
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@ae
    goto :goto_2

    #@af
    .line 157
    .end local v10    # "rstExc":Lsun/net/ConnectionResetException;
    :catchall_0
    move-exception v0

    #@b0
    .line 158
    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@b2
    iget-object v3, v2, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@b4
    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@b6
    iget v4, v2, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@b8
    .line 159
    const/4 v2, 0x0

    #@b9
    int-to-long v6, v2

    #@ba
    move-object v2, v11

    #@bb
    move/from16 v5, p4

    #@bd
    .line 158
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@c0
    .line 157
    throw v0

    #@c1
    .line 177
    :cond_8
    const/4 v0, 0x0

    #@c2
    goto :goto_3

    #@c3
    .line 176
    :cond_9
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@c5
    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@c7
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@c9
    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@cb
    .line 177
    if-lez v9, :cond_b

    #@cd
    move v0, v9

    #@ce
    :goto_4
    int-to-long v6, v0

    #@cf
    move-object v2, v11

    #@d0
    move/from16 v5, p4

    #@d2
    .line 176
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@d5
    .line 185
    :cond_a
    :goto_5
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@d7
    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    #@da
    move-result v0

    #@db
    if-eqz v0, :cond_e

    #@dd
    .line 186
    new-instance v0, Ljava/net/SocketException;

    #@df
    const-string/jumbo v2, "Socket closed"

    #@e2
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e5
    throw v0

    #@e6
    .line 177
    :cond_b
    const/4 v0, 0x0

    #@e7
    goto :goto_4

    #@e8
    .line 174
    :catch_1
    move-exception v10

    #@e9
    .line 176
    .restart local v10    # "rstExc":Lsun/net/ConnectionResetException;
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@eb
    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@ed
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@ef
    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@f1
    .line 177
    if-lez v9, :cond_c

    #@f3
    move v0, v9

    #@f4
    :goto_6
    int-to-long v6, v0

    #@f5
    move-object v2, v11

    #@f6
    move/from16 v5, p4

    #@f8
    .line 176
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@fb
    goto :goto_5

    #@fc
    .line 177
    :cond_c
    const/4 v0, 0x0

    #@fd
    goto :goto_6

    #@fe
    .line 175
    .end local v10    # "rstExc":Lsun/net/ConnectionResetException;
    :catchall_1
    move-exception v0

    #@ff
    .line 176
    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@101
    iget-object v3, v2, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@103
    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@105
    iget v4, v2, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@107
    .line 177
    if-lez v9, :cond_d

    #@109
    .end local v9    # "n":I
    :goto_7
    int-to-long v6, v9

    #@10a
    move-object v2, v11

    #@10b
    move/from16 v5, p4

    #@10d
    .line 176
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@110
    .line 175
    throw v0

    #@111
    .line 177
    .restart local v9    # "n":I
    :cond_d
    const/4 v9, 0x0

    #@112
    goto :goto_7

    #@113
    .line 188
    :cond_e
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@115
    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionResetPending()Z

    #@118
    move-result v0

    #@119
    if-eqz v0, :cond_f

    #@11b
    .line 189
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@11d
    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V

    #@120
    .line 191
    :cond_f
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    #@122
    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z

    #@125
    move-result v0

    #@126
    if-eqz v0, :cond_10

    #@128
    .line 192
    new-instance v0, Ljava/net/SocketException;

    #@12a
    const-string/jumbo v2, "Connection reset"

    #@12d
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@130
    throw v0

    #@131
    .line 194
    :cond_10
    const/4 v0, 0x1

    #@132
    iput-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    #@134
    .line 195
    const/4 v0, -0x1

    #@135
    return v0
.end method

.method setEOF(Z)V
    .locals 0
    .param p1, "eof"    # Z

    #@0
    .prologue
    .line 268
    iput-boolean p1, p0, Ljava/net/SocketInputStream;->eof:Z

    #@2
    .line 267
    return-void
.end method

.method public skip(J)J
    .locals 11
    .param p1, "numbytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const-wide/16 v8, 0x0

    #@3
    .line 220
    cmp-long v5, p1, v8

    #@5
    if-gtz v5, :cond_0

    #@7
    .line 221
    return-wide v8

    #@8
    .line 223
    :cond_0
    move-wide v2, p1

    #@9
    .line 224
    .local v2, "n":J
    const-wide/16 v6, 0x400

    #@b
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    #@e
    move-result-wide v6

    #@f
    long-to-int v0, v6

    #@10
    .line 225
    .local v0, "buflen":I
    new-array v1, v0, [B

    #@12
    .line 226
    .local v1, "data":[B
    :goto_0
    cmp-long v5, v2, v8

    #@14
    if-lez v5, :cond_1

    #@16
    .line 227
    int-to-long v6, v0

    #@17
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@1a
    move-result-wide v6

    #@1b
    long-to-int v5, v6

    #@1c
    invoke-virtual {p0, v1, v10, v5}, Ljava/net/SocketInputStream;->read([BII)I

    #@1f
    move-result v4

    #@20
    .line 228
    .local v4, "r":I
    if-gez v4, :cond_2

    #@22
    .line 233
    .end local v4    # "r":I
    :cond_1
    sub-long v6, p1, v2

    #@24
    return-wide v6

    #@25
    .line 231
    .restart local v4    # "r":I
    :cond_2
    int-to-long v6, v4

    #@26
    sub-long/2addr v2, v6

    #@27
    goto :goto_0
.end method
