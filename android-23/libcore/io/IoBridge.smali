.class public final Llibcore/io/IoBridge;
.super Ljava/lang/Object;
.source "IoBridge.java"


# static fields
.field public static final JAVA_IP_MULTICAST_TTL:I = 0x11

.field public static final JAVA_MCAST_BLOCK_SOURCE:I = 0x17

.field public static final JAVA_MCAST_JOIN_GROUP:I = 0x13

.field public static final JAVA_MCAST_JOIN_SOURCE_GROUP:I = 0x15

.field public static final JAVA_MCAST_LEAVE_GROUP:I = 0x14

.field public static final JAVA_MCAST_LEAVE_SOURCE_GROUP:I = 0x16

.field public static final JAVA_MCAST_UNBLOCK_SOURCE:I = 0x18


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static available(Ljava/io/FileDescriptor;)I
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 57
    :try_start_0
    new-instance v0, Landroid/util/MutableInt;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v2}, Landroid/util/MutableInt;-><init>(I)V

    #@7
    .line 58
    .local v0, "available":Landroid/util/MutableInt;
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@9
    sget v3, Landroid/system/OsConstants;->FIONREAD:I

    #@b
    invoke-interface {v2, p0, v3, v0}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I

    #@e
    .line 59
    iget v2, v0, Landroid/util/MutableInt;->value:I

    #@10
    if-gez v2, :cond_0

    #@12
    .line 66
    const/4 v2, 0x0

    #@13
    iput v2, v0, Landroid/util/MutableInt;->value:I

    #@15
    .line 68
    :cond_0
    iget v2, v0, Landroid/util/MutableInt;->value:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    return v2

    #@18
    .line 69
    .end local v0    # "available":Landroid/util/MutableInt;
    :catch_0
    move-exception v1

    #@19
    .line 70
    .local v1, "errnoException":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    #@1b
    sget v3, Landroid/system/OsConstants;->ENOTTY:I

    #@1d
    if-ne v2, v3, :cond_1

    #@1f
    .line 72
    return v4

    #@20
    .line 74
    :cond_1
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@23
    move-result-object v2

    #@24
    throw v2
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    instance-of v4, p1, Ljava/net/Inet6Address;

    #@2
    if-eqz v4, :cond_1

    #@4
    move-object v2, p1

    #@5
    .line 81
    check-cast v2, Ljava/net/Inet6Address;

    #@7
    .line 82
    .local v2, "inet6Address":Ljava/net/Inet6Address;
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getScopeId()I

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_1

    #@d
    invoke-virtual {v2}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 85
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    #@16
    move-result-object v3

    #@17
    .line 86
    .local v3, "nif":Ljava/net/NetworkInterface;
    if-nez v3, :cond_0

    #@19
    .line 87
    new-instance v4, Ljava/net/SocketException;

    #@1b
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "Can\'t bind to a link-local address without a scope id: "

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@32
    throw v4

    #@33
    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    #@3e
    move-result v6

    #@3f
    invoke-static {v4, v5, v6}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    move-result-object p1

    #@43
    .line 97
    .end local v2    # "inet6Address":Ljava/net/Inet6Address;
    .end local v3    # "nif":Ljava/net/NetworkInterface;
    :cond_1
    :try_start_1
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@45
    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    #@48
    .line 79
    return-void

    #@49
    .line 91
    .restart local v2    # "inet6Address":Ljava/net/Inet6Address;
    .restart local v3    # "nif":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v1

    #@4a
    .line 92
    .local v1, "ex":Ljava/net/UnknownHostException;
    new-instance v4, Ljava/lang/AssertionError;

    #@4c
    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@4f
    throw v4

    #@50
    .line 98
    .end local v1    # "ex":Ljava/net/UnknownHostException;
    .end local v2    # "inet6Address":Ljava/net/Inet6Address;
    .end local v3    # "nif":Ljava/net/NetworkInterface;
    :catch_1
    move-exception v0

    #@51
    .line 99
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v4, Ljava/net/BindException;

    #@53
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-direct {v4, v5, v0}, Ljava/net/BindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5a
    throw v4
.end method

.method private static booleanFromInt(I)Z
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 306
    if-eqz p0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    return v0
.end method

.method private static booleanToInt(Z)I
    .locals 1
    .param p0, "b"    # Z

    #@0
    .prologue
    .line 310
    if-eqz p0, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public static closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 197
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    #@b
    move-result v1

    #@c
    .line 198
    .local v1, "intFd":I
    const/4 v3, -0x1

    #@d
    invoke-virtual {p0, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    #@10
    .line 199
    new-instance v2, Ljava/io/FileDescriptor;

    #@12
    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    #@15
    .line 200
    .local v2, "oldFd":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    #@18
    .line 201
    invoke-static {v2}, Llibcore/io/AsynchronousCloseMonitor;->signalBlockedThreads(Ljava/io/FileDescriptor;)V

    #@1b
    .line 203
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@1d
    invoke-interface {v3, v2}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 193
    :goto_0
    return-void

    #@21
    .line 195
    .end local v1    # "intFd":I
    .end local v2    # "oldFd":Ljava/io/FileDescriptor;
    :cond_0
    return-void

    #@22
    .line 204
    .restart local v1    # "intFd":I
    .restart local v2    # "oldFd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    #@23
    .local v0, "errnoException":Landroid/system/ErrnoException;
    goto :goto_0
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-static {p0, p1, p2, v1}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 108
    return-void

    #@5
    .line 111
    :catch_0
    move-exception v0

    #@6
    .line 112
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .locals 6
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

    #@0
    .prologue
    .line 122
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Llibcore/io/IoBridge;->connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 120
    return-void

    #@4
    .line 129
    :catch_0
    move-exception v1

    #@5
    .line 130
    .local v1, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/net/SocketException;

    #@7
    invoke-direct {v4, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    #@a
    throw v4

    #@b
    .line 127
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v3

    #@c
    .line 128
    .local v3, "ex":Ljava/net/SocketTimeoutException;
    throw v3

    #@d
    .line 125
    .end local v3    # "ex":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v2

    #@e
    .line 126
    .local v2, "ex":Ljava/net/SocketException;
    throw v2

    #@f
    .line 123
    .end local v2    # "ex":Ljava/net/SocketException;
    :catch_3
    move-exception v0

    #@10
    .line 124
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v4, Ljava/net/ConnectException;

    #@12
    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    invoke-direct {v4, v5, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19
    throw v4
.end method

.method private static connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;
    .locals 3
    .param p0, "inetAddress"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "timeoutMs"    # I
    .param p3, "cause"    # Landroid/system/ErrnoException;

    #@0
    .prologue
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "failed to connect to "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, " (port "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, ")"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 177
    .local v0, "detail":Ljava/lang/String;
    if-lez p2, :cond_0

    #@28
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, " after "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    const-string/jumbo v2, "ms"

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    .line 180
    :cond_0
    if-eqz p3, :cond_1

    #@49
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    const-string/jumbo v2, ": "

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {p3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    .line 183
    :cond_1
    return-object v0
.end method

.method private static connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .locals 9
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

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 136
    if-nez p3, :cond_0

    #@4
    .line 137
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@6
    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@9
    .line 138
    return-void

    #@a
    .line 149
    :cond_0
    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    #@d
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@10
    move-result-wide v4

    #@11
    int-to-long v6, p3

    #@12
    add-long v2, v4, v6

    #@14
    .line 154
    .local v2, "finishTimeMs":J
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@16
    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@19
    .line 155
    const/4 v4, 0x1

    #@1a
    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 156
    return-void

    #@1e
    .line 157
    :catch_0
    move-exception v0

    #@1f
    .line 158
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    #@21
    sget v5, Landroid/system/OsConstants;->EINPROGRESS:I

    #@23
    if-eq v4, v5, :cond_2

    #@25
    .line 159
    throw v0

    #@26
    .line 171
    .local v1, "remainingTimeoutMs":I
    :cond_1
    invoke-static {p0, p1, p2, p3, v1}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_3

    #@2c
    .line 167
    .end local v1    # "remainingTimeoutMs":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2f
    move-result-wide v4

    #@30
    sub-long v4, v2, v4

    #@32
    long-to-int v1, v4

    #@33
    .line 168
    .restart local v1    # "remainingTimeoutMs":I
    if-gtz v1, :cond_1

    #@35
    .line 169
    new-instance v4, Ljava/net/SocketTimeoutException;

    #@37
    const/4 v5, 0x0

    #@38
    invoke-static {p1, p2, p3, v5}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v4

    #@40
    .line 172
    :cond_3
    invoke-static {p0, v8}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    #@43
    .line 134
    return-void
.end method

.method private static getGroupSourceReqOp(I)I
    .locals 3
    .param p0, "javaValue"    # I

    #@0
    .prologue
    .line 412
    packed-switch p0, :pswitch_data_0

    #@3
    .line 422
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown java value for setsocketopt op lookup: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 422
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1c
    throw v0

    #@1d
    .line 414
    :pswitch_0
    sget v0, Landroid/system/OsConstants;->MCAST_JOIN_SOURCE_GROUP:I

    #@1f
    return v0

    #@20
    .line 416
    :pswitch_1
    sget v0, Landroid/system/OsConstants;->MCAST_LEAVE_SOURCE_GROUP:I

    #@22
    return v0

    #@23
    .line 418
    :pswitch_2
    sget v0, Landroid/system/OsConstants;->MCAST_BLOCK_SOURCE:I

    #@25
    return v0

    #@26
    .line 420
    :pswitch_3
    sget v0, Landroid/system/OsConstants;->MCAST_UNBLOCK_SOURCE:I

    #@28
    return v0

    #@29
    .line 412
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 625
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    #@5
    move-result-object v3

    #@6
    .line 626
    .local v3, "sa":Ljava/net/SocketAddress;
    move-object v0, v3

    #@7
    check-cast v0, Ljava/net/InetSocketAddress;

    #@9
    move-object v2, v0

    #@a
    .line 627
    .local v2, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v4

    #@e
    return-object v4

    #@f
    .line 628
    .end local v2    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "sa":Ljava/net/SocketAddress;
    :catch_0
    move-exception v1

    #@10
    .line 629
    .local v1, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@13
    move-result-object v4

    #@14
    throw v4
.end method

.method public static getSocketLocalPort(Ljava/io/FileDescriptor;)I
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 635
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    #@5
    move-result-object v3

    #@6
    .line 636
    .local v3, "sa":Ljava/net/SocketAddress;
    move-object v0, v3

    #@7
    check-cast v0, Ljava/net/InetSocketAddress;

    #@9
    move-object v2, v0

    #@a
    .line 637
    .local v2, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v4

    #@e
    return v4

    #@f
    .line 638
    .end local v2    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "sa":Ljava/net/SocketAddress;
    :catch_0
    move-exception v1

    #@10
    .line 639
    .local v1, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@13
    move-result-object v4

    #@14
    throw v4
.end method

.method public static getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    :try_start_0
    invoke-static {p0, p1}, Llibcore/io/IoBridge;->getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 253
    :catch_0
    move-exception v0

    #@6
    .line 254
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@9
    move-result-object v1

    #@a
    throw v1
.end method

.method private static getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 301
    new-instance v1, Ljava/net/SocketException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Unknown socket option: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 262
    :sswitch_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@1f
    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    #@21
    sget v3, Landroid/system/OsConstants;->IP_MULTICAST_IF:I

    #@23
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 265
    :sswitch_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2a
    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    #@2c
    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_IF:I

    #@2e
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@31
    move-result v1

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v1

    #@36
    return-object v1

    #@37
    .line 269
    :sswitch_2
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@39
    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    #@3b
    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_LOOP:I

    #@3d
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@40
    move-result v1

    #@41
    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    #@44
    move-result v1

    #@45
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@48
    move-result-object v1

    #@49
    return-object v1

    #@4a
    .line 273
    :sswitch_3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@4c
    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    #@4e
    sget v3, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    #@50
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@53
    move-result v1

    #@54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v1

    #@58
    return-object v1

    #@59
    .line 277
    :sswitch_4
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@5b
    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    #@5d
    sget v3, Landroid/system/OsConstants;->IPV6_TCLASS:I

    #@5f
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@62
    move-result v1

    #@63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v1

    #@67
    return-object v1

    #@68
    .line 279
    :sswitch_5
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@6a
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@6c
    sget v3, Landroid/system/OsConstants;->SO_BROADCAST:I

    #@6e
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@71
    move-result v1

    #@72
    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    #@75
    move-result v1

    #@76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@79
    move-result-object v1

    #@7a
    return-object v1

    #@7b
    .line 281
    :sswitch_6
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@7d
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@7f
    sget v3, Landroid/system/OsConstants;->SO_KEEPALIVE:I

    #@81
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@84
    move-result v1

    #@85
    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    #@88
    move-result v1

    #@89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8c
    move-result-object v1

    #@8d
    return-object v1

    #@8e
    .line 283
    :sswitch_7
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@90
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@92
    sget v3, Landroid/system/OsConstants;->SO_LINGER:I

    #@94
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    #@97
    move-result-object v0

    #@98
    .line 284
    .local v0, "linger":Landroid/system/StructLinger;
    invoke-virtual {v0}, Landroid/system/StructLinger;->isOn()Z

    #@9b
    move-result v1

    #@9c
    if-nez v1, :cond_0

    #@9e
    .line 285
    const/4 v1, 0x0

    #@9f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a2
    move-result-object v1

    #@a3
    return-object v1

    #@a4
    .line 287
    :cond_0
    iget v1, v0, Landroid/system/StructLinger;->l_linger:I

    #@a6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v1

    #@aa
    return-object v1

    #@ab
    .line 289
    .end local v0    # "linger":Landroid/system/StructLinger;
    :sswitch_8
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@ad
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@af
    sget v3, Landroid/system/OsConstants;->SO_OOBINLINE:I

    #@b1
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@b4
    move-result v1

    #@b5
    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    #@b8
    move-result v1

    #@b9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@bc
    move-result-object v1

    #@bd
    return-object v1

    #@be
    .line 291
    :sswitch_9
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@c0
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@c2
    sget v3, Landroid/system/OsConstants;->SO_RCVBUF:I

    #@c4
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@c7
    move-result v1

    #@c8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cb
    move-result-object v1

    #@cc
    return-object v1

    #@cd
    .line 293
    :sswitch_a
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@cf
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@d1
    sget v3, Landroid/system/OsConstants;->SO_REUSEADDR:I

    #@d3
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@d6
    move-result v1

    #@d7
    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    #@da
    move-result v1

    #@db
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@de
    move-result-object v1

    #@df
    return-object v1

    #@e0
    .line 295
    :sswitch_b
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@e2
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@e4
    sget v3, Landroid/system/OsConstants;->SO_SNDBUF:I

    #@e6
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@e9
    move-result v1

    #@ea
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ed
    move-result-object v1

    #@ee
    return-object v1

    #@ef
    .line 297
    :sswitch_c
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@f1
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@f3
    sget v3, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    #@f5
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    #@f8
    move-result-object v1

    #@f9
    invoke-virtual {v1}, Landroid/system/StructTimeval;->toMillis()J

    #@fc
    move-result-wide v2

    #@fd
    long-to-int v1, v2

    #@fe
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@101
    move-result-object v1

    #@102
    return-object v1

    #@103
    .line 299
    :sswitch_d
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@105
    sget v2, Landroid/system/OsConstants;->IPPROTO_TCP:I

    #@107
    sget v3, Landroid/system/OsConstants;->TCP_NODELAY:I

    #@109
    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@10c
    move-result v1

    #@10d
    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    #@110
    move-result v1

    #@111
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@114
    move-result-object v1

    #@115
    return-object v1

    #@116
    .line 259
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x8 -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x80 -> :sswitch_7
        0x1001 -> :sswitch_b
        0x1002 -> :sswitch_9
        0x1003 -> :sswitch_8
        0x1006 -> :sswitch_c
    .end sparse-switch
.end method

.method public static isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    .locals 10
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

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 212
    const/4 v6, 0x1

    #@3
    :try_start_0
    new-array v4, v6, [Landroid/system/StructPollfd;

    #@5
    new-instance v6, Landroid/system/StructPollfd;

    #@7
    invoke-direct {v6}, Landroid/system/StructPollfd;-><init>()V

    #@a
    const/4 v7, 0x0

    #@b
    aput-object v6, v4, v7

    #@d
    .line 213
    .local v4, "pollFds":[Landroid/system/StructPollfd;
    const/4 v6, 0x0

    #@e
    aget-object v6, v4, v6

    #@10
    iput-object p0, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    #@12
    .line 214
    const/4 v6, 0x0

    #@13
    aget-object v6, v4, v6

    #@15
    sget v7, Landroid/system/OsConstants;->POLLOUT:I

    #@17
    int-to-short v7, v7

    #@18
    iput-short v7, v6, Landroid/system/StructPollfd;->events:S

    #@1a
    .line 215
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@1c
    invoke-interface {v6, v4, p4}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    #@1f
    move-result v5

    #@20
    .line 216
    .local v5, "rc":I
    if-nez v5, :cond_0

    #@22
    .line 217
    return v8

    #@23
    .line 219
    :cond_0
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@25
    sget v7, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@27
    sget v8, Landroid/system/OsConstants;->SO_ERROR:I

    #@29
    invoke-interface {v6, p0, v7, v8}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@2c
    move-result v1

    #@2d
    .line 220
    .local v1, "connectError":I
    if-nez v1, :cond_1

    #@2f
    .line 221
    return v9

    #@30
    .line 223
    :cond_1
    new-instance v6, Landroid/system/ErrnoException;

    #@32
    const-string/jumbo v7, "isConnected"

    #@35
    invoke-direct {v6, v7, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    #@38
    throw v6
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 224
    .end local v1    # "connectError":I
    .end local v4    # "pollFds":[Landroid/system/StructPollfd;
    .end local v5    # "rc":I
    :catch_0
    move-exception v3

    #@3a
    .line 225
    .local v3, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    #@3d
    move-result v6

    #@3e
    if-nez v6, :cond_2

    #@40
    .line 226
    new-instance v6, Ljava/net/SocketException;

    #@42
    const-string/jumbo v7, "Socket closed"

    #@45
    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@48
    throw v6

    #@49
    .line 228
    :cond_2
    move-object v0, v3

    #@4a
    .line 230
    .local v0, "cause":Landroid/system/ErrnoException;
    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILandroid/system/ErrnoException;)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 231
    .local v2, "detail":Ljava/lang/String;
    iget v6, v0, Landroid/system/ErrnoException;->errno:I

    #@50
    sget v7, Landroid/system/OsConstants;->ETIMEDOUT:I

    #@52
    if-ne v6, v7, :cond_3

    #@54
    .line 232
    new-instance v6, Ljava/net/SocketTimeoutException;

    #@56
    invoke-direct {v6, v2, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@59
    throw v6

    #@5a
    .line 234
    :cond_3
    new-instance v6, Ljava/net/ConnectException;

    #@5c
    invoke-direct {v6, v2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5f
    throw v6
.end method

.method private static maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I
    .locals 2
    .param p0, "isRead"    # Z
    .param p1, "isConnected"    # Z
    .param p2, "errnoException"    # Landroid/system/ErrnoException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 584
    if-eqz p0, :cond_1

    #@2
    .line 585
    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    #@4
    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 586
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 588
    :cond_0
    invoke-virtual {p2}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@d
    move-result-object v0

    #@e
    throw v0

    #@f
    .line 591
    :cond_1
    if-eqz p1, :cond_2

    #@11
    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    #@13
    sget v1, Landroid/system/OsConstants;->ECONNREFUSED:I

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 592
    new-instance v0, Ljava/net/PortUnreachableException;

    #@19
    const-string/jumbo v1, ""

    #@1c
    invoke-direct {v0, v1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
    throw v0

    #@20
    .line 593
    :cond_2
    iget v0, p2, Landroid/system/ErrnoException;->errno:I

    #@22
    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    #@24
    if-ne v0, v1, :cond_3

    #@26
    .line 594
    new-instance v0, Ljava/net/SocketTimeoutException;

    #@28
    invoke-direct {v0, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v0

    #@2c
    .line 596
    :cond_3
    invoke-virtual {p2}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@2f
    move-result-object v0

    #@30
    throw v0
.end method

.method private static maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I
    .locals 3
    .param p0, "isDatagram"    # Z
    .param p1, "errnoException"    # Landroid/system/ErrnoException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 531
    if-eqz p0, :cond_1

    #@3
    .line 532
    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    #@5
    sget v1, Landroid/system/OsConstants;->ECONNRESET:I

    #@7
    if-eq v0, v1, :cond_0

    #@9
    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    #@b
    sget v1, Landroid/system/OsConstants;->ECONNREFUSED:I

    #@d
    if-ne v0, v1, :cond_2

    #@f
    .line 533
    :cond_0
    return v2

    #@10
    .line 536
    :cond_1
    iget v0, p1, Landroid/system/ErrnoException;->errno:I

    #@12
    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    #@14
    if-ne v0, v1, :cond_2

    #@16
    .line 539
    return v2

    #@17
    .line 542
    :cond_2
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@1a
    move-result-object v0

    #@1b
    throw v0
.end method

.method public static open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 434
    const/4 v2, 0x0

    #@1
    .line 437
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    sget v5, Landroid/system/OsConstants;->O_ACCMODE:I

    #@3
    and-int/2addr v5, p1

    #@4
    sget v6, Landroid/system/OsConstants;->O_RDONLY:I

    #@6
    if-ne v5, v6, :cond_1

    #@8
    const/4 v4, 0x0

    #@9
    .line 438
    .local v4, "mode":I
    :goto_0
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@b
    invoke-interface {v5, p0, p1, v4}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@e
    move-result-object v2

    #@f
    .line 441
    .local v2, "fd":Ljava/io/FileDescriptor;
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@11
    invoke-interface {v5, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@14
    move-result-object v5

    #@15
    iget v5, v5, Landroid/system/StructStat;->st_mode:I

    #@17
    invoke-static {v5}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_2

    #@1d
    .line 442
    new-instance v5, Landroid/system/ErrnoException;

    #@1f
    const-string/jumbo v6, "open"

    #@22
    sget v7, Landroid/system/OsConstants;->EISDIR:I

    #@24
    invoke-direct {v5, v6, v7}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    #@27
    throw v5
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 445
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "mode":I
    :catch_0
    move-exception v0

    #@29
    .line 447
    .local v0, "errnoException":Landroid/system/ErrnoException;
    if-eqz v2, :cond_0

    #@2b
    .line 448
    :try_start_1
    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@2e
    .line 452
    :cond_0
    :goto_1
    new-instance v1, Ljava/io/FileNotFoundException;

    #@30
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    const-string/jumbo v6, ": "

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-direct {v1, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@4f
    .line 453
    .local v1, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@52
    .line 454
    throw v1

    #@53
    .line 437
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    .local v2, "fd":Ljava/io/FileDescriptor;
    :cond_1
    const/16 v4, 0x180

    #@55
    .restart local v4    # "mode":I
    goto :goto_0

    #@56
    .line 444
    .local v2, "fd":Ljava/io/FileDescriptor;
    :cond_2
    return-object v2

    #@57
    .line 450
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "mode":I
    .restart local v0    # "errnoException":Landroid/system/ErrnoException;
    :catch_1
    move-exception v3

    #@58
    .local v3, "ignored":Ljava/io/IOException;
    goto :goto_1
.end method

.method private static postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    .locals 1
    .param p0, "isRead"    # Z
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .param p2, "isConnected"    # Z
    .param p3, "srcAddress"    # Ljava/net/InetSocketAddress;
    .param p4, "byteCount"    # I

    #@0
    .prologue
    .line 570
    if-eqz p0, :cond_0

    #@2
    if-nez p4, :cond_0

    #@4
    .line 571
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 573
    :cond_0
    if-eqz p1, :cond_1

    #@8
    .line 574
    invoke-virtual {p1, p4}, Ljava/net/DatagramPacket;->setReceivedLength(I)V

    #@b
    .line 575
    if-nez p2, :cond_1

    #@d
    .line 576
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    #@14
    .line 577
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    #@17
    move-result v0

    #@18
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    #@1b
    .line 580
    :cond_1
    return p4
.end method

.method public static read(Ljava/io/FileDescriptor;[BII)I
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 463
    array-length v2, p1

    #@2
    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@5
    .line 464
    if-nez p3, :cond_0

    #@7
    .line 465
    return v4

    #@8
    .line 468
    :cond_0
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@a
    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    .line 469
    .local v1, "readCount":I
    if-nez v1, :cond_1

    #@10
    .line 470
    const/4 v2, -0x1

    #@11
    return v2

    #@12
    .line 472
    :cond_1
    return v1

    #@13
    .line 473
    .end local v1    # "readCount":I
    :catch_0
    move-exception v0

    #@14
    .line 474
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    #@16
    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    #@18
    if-ne v2, v3, :cond_2

    #@1a
    .line 476
    return v4

    #@1b
    .line 478
    :cond_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@1e
    move-result-object v2

    #@1f
    throw v2
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    .locals 4
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

    #@0
    .prologue
    .line 560
    if-eqz p4, :cond_0

    #@2
    if-eqz p5, :cond_1

    #@4
    :cond_0
    const/4 v2, 0x0

    #@5
    .line 561
    :goto_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@7
    invoke-interface {v3, p1, p2, p3, v2}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    #@a
    move-result v1

    #@b
    .line 562
    .local v1, "result":I
    invoke-static {p0, p4, p5, v2, v1}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I

    #@e
    move-result v1

    #@f
    .line 566
    :goto_1
    return v1

    #@10
    .line 560
    .end local v1    # "result":I
    :cond_1
    new-instance v2, Ljava/net/InetSocketAddress;

    #@12
    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .local v2, "srcAddress":Ljava/net/InetSocketAddress;
    goto :goto_0

    #@16
    .line 563
    .end local v2    # "srcAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v0

    #@17
    .line 564
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-static {p0, p5, v0}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I

    #@1a
    move-result v1

    #@1b
    .restart local v1    # "result":I
    goto :goto_1
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I
    .locals 11
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

    #@0
    .prologue
    .line 548
    if-eqz p6, :cond_0

    #@2
    if-eqz p7, :cond_1

    #@4
    :cond_0
    const/4 v8, 0x0

    #@5
    .line 549
    :goto_0
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@7
    move-object v3, p1

    #@8
    move-object v4, p2

    #@9
    move v5, p3

    #@a
    move v6, p4

    #@b
    move/from16 v7, p5

    #@d
    invoke-interface/range {v2 .. v8}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    #@10
    move-result v10

    #@11
    .line 550
    .local v10, "result":I
    move-object/from16 v0, p6

    #@13
    move/from16 v1, p7

    #@15
    invoke-static {p0, v0, v1, v8, v10}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I

    #@18
    move-result v10

    #@19
    .line 554
    :goto_1
    return v10

    #@1a
    .line 548
    .end local v10    # "result":I
    :cond_1
    new-instance v8, Ljava/net/InetSocketAddress;

    #@1c
    invoke-direct {v8}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .local v8, "srcAddress":Ljava/net/InetSocketAddress;
    goto :goto_0

    #@20
    .line 551
    .end local v8    # "srcAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v9

    #@21
    .line 552
    .local v9, "errnoException":Landroid/system/ErrnoException;
    move/from16 v0, p7

    #@23
    invoke-static {p0, v0, v9}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLandroid/system/ErrnoException;)I

    #@26
    move-result v10

    #@27
    .restart local v10    # "result":I
    goto :goto_1
.end method

.method public static sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 9
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

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 517
    if-eqz p3, :cond_0

    #@3
    const/4 v7, 0x1

    #@4
    .line 518
    .local v7, "isDatagram":Z
    :goto_0
    if-nez v7, :cond_1

    #@6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 519
    return v1

    #@d
    .line 517
    .end local v7    # "isDatagram":Z
    :cond_0
    const/4 v7, 0x0

    #@e
    .restart local v7    # "isDatagram":Z
    goto :goto_0

    #@f
    .line 523
    :cond_1
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@11
    move-object v1, p0

    #@12
    move-object v2, p1

    #@13
    move v3, p2

    #@14
    move-object v4, p3

    #@15
    move v5, p4

    #@16
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v8

    #@1a
    .line 527
    .local v8, "result":I
    :goto_1
    return v8

    #@1b
    .line 524
    .end local v8    # "result":I
    :catch_0
    move-exception v6

    #@1c
    .line 525
    .local v6, "errnoException":Landroid/system/ErrnoException;
    invoke-static {v7, v6}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I

    #@1f
    move-result v8

    #@20
    .restart local v8    # "result":I
    goto :goto_1
.end method

.method public static sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .locals 11
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

    #@0
    .prologue
    .line 503
    if-eqz p5, :cond_0

    #@2
    const/4 v9, 0x1

    #@3
    .line 504
    .local v9, "isDatagram":Z
    :goto_0
    if-nez v9, :cond_1

    #@5
    if-gtz p3, :cond_1

    #@7
    .line 505
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 503
    .end local v9    # "isDatagram":Z
    :cond_0
    const/4 v9, 0x0

    #@a
    .restart local v9    # "isDatagram":Z
    goto :goto_0

    #@b
    .line 509
    :cond_1
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@d
    move-object v1, p0

    #@e
    move-object v2, p1

    #@f
    move v3, p2

    #@10
    move v4, p3

    #@11
    move v5, p4

    #@12
    move-object/from16 v6, p5

    #@14
    move/from16 v7, p6

    #@16
    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v10

    #@1a
    .line 513
    .local v10, "result":I
    :goto_1
    return v10

    #@1b
    .line 510
    .end local v10    # "result":I
    :catch_0
    move-exception v8

    #@1c
    .line 511
    .local v8, "errnoException":Landroid/system/ErrnoException;
    invoke-static {v9, v8}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLandroid/system/ErrnoException;)I

    #@1f
    move-result v10

    #@20
    .restart local v10    # "result":I
    goto :goto_1
.end method

.method public static setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    :try_start_0
    invoke-static {p0, p1, p2}, Llibcore/io/IoBridge;->setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 317
    return-void

    #@4
    .line 320
    :catch_0
    move-exception v0

    #@5
    .line 321
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@8
    move-result-object v1

    #@9
    throw v1
.end method

.method private static setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 407
    new-instance v9, Ljava/net/SocketException;

    #@5
    new-instance v10, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v11, "Unknown socket option: "

    #@d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v10

    #@11
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v10

    #@15
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v10

    #@19
    invoke-direct {v9, v10}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v9

    #@1d
    .line 328
    :sswitch_0
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    #@1f
    const-string/jumbo v10, "Use IP_MULTICAST_IF2 on Android"

    #@22
    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@25
    throw v9

    #@26
    .line 331
    :sswitch_1
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@28
    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    #@2a
    sget v12, Landroid/system/OsConstants;->IP_MULTICAST_IF:I

    #@2c
    move-object v9, p2

    #@2d
    check-cast v9, Ljava/lang/Integer;

    #@2f
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v9

    #@33
    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    #@36
    .line 332
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@38
    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    #@3a
    sget v11, Landroid/system/OsConstants;->IPV6_MULTICAST_IF:I

    #@3c
    check-cast p2, Ljava/lang/Integer;

    #@3e
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@41
    move-result v12

    #@42
    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@45
    .line 333
    return-void

    #@46
    .line 336
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_2
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@48
    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    #@4a
    sget v12, Landroid/system/OsConstants;->IP_MULTICAST_LOOP:I

    #@4c
    move-object v9, p2

    #@4d
    check-cast v9, Ljava/lang/Boolean;

    #@4f
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    #@52
    move-result v9

    #@53
    invoke-static {v9}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    #@56
    move-result v9

    #@57
    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    #@5a
    .line 337
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@5c
    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    #@5e
    sget v11, Landroid/system/OsConstants;->IPV6_MULTICAST_LOOP:I

    #@60
    check-cast p2, Ljava/lang/Boolean;

    #@62
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@65
    move-result v12

    #@66
    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    #@69
    move-result v12

    #@6a
    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@6d
    .line 338
    return-void

    #@6e
    .line 342
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_3
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@70
    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    #@72
    sget v12, Landroid/system/OsConstants;->IP_MULTICAST_TTL:I

    #@74
    move-object v9, p2

    #@75
    check-cast v9, Ljava/lang/Integer;

    #@77
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@7a
    move-result v9

    #@7b
    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    #@7e
    .line 343
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@80
    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    #@82
    sget v11, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    #@84
    check-cast p2, Ljava/lang/Integer;

    #@86
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@89
    move-result v12

    #@8a
    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@8d
    .line 344
    return-void

    #@8e
    .line 346
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_4
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@90
    sget v11, Landroid/system/OsConstants;->IPPROTO_IP:I

    #@92
    sget v12, Landroid/system/OsConstants;->IP_TOS:I

    #@94
    move-object v9, p2

    #@95
    check-cast v9, Ljava/lang/Integer;

    #@97
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@9a
    move-result v9

    #@9b
    invoke-interface {v10, p0, v11, v12, v9}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@9e
    .line 347
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@a0
    sget v10, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    #@a2
    sget v11, Landroid/system/OsConstants;->IPV6_TCLASS:I

    #@a4
    check-cast p2, Ljava/lang/Integer;

    #@a6
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@a9
    move-result v12

    #@aa
    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@ad
    .line 348
    return-void

    #@ae
    .line 350
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_5
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@b0
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@b2
    sget v11, Landroid/system/OsConstants;->SO_BROADCAST:I

    #@b4
    check-cast p2, Ljava/lang/Boolean;

    #@b6
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@b9
    move-result v12

    #@ba
    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    #@bd
    move-result v12

    #@be
    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@c1
    .line 351
    return-void

    #@c2
    .line 353
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_6
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@c4
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@c6
    sget v11, Landroid/system/OsConstants;->SO_KEEPALIVE:I

    #@c8
    check-cast p2, Ljava/lang/Boolean;

    #@ca
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@cd
    move-result v12

    #@ce
    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    #@d1
    move-result v12

    #@d2
    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@d5
    .line 354
    return-void

    #@d6
    .line 356
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_7
    const/4 v5, 0x0

    #@d7
    .line 357
    .local v5, "on":Z
    const/4 v7, 0x0

    #@d8
    .line 358
    .local v7, "seconds":I
    instance-of v9, p2, Ljava/lang/Integer;

    #@da
    if-eqz v9, :cond_0

    #@dc
    .line 359
    const/4 v5, 0x1

    #@dd
    .line 360
    check-cast p2, Ljava/lang/Integer;

    #@df
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@e2
    move-result v9

    #@e3
    const v10, 0xffff

    #@e6
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    #@e9
    move-result v7

    #@ea
    .line 362
    :cond_0
    new-instance v3, Landroid/system/StructLinger;

    #@ec
    invoke-static {v5}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    #@ef
    move-result v9

    #@f0
    invoke-direct {v3, v9, v7}, Landroid/system/StructLinger;-><init>(II)V

    #@f3
    .line 363
    .local v3, "linger":Landroid/system/StructLinger;
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@f5
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@f7
    sget v11, Landroid/system/OsConstants;->SO_LINGER:I

    #@f9
    invoke-interface {v9, p0, v10, v11, v3}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    #@fc
    .line 364
    return-void

    #@fd
    .line 366
    .end local v3    # "linger":Landroid/system/StructLinger;
    .end local v5    # "on":Z
    .end local v7    # "seconds":I
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_8
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@ff
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@101
    sget v11, Landroid/system/OsConstants;->SO_OOBINLINE:I

    #@103
    check-cast p2, Ljava/lang/Boolean;

    #@105
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@108
    move-result v12

    #@109
    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    #@10c
    move-result v12

    #@10d
    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@110
    .line 367
    return-void

    #@111
    .line 369
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_9
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@113
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@115
    sget v11, Landroid/system/OsConstants;->SO_RCVBUF:I

    #@117
    check-cast p2, Ljava/lang/Integer;

    #@119
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@11c
    move-result v12

    #@11d
    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@120
    .line 370
    return-void

    #@121
    .line 372
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_a
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@123
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@125
    sget v11, Landroid/system/OsConstants;->SO_REUSEADDR:I

    #@127
    check-cast p2, Ljava/lang/Boolean;

    #@129
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@12c
    move-result v12

    #@12d
    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    #@130
    move-result v12

    #@131
    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@134
    .line 373
    return-void

    #@135
    .line 375
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_b
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@137
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@139
    sget v11, Landroid/system/OsConstants;->SO_SNDBUF:I

    #@13b
    check-cast p2, Ljava/lang/Integer;

    #@13d
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@140
    move-result v12

    #@141
    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@144
    .line 376
    return-void

    #@145
    .line 378
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_c
    check-cast p2, Ljava/lang/Integer;

    #@147
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@14a
    move-result v4

    #@14b
    .line 379
    .local v4, "millis":I
    int-to-long v10, v4

    #@14c
    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    #@14f
    move-result-object v8

    #@150
    .line 380
    .local v8, "tv":Landroid/system/StructTimeval;
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@152
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@154
    sget v11, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    #@156
    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    #@159
    .line 381
    return-void

    #@15a
    .line 383
    .end local v4    # "millis":I
    .end local v8    # "tv":Landroid/system/StructTimeval;
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_d
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@15c
    sget v10, Landroid/system/OsConstants;->IPPROTO_TCP:I

    #@15e
    sget v11, Landroid/system/OsConstants;->TCP_NODELAY:I

    #@160
    check-cast p2, Ljava/lang/Boolean;

    #@162
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@165
    move-result v12

    #@166
    invoke-static {v12}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    #@169
    move-result v12

    #@16a
    invoke-interface {v9, p0, v10, v11, v12}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@16d
    .line 384
    return-void

    #@16e
    .restart local p2    # "value":Ljava/lang/Object;
    :sswitch_e
    move-object v0, p2

    #@16f
    .line 388
    check-cast v0, Landroid/system/StructGroupReq;

    #@171
    .line 389
    .local v0, "groupReq":Landroid/system/StructGroupReq;
    iget-object v9, v0, Landroid/system/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    #@173
    instance-of v9, v9, Ljava/net/Inet4Address;

    #@175
    if-eqz v9, :cond_1

    #@177
    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    #@179
    .line 390
    .local v2, "level":I
    :goto_0
    const/16 v9, 0x13

    #@17b
    if-ne p1, v9, :cond_2

    #@17d
    sget v6, Landroid/system/OsConstants;->MCAST_JOIN_GROUP:I

    #@17f
    .line 391
    .local v6, "op":I
    :goto_1
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@181
    invoke-interface {v9, p0, v2, v6, v0}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V

    #@184
    .line 392
    return-void

    #@185
    .line 389
    .end local v2    # "level":I
    .end local v6    # "op":I
    :cond_1
    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    #@187
    .restart local v2    # "level":I
    goto :goto_0

    #@188
    .line 390
    :cond_2
    sget v6, Landroid/system/OsConstants;->MCAST_LEAVE_GROUP:I

    #@18a
    .restart local v6    # "op":I
    goto :goto_1

    #@18b
    .end local v0    # "groupReq":Landroid/system/StructGroupReq;
    .end local v2    # "level":I
    .end local v6    # "op":I
    :sswitch_f
    move-object v1, p2

    #@18c
    .line 399
    check-cast v1, Landroid/system/StructGroupSourceReq;

    #@18e
    .line 400
    .local v1, "groupSourceReq":Landroid/system/StructGroupSourceReq;
    iget-object v9, v1, Landroid/system/StructGroupSourceReq;->gsr_group:Ljava/net/InetAddress;

    #@190
    instance-of v9, v9, Ljava/net/Inet4Address;

    #@192
    if-eqz v9, :cond_3

    #@194
    .line 401
    sget v2, Landroid/system/OsConstants;->IPPROTO_IP:I

    #@196
    .line 402
    .restart local v2    # "level":I
    :goto_2
    invoke-static {p1}, Llibcore/io/IoBridge;->getGroupSourceReqOp(I)I

    #@199
    move-result v6

    #@19a
    .line 403
    .restart local v6    # "op":I
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@19c
    invoke-interface {v9, p0, v2, v6, v1}, Llibcore/io/Os;->setsockoptGroupSourceReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupSourceReq;)V

    #@19f
    .line 404
    return-void

    #@1a0
    .line 401
    .end local v2    # "level":I
    .end local v6    # "op":I
    :cond_3
    sget v2, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    #@1a2
    .restart local v2    # "level":I
    goto :goto_2

    #@1a3
    .line 326
    nop

    #@1a4
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x8 -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_e
        0x14 -> :sswitch_e
        0x15 -> :sswitch_f
        0x16 -> :sswitch_f
        0x17 -> :sswitch_f
        0x18 -> :sswitch_f
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x80 -> :sswitch_7
        0x1001 -> :sswitch_b
        0x1002 -> :sswitch_9
        0x1003 -> :sswitch_8
        0x1006 -> :sswitch_c
    .end sparse-switch
.end method

.method public static socket(Z)Ljava/io/FileDescriptor;
    .locals 6
    .param p0, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 604
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    sget v4, Landroid/system/OsConstants;->AF_INET6:I

    #@4
    if-eqz p0, :cond_1

    #@6
    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    #@8
    :goto_0
    const/4 v5, 0x0

    #@9
    invoke-interface {v3, v4, v2, v5}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    #@c
    move-result-object v1

    #@d
    .line 613
    .local v1, "fd":Ljava/io/FileDescriptor;
    if-nez p0, :cond_0

    #@f
    .line 614
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@11
    sget v3, Landroid/system/OsConstants;->IPPROTO_IPV6:I

    #@13
    sget v4, Landroid/system/OsConstants;->IPV6_MULTICAST_HOPS:I

    #@15
    const/4 v5, 0x1

    #@16
    invoke-interface {v2, v1, v3, v4, v5}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@19
    .line 617
    :cond_0
    return-object v1

    #@1a
    .line 604
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :cond_1
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    goto :goto_0

    #@1d
    .line 618
    :catch_0
    move-exception v0

    #@1e
    .line 619
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@21
    move-result-object v2

    #@22
    throw v2
.end method

.method public static write(Ljava/io/FileDescriptor;[BII)V
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    array-length v2, p1

    #@1
    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 488
    if-nez p3, :cond_0

    #@6
    .line 489
    return-void

    #@7
    .line 492
    :cond_0
    :goto_0
    if-lez p3, :cond_1

    #@9
    .line 493
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@b
    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v0

    #@f
    .line 494
    .local v0, "bytesWritten":I
    sub-int/2addr p3, v0

    #@10
    .line 495
    add-int/2addr p2, v0

    #@11
    goto :goto_0

    #@12
    .line 497
    .end local v0    # "bytesWritten":I
    :catch_0
    move-exception v1

    #@13
    .line 498
    .local v1, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@16
    move-result-object v2

    #@17
    throw v2

    #@18
    .line 486
    .end local v1    # "errnoException":Landroid/system/ErrnoException;
    :cond_1
    return-void
.end method
