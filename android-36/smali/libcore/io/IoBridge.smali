.class public final Llibcore/io/IoBridge;
.super Ljava/lang/Object;
.source "IoBridge.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final blacklist JAVA_IP_MULTICAST_TTL:I = 0x11

.field public static final blacklist JAVA_IP_TTL:I = 0x19

.field public static final blacklist JAVA_MCAST_JOIN_GROUP:I = 0x13

.field public static final blacklist JAVA_MCAST_LEAVE_GROUP:I = 0x14


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static blacklist available(Ljava/io/FileDescriptor;)I
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->FIONREAD:I

    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;I)I

    move-result v0
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_c

    .line 107
    .local v0, "available":I
    if-gez v0, :cond_b

    .line 114
    const/4 v0, 0x0

    .line 116
    :cond_b
    return v0

    .line 117
    .end local v0    # "available":I
    :catch_c
    move-exception v0

    .line 118
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENOTTY:I

    if-ne v1, v2, :cond_15

    .line 120
    const/4 v1, 0x0

    return v1

    .line 122
    :cond_15
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 128
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_4b

    .line 129
    move-object v0, p1

    check-cast v0, Ljava/net/Inet6Address;

    .line 130
    .local v0, "inet6Address":Ljava/net/Inet6Address;
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 133
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 134
    .local v1, "nif":Ljava/net/NetworkInterface;
    if-eqz v1, :cond_32

    .line 138
    :try_start_19
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v2
    :try_end_29
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_29} :catch_2b

    move-object p1, v2

    .line 141
    goto :goto_4b

    .line 139
    :catch_2b
    move-exception v2

    .line 140
    .local v2, "ex":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 135
    .end local v2    # "ex":Ljava/net/UnknownHostException;
    :cond_32
    new-instance v2, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t bind to a link-local address without a scope id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    .end local v0    # "inet6Address":Ljava/net/Inet6Address;
    .end local v1    # "nif":Ljava/net/NetworkInterface;
    :cond_4b
    :goto_4b
    :try_start_4b
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_50
    .catch Landroid/system/ErrnoException; {:try_start_4b .. :try_end_50} :catch_52

    .line 153
    nop

    .line 154
    return-void

    .line 146
    :catch_52
    move-exception v0

    .line 147
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EADDRINUSE:I

    if-eq v1, v2, :cond_76

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EADDRNOTAVAIL:I

    if-eq v1, v2, :cond_76

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EPERM:I

    if-eq v1, v2, :cond_76

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EACCES:I

    if-ne v1, v2, :cond_6c

    goto :goto_76

    .line 151
    :cond_6c
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :cond_76
    :goto_76
    new-instance v1, Ljava/net/BindException;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/net/BindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist booleanFromInt(I)Z
    .registers 2
    .param p0, "i"    # I

    .line 427
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist booleanToInt(Z)I
    .registers 1
    .param p0, "b"    # Z

    .line 431
    return p0
.end method

.method public static blacklist test-api closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    if-nez p0, :cond_3

    .line 298
    return-void

    .line 304
    :cond_3
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->release$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 305
    .local v0, "oldFd":Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-nez v1, :cond_e

    .line 306
    return-void

    .line 309
    :cond_e
    invoke-static {v0}, Llibcore/io/AsynchronousCloseMonitor;->signalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 311
    :try_start_11
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, v0}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_16} :catch_18

    .line 314
    nop

    .line 315
    return-void

    .line 312
    :catch_18
    move-exception v1

    .line 313
    .local v1, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p2, v0}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_4} :catch_6

    .line 168
    nop

    .line 169
    return-void

    .line 166
    :catch_6
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static blacklist connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .registers 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 179
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Llibcore/io/IoBridge;->connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_10
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3} :catch_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 195
    nop

    .line 196
    return-void

    .line 193
    :catch_5
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 191
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_c
    move-exception v0

    .line 192
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    throw v0

    .line 189
    .end local v0    # "ex":Ljava/net/SocketTimeoutException;
    :catch_e
    move-exception v0

    .line 190
    .local v0, "ex":Ljava/net/SocketException;
    throw v0

    .line 180
    .end local v0    # "ex":Ljava/net/SocketException;
    :catch_10
    move-exception v0

    .line 181
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EHOSTUNREACH:I

    if-eq v1, v2, :cond_2f

    .line 184
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EADDRNOTAVAIL:I

    if-ne v1, v2, :cond_25

    .line 185
    new-instance v1, Ljava/net/NoRouteToHostException;

    const-string v2, "Address not available"

    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_25
    new-instance v1, Ljava/net/ConnectException;

    invoke-static {p0, p1, p2, p3, v0}, Llibcore/io/IoBridge;->createMessageForException(Ljava/io/FileDescriptor;Ljava/net/InetAddress;IILjava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 182
    :cond_2f
    new-instance v1, Ljava/net/NoRouteToHostException;

    const-string v2, "Host unreachable"

    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .registers 10
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    if-gtz p3, :cond_8

    .line 201
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 202
    return-void

    .line 213
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 216
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 218
    .local v0, "finishTimeNanos":J
    const/4 v2, 0x1

    :try_start_19
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 219
    invoke-static {p0, v2}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_19 .. :try_end_21} :catch_22

    .line 220
    return-void

    .line 221
    :catch_22
    move-exception v3

    .line 222
    .local v3, "errnoException":Landroid/system/ErrnoException;
    iget v4, v3, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EINPROGRESS:I

    if-ne v4, v5, :cond_4d

    .line 231
    .end local v3    # "errnoException":Landroid/system/ErrnoException;
    :cond_29
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 232
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v3, v3

    .line 233
    .local v3, "remainingTimeoutMs":I
    if-lez v3, :cond_42

    .line 237
    invoke-static {p0, p1, p2, p3, v3}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 238
    invoke-static {p0, v2}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 239
    return-void

    .line 234
    :cond_42
    new-instance v2, Ljava/net/SocketTimeoutException;

    .line 235
    const/4 v4, 0x0

    invoke-static {p0, p1, p2, p3, v4}, Llibcore/io/IoBridge;->createMessageForException(Ljava/io/FileDescriptor;Ljava/net/InetAddress;IILjava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    .local v3, "errnoException":Landroid/system/ErrnoException;
    :cond_4d
    throw v3
.end method

.method private static blacklist createMessageForException(Ljava/io/FileDescriptor;Ljava/net/InetAddress;IILjava/lang/Exception;)Ljava/lang/String;
    .registers 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeoutMs"    # I
    .param p4, "causeOrNull"    # Ljava/lang/Exception;

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "localAddress":Ljava/net/InetSocketAddress;
    :try_start_1
    invoke-static {p0}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v1
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 254
    goto :goto_8

    .line 252
    :catch_7
    move-exception v1

    .line 256
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to connect"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    const-string v2, " (port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_48

    .line 263
    const-string v4, " from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 264
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 265
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 266
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_48
    if-lez p3, :cond_59

    .line 270
    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 271
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 272
    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_59
    if-eqz p4, :cond_68

    .line 275
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 276
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 887
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    .line 894
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    if-eqz v0, :cond_2a

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_d

    goto :goto_2a

    .line 895
    :cond_d
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket assumed to be pending closure: Expected sockname to be an InetSocketAddress, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 896
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    throw v1

    .line 898
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    :cond_2a
    :goto_2a
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;
    :try_end_2d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-object v1

    .line 899
    .end local v0    # "socketAddress":Ljava/net/SocketAddress;
    :catch_2e
    move-exception v0

    .line 900
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 367
    :try_start_0
    invoke-static {p0, p1}, Llibcore/io/IoBridge;->getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 368
    :catch_5
    move-exception v0

    .line 369
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static blacklist getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 375
    sparse-switch p1, :sswitch_data_128

    .line 422
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown socket option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :sswitch_1c
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object v0

    invoke-virtual {v0}, Landroid/system/StructTimeval;->toMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 408
    :sswitch_30
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_OOBINLINE:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 410
    :sswitch_43
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVBUF:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 414
    :sswitch_52
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_SNDBUF:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 402
    :sswitch_61
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_LINGER:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    move-result-object v0

    .line 403
    .local v0, "linger":Landroid/system/StructLinger;
    invoke-virtual {v0}, Landroid/system/StructLinger;->isOn()Z

    move-result v1

    if-nez v1, :cond_77

    .line 404
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 406
    :cond_77
    iget v1, v0, Landroid/system/StructLinger;->l_linger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 398
    .end local v0    # "linger":Landroid/system/StructLinger;
    :sswitch_7e
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_BROADCAST:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 392
    :sswitch_91
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v2, Landroid/system/OsConstants;->IPV6_UNICAST_HOPS:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 384
    :sswitch_a0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v2, Landroid/system/OsConstants;->IPV6_MULTICAST_LOOP:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 388
    :sswitch_b5
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v2, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 378
    :sswitch_c4
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v2, Landroid/system/OsConstants;->IPV6_MULTICAST_IF:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 420
    :sswitch_d3
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 400
    :sswitch_e0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_KEEPALIVE:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 412
    :sswitch_f3
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_REUSEADDR:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 396
    :sswitch_106
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v2, Landroid/system/OsConstants;->IPV6_TCLASS:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 418
    :sswitch_115
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v2, Landroid/system/OsConstants;->TCP_NODELAY:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_128
    .sparse-switch
        0x1 -> :sswitch_115
        0x3 -> :sswitch_106
        0x4 -> :sswitch_f3
        0x8 -> :sswitch_e0
        0xf -> :sswitch_d3
        0x10 -> :sswitch_c4
        0x11 -> :sswitch_b5
        0x12 -> :sswitch_a0
        0x19 -> :sswitch_91
        0x1f -> :sswitch_c4
        0x20 -> :sswitch_7e
        0x80 -> :sswitch_61
        0x1001 -> :sswitch_52
        0x1002 -> :sswitch_43
        0x1003 -> :sswitch_30
        0x1006 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static greylist isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    .registers 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeoutMs"    # I
    .param p4, "remainingTimeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Landroid/system/StructPollfd;

    new-instance v2, Landroid/system/StructPollfd;

    invoke-direct {v2}, Landroid/system/StructPollfd;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 324
    .local v1, "pollFds":[Landroid/system/StructPollfd;
    aget-object v2, v1, v3

    iput-object p0, v2, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 325
    aget-object v2, v1, v3

    sget v4, Landroid/system/OsConstants;->POLLOUT:I

    int-to-short v4, v4

    iput-short v4, v2, Landroid/system/StructPollfd;->events:S

    .line 326
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v1, p4}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v2

    .line 327
    .local v2, "rc":I
    if-nez v2, :cond_1f

    .line 328
    return v3

    .line 330
    :cond_1f
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_ERROR:I

    invoke-interface {v3, p0, v4, v5}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v3

    .line 331
    .local v3, "connectError":I
    if-nez v3, :cond_2c

    .line 332
    return v0

    .line 334
    :cond_2c
    new-instance v0, Landroid/system/ErrnoException;

    const-string v4, "isConnected"

    invoke-direct {v0, v4, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "inetAddress":Ljava/net/InetAddress;
    .end local p2    # "port":I
    .end local p3    # "timeoutMs":I
    .end local p4    # "remainingTimeoutMs":I
    throw v0
    :try_end_34
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_34} :catch_34

    .line 335
    .end local v1    # "pollFds":[Landroid/system/StructPollfd;
    .end local v2    # "rc":I
    .end local v3    # "connectError":I
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "inetAddress":Ljava/net/InetAddress;
    .restart local p2    # "port":I
    .restart local p3    # "timeoutMs":I
    .restart local p4    # "remainingTimeoutMs":I
    :catch_34
    move-exception v0

    .line 336
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 339
    nop

    .line 341
    .local v0, "cause":Landroid/system/ErrnoException;
    invoke-static {p0, p1, p2, p3, v0}, Llibcore/io/IoBridge;->createMessageForException(Ljava/io/FileDescriptor;Ljava/net/InetAddress;IILjava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "detail":Ljava/lang/String;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->ETIMEDOUT:I

    if-ne v2, v3, :cond_4f

    .line 343
    new-instance v2, Ljava/net/SocketTimeoutException;

    invoke-direct {v2, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 344
    .local v2, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v2, v0}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 345
    throw v2

    .line 347
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :cond_4f
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2, v1, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 337
    .end local v1    # "detail":Ljava/lang/String;
    .local v0, "errnoException":Landroid/system/ErrnoException;
    :cond_55
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I
    .registers 5
    .param p0, "isRead"    # Z
    .param p1, "isConnected"    # Z
    .param p2, "errnoException"    # Landroid/system/ErrnoException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 791
    if-eqz p0, :cond_f

    .line 792
    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v0, v1, :cond_a

    .line 793
    const/4 v0, 0x0

    return v0

    .line 795
    :cond_a
    invoke-virtual {p2}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0

    .line 798
    :cond_f
    if-eqz p1, :cond_20

    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ECONNREFUSED:I

    if-eq v0, v1, :cond_18

    goto :goto_20

    .line 799
    :cond_18
    new-instance v0, Ljava/net/PortUnreachableException;

    const-string v1, "ICMP Port Unreachable"

    invoke-direct {v0, v1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 800
    :cond_20
    :goto_20
    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v0, v1, :cond_2f

    .line 801
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    .line 802
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v0, p2}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 803
    throw v0

    .line 805
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :cond_2f
    invoke-virtual {p2}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method private static blacklist maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I
    .registers 4
    .param p0, "isDatagram"    # Z
    .param p1, "errnoException"    # Landroid/system/ErrnoException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    if-eqz p0, :cond_10

    .line 711
    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_18

    .line 712
    new-instance v0, Ljava/net/PortUnreachableException;

    const-string v1, "ICMP Port Unreachable"

    invoke-direct {v0, v1}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_10
    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v0, v1, :cond_18

    .line 718
    const/4 v0, 0x0

    return v0

    .line 721
    :cond_18
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist test-api open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .registers 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 558
    const/4 v0, 0x0

    .line 560
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/16 v2, 0x1b6

    invoke-interface {v1, p0, p1, v2}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 563
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, v0}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 566
    return-object v0

    .line 564
    :cond_19
    new-instance v1, Landroid/system/ErrnoException;

    const-string v2, "open"

    sget v3, Landroid/system/OsConstants;->EISDIR:I

    invoke-direct {v1, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "path":Ljava/lang/String;
    .end local p1    # "flags":I
    throw v1
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_23} :catch_23

    .line 567
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "path":Ljava/lang/String;
    .restart local p1    # "flags":I
    :catch_23
    move-exception v1

    .line 569
    .local v1, "errnoException":Landroid/system/ErrnoException;
    if-eqz v0, :cond_2c

    .line 570
    :try_start_26
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2c

    .line 572
    :catch_2a
    move-exception v2

    goto :goto_2d

    .line 573
    :cond_2c
    :goto_2c
    nop

    .line 574
    :goto_2d
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 575
    .local v2, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v2, v1}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 576
    throw v2
.end method

.method public static blacklist poll(Ljava/io/FileDescriptor;II)V
    .registers 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "events"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 859
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/system/StructPollfd;

    new-instance v1, Landroid/system/StructPollfd;

    invoke-direct {v1}, Landroid/system/StructPollfd;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 860
    .local v0, "pollFds":[Landroid/system/StructPollfd;
    aget-object v1, v0, v2

    iput-object p0, v1, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 861
    aget-object v1, v0, v2

    int-to-short v2, p1

    iput-short v2, v1, Landroid/system/StructPollfd;->events:S

    .line 864
    :try_start_14
    invoke-static {v0, p2}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v1

    .line 865
    .local v1, "ret":I
    if-eqz v1, :cond_1b

    .line 870
    .end local v1    # "ret":I
    goto :goto_27

    .line 866
    .restart local v1    # "ret":I
    :cond_1b
    new-instance v2, Ljava/net/SocketTimeoutException;

    const-string v3, "Poll timed out"

    invoke-direct {v2, v3}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pollFds":[Landroid/system/StructPollfd;
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "events":I
    .end local p2    # "timeout":I
    throw v2
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_23} :catch_23

    .line 868
    .end local v1    # "ret":I
    .restart local v0    # "pollFds":[Landroid/system/StructPollfd;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "events":I
    .restart local p2    # "timeout":I
    :catch_23
    move-exception v1

    .line 869
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    .line 871
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_27
    return-void
.end method

.method private static blacklist postRecvfrom(ZLjava/net/DatagramPacket;Ljava/net/InetSocketAddress;I)I
    .registers 6
    .param p0, "isRead"    # Z
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .param p2, "srcAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "byteCount"    # I

    .line 775
    if-eqz p0, :cond_6

    if-nez p3, :cond_6

    .line 776
    const/4 v0, -0x1

    return v0

    .line 778
    :cond_6
    if-eqz p1, :cond_27

    .line 779
    invoke-virtual {p1, p3}, Ljava/net/DatagramPacket;->setReceivedLength(I)V

    .line 780
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 783
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 784
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 787
    :cond_27
    return p3
.end method

.method public static blacklist test-api read(Ljava/io/FileDescriptor;[BII)I
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    array-length v0, p1

    invoke-static {v0, p2, p3}, Llibcore/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 600
    const/4 v0, 0x0

    if-nez p3, :cond_8

    .line 601
    return v0

    .line 604
    :cond_8
    :try_start_8
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0, p1, p2, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_e} :catch_13

    .line 605
    .local v0, "readCount":I
    if-nez v0, :cond_12

    .line 606
    const/4 v1, -0x1

    return v1

    .line 608
    :cond_12
    return v0

    .line 609
    .end local v0    # "readCount":I
    :catch_13
    move-exception v1

    .line 610
    .local v1, "errnoException":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v2, v3, :cond_1b

    .line 612
    return v0

    .line 614
    :cond_1b
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    .registers 9
    .param p0, "isRead"    # Z
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # I
    .param p4, "packet"    # Ljava/net/DatagramPacket;
    .param p5, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    if-eqz p4, :cond_a

    :try_start_2
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0}, Ljava/net/InetSocketAddress;-><init>()V

    goto :goto_b

    .line 768
    :catch_8
    move-exception v0

    goto :goto_16

    .line 765
    :cond_a
    const/4 v0, 0x0

    .line 766
    .local v0, "srcAddress":Ljava/net/InetSocketAddress;
    :goto_b
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p1, p2, p3, v0}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v1

    .line 767
    .local v1, "result":I
    invoke-static {p0, p4, v0, v1}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;Ljava/net/InetSocketAddress;I)I

    move-result v2
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_15} :catch_8

    .line 770
    .end local v0    # "srcAddress":Ljava/net/InetSocketAddress;
    .end local v1    # "result":I
    .local v2, "result":I
    goto :goto_1a

    .line 769
    .end local v2    # "result":I
    .local v0, "errnoException":Landroid/system/ErrnoException;
    :goto_16
    invoke-static {p0, p5, v0}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I

    move-result v2

    .line 771
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    .restart local v2    # "result":I
    :goto_1a
    return v2
.end method

.method public static blacklist recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I
    .registers 16
    .param p0, "isRead"    # Z
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "flags"    # I
    .param p6, "packet"    # Ljava/net/DatagramPacket;
    .param p7, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    if-eqz p6, :cond_f

    :try_start_2
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_10

    .line 755
    :catch_8
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    goto :goto_29

    .line 752
    :cond_f
    const/4 v0, 0x0

    :goto_10
    move-object v7, v0

    .line 753
    .local v7, "srcAddress":Ljava/net/InetSocketAddress;
    :try_start_11
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_13} :catch_23

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "bytes":[B
    .end local p3    # "byteOffset":I
    .end local p4    # "byteCount":I
    .end local p5    # "flags":I
    .local v2, "fd":Ljava/io/FileDescriptor;
    .local v3, "bytes":[B
    .local v4, "byteOffset":I
    .local v5, "byteCount":I
    .local v6, "flags":I
    :try_start_18
    invoke-interface/range {v1 .. v7}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result p1

    .line 754
    .local p1, "result":I
    invoke-static {p0, p6, v7, p1}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;Ljava/net/InetSocketAddress;I)I

    move-result p2
    :try_end_20
    .catch Landroid/system/ErrnoException; {:try_start_18 .. :try_end_20} :catch_21

    .line 757
    .end local v7    # "srcAddress":Ljava/net/InetSocketAddress;
    .end local p1    # "result":I
    .local p2, "result":I
    goto :goto_2d

    .line 755
    .end local p2    # "result":I
    :catch_21
    move-exception v0

    goto :goto_29

    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "bytes":[B
    .end local v4    # "byteOffset":I
    .end local v5    # "byteCount":I
    .end local v6    # "flags":I
    .local p1, "fd":Ljava/io/FileDescriptor;
    .local p2, "bytes":[B
    .restart local p3    # "byteOffset":I
    .restart local p4    # "byteCount":I
    .restart local p5    # "flags":I
    :catch_23
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 756
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "bytes":[B
    .end local p3    # "byteOffset":I
    .end local p4    # "byteCount":I
    .end local p5    # "flags":I
    .local v0, "errnoException":Landroid/system/ErrnoException;
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "bytes":[B
    .restart local v4    # "byteOffset":I
    .restart local v5    # "byteCount":I
    .restart local v6    # "flags":I
    :goto_29
    invoke-static {p0, p7, v0}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I

    move-result p2

    .line 758
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    .local p2, "result":I
    :goto_2d
    return p2
.end method

.method public static blacklist sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .registers 14
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "flags"    # I
    .param p3, "inetAddress"    # Ljava/net/InetAddress;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 696
    .local v1, "isDatagram":Z
    :goto_6
    if-nez v1, :cond_f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_f

    .line 697
    return v0

    .line 701
    :cond_f
    :try_start_f
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_11} :catch_1e

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .end local p2    # "flags":I
    .end local p3    # "inetAddress":Ljava/net/InetAddress;
    .end local p4    # "port":I
    .local v4, "fd":Ljava/io/FileDescriptor;
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    .local v6, "flags":I
    .local v7, "inetAddress":Ljava/net/InetAddress;
    .local v8, "port":I
    :try_start_16
    invoke-interface/range {v3 .. v8}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result p0
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_16 .. :try_end_1a} :catch_1b

    .line 704
    .local p0, "result":I
    goto :goto_2a

    .line 702
    .end local p0    # "result":I
    :catch_1b
    move-exception v0

    move-object p0, v0

    goto :goto_25

    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "flags":I
    .end local v7    # "inetAddress":Ljava/net/InetAddress;
    .end local v8    # "port":I
    .local p0, "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p2    # "flags":I
    .restart local p3    # "inetAddress":Ljava/net/InetAddress;
    .restart local p4    # "port":I
    :catch_1e
    move-exception v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move-object p0, v0

    .line 703
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .end local p2    # "flags":I
    .end local p3    # "inetAddress":Ljava/net/InetAddress;
    .end local p4    # "port":I
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "flags":I
    .restart local v7    # "inetAddress":Ljava/net/InetAddress;
    .restart local v8    # "port":I
    .local p0, "errnoException":Landroid/system/ErrnoException;
    :goto_25
    invoke-static {v1, p0}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I

    move-result p1

    move p0, p1

    .line 705
    .local p0, "result":I
    :goto_2a
    return p0
.end method

.method public static blacklist sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .registers 17
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .param p4, "flags"    # I
    .param p5, "inetAddress"    # Ljava/net/InetAddress;
    .param p6, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    const/4 v0, 0x0

    if-eqz p5, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 681
    .local v1, "isDatagram":Z
    :goto_6
    if-nez v1, :cond_b

    if-gtz p3, :cond_b

    .line 682
    return v0

    .line 686
    :cond_b
    :try_start_b
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    move-result v0
    :try_end_19
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_19} :catch_1a

    .line 689
    .local v0, "result":I
    goto :goto_20

    .line 687
    .end local v0    # "result":I
    :catch_1a
    move-exception v0

    .line 688
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-static {v1, v0}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I

    move-result v2

    move v0, v2

    .line 690
    .local v0, "result":I
    :goto_20
    return v0
.end method

.method public static blacklist setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 442
    :try_start_0
    invoke-static {p0, p1, p2}, Llibcore/io/IoBridge;->setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_5

    .line 445
    nop

    .line 446
    return-void

    .line 443
    :catch_5
    move-exception v0

    .line 444
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static blacklist setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .registers 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 450
    sparse-switch p1, :sswitch_data_1d2

    .line 534
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown socket option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :sswitch_1c
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 518
    .local v0, "millis":I
    int-to-long v1, v0

    invoke-static {v1, v2}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v1

    .line 519
    .local v1, "tv":Landroid/system/StructTimeval;
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v2, p0, v3, v4, v1}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 520
    return-void

    .line 505
    .end local v0    # "millis":I
    .end local v1    # "tv":Landroid/system/StructTimeval;
    :sswitch_32
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_OOBINLINE:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 506
    return-void

    .line 508
    :sswitch_47
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVBUF:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 509
    return-void

    .line 514
    :sswitch_58
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_SNDBUF:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 515
    return-void

    .line 495
    :sswitch_69
    const/4 v0, 0x0

    .line 496
    .local v0, "on":Z
    const/4 v1, 0x0

    .line 497
    .local v1, "seconds":I
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_7e

    .line 498
    const/4 v0, 0x1

    .line 499
    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0xffff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 501
    :cond_7e
    new-instance v2, Landroid/system/StructLinger;

    invoke-static {v0}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v3

    invoke-direct {v2, v3, v1}, Landroid/system/StructLinger;-><init>(II)V

    .line 502
    .local v2, "linger":Landroid/system/StructLinger;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_LINGER:I

    invoke-interface {v3, p0, v4, v5, v2}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    .line 503
    return-void

    .line 489
    .end local v0    # "on":Z
    .end local v1    # "seconds":I
    .end local v2    # "linger":Landroid/system/StructLinger;
    :sswitch_91
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_BROADCAST:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 490
    return-void

    .line 463
    :sswitch_a6
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v2, Landroid/system/OsConstants;->IP_MULTICAST_IF:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    .line 464
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v2, Landroid/system/OsConstants;->IPV6_MULTICAST_IF:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 465
    return-void

    .line 481
    :sswitch_c7
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v2, Landroid/system/OsConstants;->IP_TTL:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 482
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v2, Landroid/system/OsConstants;->IPV6_UNICAST_HOPS:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 483
    return-void

    .line 527
    :sswitch_e8
    move-object v0, p2

    check-cast v0, Landroid/system/StructGroupReq;

    .line 528
    .local v0, "groupReq":Landroid/system/StructGroupReq;
    iget-object v1, v0, Landroid/system/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_f4

    sget v1, Landroid/system/OsConstants;->IPPROTO_IP:I

    goto :goto_f6

    :cond_f4
    sget v1, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    .line 529
    .local v1, "level":I
    :goto_f6
    const/16 v2, 0x13

    if-ne p1, v2, :cond_fd

    sget v2, Landroid/system/OsConstants;->MCAST_JOIN_GROUP:I

    goto :goto_ff

    :cond_fd
    sget v2, Landroid/system/OsConstants;->MCAST_LEAVE_GROUP:I

    .line 530
    .local v2, "op":I
    :goto_ff
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p0, v1, v2, v0}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V

    .line 531
    return-void

    .line 470
    .end local v0    # "groupReq":Landroid/system/StructGroupReq;
    .end local v1    # "level":I
    .end local v2    # "op":I
    :sswitch_105
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v0

    .line 471
    .local v0, "enable":I
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v3, Landroid/system/OsConstants;->IP_MULTICAST_LOOP:I

    invoke-interface {v1, p0, v2, v3, v0}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    .line 472
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_LOOP:I

    invoke-interface {v1, p0, v2, v3, v0}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 473
    return-void

    .line 477
    .end local v0    # "enable":I
    :sswitch_125
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v2, Landroid/system/OsConstants;->IP_MULTICAST_TTL:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    .line 478
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v2, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 479
    return-void

    .line 452
    :sswitch_146
    move-object v0, p2

    check-cast v0, Ljava/net/InetAddress;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 453
    .local v0, "nif":Ljava/net/NetworkInterface;
    if-eqz v0, :cond_16a

    .line 458
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v3, Landroid/system/OsConstants;->IP_MULTICAST_IF:I

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    invoke-interface {v1, p0, v2, v3, v4}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    .line 459
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_IF:I

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    invoke-interface {v1, p0, v2, v3, v4}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 460
    return-void

    .line 454
    :cond_16a
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "bad argument for IP_MULTICAST_IF : address not bound to any interface"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    .end local v0    # "nif":Ljava/net/NetworkInterface;
    :sswitch_172
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_KEEPALIVE:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 493
    return-void

    .line 511
    :sswitch_187
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_REUSEADDR:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 512
    return-void

    .line 485
    :sswitch_19c
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v2, Landroid/system/OsConstants;->IP_TOS:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 486
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    sget v2, Landroid/system/OsConstants;->IPV6_TCLASS:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 487
    return-void

    .line 522
    :sswitch_1bd
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v2, Landroid/system/OsConstants;->TCP_NODELAY:I

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 523
    return-void

    :sswitch_data_1d2
    .sparse-switch
        0x1 -> :sswitch_1bd
        0x3 -> :sswitch_19c
        0x4 -> :sswitch_187
        0x8 -> :sswitch_172
        0x10 -> :sswitch_146
        0x11 -> :sswitch_125
        0x12 -> :sswitch_105
        0x13 -> :sswitch_e8
        0x14 -> :sswitch_e8
        0x19 -> :sswitch_c7
        0x1f -> :sswitch_a6
        0x20 -> :sswitch_91
        0x80 -> :sswitch_69
        0x1001 -> :sswitch_58
        0x1002 -> :sswitch_47
        0x1003 -> :sswitch_32
        0x1006 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static blacklist socket(III)Ljava/io/FileDescriptor;
    .registers 5
    .param p0, "domain"    # I
    .param p1, "type"    # I
    .param p2, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 840
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6} :catch_7

    .line 842
    .local v0, "fd":Ljava/io/FileDescriptor;
    return-object v0

    .line 843
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    :catch_7
    move-exception v0

    .line 844
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist test-api write(Ljava/io/FileDescriptor;[BII)V
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    array-length v0, p1

    invoke-static {v0, p2, p3}, Llibcore/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 641
    if-nez p3, :cond_7

    .line 642
    return-void

    .line 645
    :cond_7
    :goto_7
    if-lez p3, :cond_18

    .line 646
    :try_start_9
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_f} :catch_12

    .line 647
    .local v0, "bytesWritten":I
    sub-int/2addr p3, v0

    .line 648
    add-int/2addr p2, v0

    .line 649
    .end local v0    # "bytesWritten":I
    goto :goto_7

    .line 650
    :catch_12
    move-exception v0

    .line 651
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 652
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :cond_18
    nop

    .line 653
    return-void
.end method
