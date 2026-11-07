.class public Llibcore/io/BlockGuardOs;
.super Llibcore/io/ForwardingOs;
.source "BlockGuardOs.java"


# direct methods
.method public constructor greylist <init>(Llibcore/io/Os;)V
    .registers 2
    .param p1, "os"    # Llibcore/io/Os;

    .line 50
    invoke-direct {p0, p1}, Llibcore/io/ForwardingOs;-><init>(Llibcore/io/Os;)V

    .line 51
    return-void
.end method

.method private static blacklist isInetDomain(I)Z
    .registers 2
    .param p0, "domain"    # I

    .line 137
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-eq p0, v0, :cond_b

    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static blacklist isInetSocket(Ljava/io/FileDescriptor;)Z
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 133
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_DOMAIN:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Llibcore/io/BlockGuardOs;->isInetDomain(I)Z

    move-result v0

    return v0
.end method

.method private static blacklist isLingerSocket(Ljava/io/FileDescriptor;)Z
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 142
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_LINGER:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    move-result-object v0

    .line 143
    .local v0, "linger":Landroid/system/StructLinger;
    invoke-virtual {v0}, Landroid/system/StructLinger;->isOn()Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, v0, Landroid/system/StructLinger;->l_linger:I

    if-lez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist isNonBlockingFile(Ljava/io/FileDescriptor;)Z
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 117
    sget v0, Landroid/system/OsConstants;->F_GETFL:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    .line 118
    .local v0, "flag":I
    sget v2, Landroid/system/OsConstants;->O_NONBLOCK:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_e

    .line 119
    const/4 v1, 0x1

    return v1

    .line 121
    :cond_e
    return v1
.end method

.method private static blacklist isUdpSocket(Ljava/io/FileDescriptor;)Z
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 147
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_PROTOCOL:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static blacklist isUnixDomain(I)Z
    .registers 2
    .param p0, "domain"    # I

    .line 129
    sget v0, Landroid/system/OsConstants;->AF_UNIX:I

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isUnixSocket(Ljava/io/FileDescriptor;)Z
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 125
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_DOMAIN:I

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    invoke-static {v0}, Llibcore/io/BlockGuardOs;->isUnixDomain(I)Z

    move-result v0

    return v0
.end method

.method private blacklist tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 55
    :try_start_0
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldalvik/system/SocketTagger;->tag(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_7} :catch_8

    .line 56
    return-object p1

    .line 57
    :catch_8
    move-exception v0

    .line 58
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Landroid/system/ErrnoException;

    const-string v2, "socket"

    sget v3, Landroid/system/OsConstants;->EINVAL:I

    invoke-direct {v1, v2, v3, v0}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "peerAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 63
    invoke-static {p1}, Llibcore/io/BlockGuardOs;->isUnixSocket(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Llibcore/io/BlockGuardOs;->isNonBlockingFile(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 64
    :cond_c
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 66
    :cond_13
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 67
    .local v0, "acceptFd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_22

    invoke-static {v0}, Llibcore/io/BlockGuardOs;->isInetSocket(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 68
    invoke-direct {p0, v0}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 70
    :cond_22
    return-object v0
.end method

.method public blacklist test-api access(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 74
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 75
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->access(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    .registers 6
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "hints"    # Landroid/system/StructAddrinfo;
    .param p3, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    .line 218
    iget v0, p2, Landroid/system/StructAddrinfo;->ai_flags:I

    sget v1, Landroid/system/OsConstants;->AI_NUMERICHOST:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 219
    .local v0, "isNumericHost":Z
    :goto_a
    if-nez v0, :cond_13

    .line 220
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 222
    :cond_13
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public greylist chmod(Ljava/lang/String;I)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 81
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 82
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->chmod(Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public greylist chown(Ljava/lang/String;II)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 88
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 89
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->chown(Ljava/lang/String;II)V

    .line 91
    return-void
.end method

.method public greylist close(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->isSocket$()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 100
    invoke-static {p1}, Llibcore/io/BlockGuardOs;->isLingerSocket(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 104
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_13} :catch_14

    .line 112
    :cond_13
    goto :goto_15

    .line 107
    :catch_14
    move-exception v0

    .line 113
    :goto_15
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->close(Ljava/io/FileDescriptor;)V

    .line 114
    return-void
.end method

.method public blacklist connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "skipGuard":Z
    :try_start_1
    invoke-static {p1}, Llibcore/io/BlockGuardOs;->isUdpSocket(Ljava/io/FileDescriptor;)Z

    move-result v1
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    .line 156
    goto :goto_8

    .line 155
    :catch_7
    move-exception v1

    .line 157
    :goto_8
    if-nez v0, :cond_11

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 158
    :cond_11
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 159
    return-void
.end method

.method public blacklist connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "skipGuard":Z
    :try_start_1
    invoke-static {p1}, Llibcore/io/BlockGuardOs;->isUdpSocket(Ljava/io/FileDescriptor;)Z

    move-result v1
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    .line 167
    goto :goto_8

    .line 166
    :catch_7
    move-exception v1

    .line 168
    :goto_8
    if-nez v0, :cond_11

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 169
    :cond_11
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 170
    return-void
.end method

.method public blacklist execv(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 458
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 459
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 460
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->execv(Ljava/lang/String;[Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public blacklist execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "argv"    # [Ljava/lang/String;
    .param p3, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 465
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 466
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 467
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public greylist fchmod(Ljava/io/FileDescriptor;I)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 174
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 175
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->fchmod(Ljava/io/FileDescriptor;I)V

    .line 176
    return-void
.end method

.method public greylist fchown(Ljava/io/FileDescriptor;II)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 180
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 181
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->fchown(Ljava/io/FileDescriptor;II)V

    .line 182
    return-void
.end method

.method public greylist fdatasync(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 188
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 189
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->fdatasync(Ljava/io/FileDescriptor;)V

    .line 190
    return-void
.end method

.method public greylist fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 194
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 195
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public greylist fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 200
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 201
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    move-result-object v0

    return-object v0
.end method

.method public blacklist fsync(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 205
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 206
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->fsync(Ljava/io/FileDescriptor;)V

    .line 207
    return-void
.end method

.method public blacklist ftruncate(Ljava/io/FileDescriptor;J)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 210
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 211
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->ftruncate(Ljava/io/FileDescriptor;J)V

    .line 212
    return-void
.end method

.method public blacklist getxattr(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 471
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 472
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 473
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist lchown(Ljava/lang/String;II)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 227
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 228
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 229
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->lchown(Ljava/lang/String;II)V

    .line 230
    return-void
.end method

.method public greylist link(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 234
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 235
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 237
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->link(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public greylist lseek(Ljava/io/FileDescriptor;JI)J
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "whence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 242
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Llibcore/io/ForwardingOs;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist lstat(Ljava/lang/String;)Landroid/system/StructStat;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 248
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 249
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 250
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public greylist mkdir(Ljava/lang/String;I)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 255
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 256
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 257
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->mkdir(Ljava/lang/String;I)V

    .line 258
    return-void
.end method

.method public greylist mkfifo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 262
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 263
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 264
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->mkfifo(Ljava/lang/String;I)V

    .line 265
    return-void
.end method

.method public blacklist msync(JJI)V
    .registers 7
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 477
    sget v0, Landroid/system/OsConstants;->MS_SYNC:I

    and-int/2addr v0, p5

    if-eqz v0, :cond_c

    .line 478
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 480
    :cond_c
    invoke-super/range {p0 .. p5}, Llibcore/io/ForwardingOs;->msync(JJI)V

    .line 481
    return-void
.end method

.method public greylist test-api open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 269
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 270
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 271
    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, p2

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    if-eq v0, v1, :cond_1c

    .line 272
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 274
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist poll([Landroid/system/StructPollfd;I)I
    .registers 4
    .param p1, "fds"    # [Landroid/system/StructPollfd;
    .param p2, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 280
    if-eqz p2, :cond_9

    .line 281
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 283
    :cond_9
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->poll([Landroid/system/StructPollfd;I)I

    move-result v0

    return v0
.end method

.method public greylist posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 288
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 289
    invoke-super/range {p0 .. p5}, Llibcore/io/ForwardingOs;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    .line 290
    return-void
.end method

.method public greylist pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 294
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Llibcore/io/ForwardingOs;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public greylist pread(Ljava/io/FileDescriptor;[BIIJ)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 300
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 301
    invoke-super/range {p0 .. p6}, Llibcore/io/ForwardingOs;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v0

    return v0
.end method

.method public greylist pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 306
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Llibcore/io/ForwardingOs;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public greylist pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 312
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 313
    invoke-super/range {p0 .. p6}, Llibcore/io/ForwardingOs;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v0

    return v0
.end method

.method public greylist read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 318
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 319
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public greylist read(Ljava/io/FileDescriptor;[BII)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 324
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Llibcore/io/ForwardingOs;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public greylist readlink(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 330
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 331
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 332
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffers"    # [Ljava/lang/Object;
    .param p3, "offsets"    # [I
    .param p4, "byteCounts"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 344
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 345
    invoke-super {p0, p1, p2, p3, p4}, Llibcore/io/ForwardingOs;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v0

    return v0
.end method

.method public greylist realpath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 337
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 338
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 339
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # I
    .param p4, "srcAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 349
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 350
    invoke-super {p0, p1, p2, p3, p4}, Llibcore/io/ForwardingOs;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method public blacklist recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "flags"    # I
    .param p6, "srcAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 354
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 355
    invoke-super/range {p0 .. p6}, Llibcore/io/ForwardingOs;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method public blacklist recvmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "msg"    # Landroid/system/StructMsghdr;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 359
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 360
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->recvmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I

    move-result v0

    return v0
.end method

.method public greylist test-api remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 365
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 366
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 367
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->remove(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public blacklist removexattr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 484
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 485
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 486
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->removexattr(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public greylist test-api rename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 372
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 373
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 375
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public blacklist sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J
    .registers 8
    .param p1, "outFd"    # Ljava/io/FileDescriptor;
    .param p2, "inFd"    # Ljava/io/FileDescriptor;
    .param p3, "offset"    # Landroid/system/Int64Ref;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 379
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 380
    invoke-super/range {p0 .. p5}, Llibcore/io/ForwardingOs;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist sendmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "msg"    # Landroid/system/StructMsghdr;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 384
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 385
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->sendmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I

    move-result v0

    return v0
.end method

.method public blacklist sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # I
    .param p4, "inetAddress"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 389
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 390
    invoke-super/range {p0 .. p5}, Llibcore/io/ForwardingOs;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public blacklist sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "flags"    # I
    .param p6, "inetAddress"    # Ljava/net/InetAddress;
    .param p7, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 395
    if-eqz p6, :cond_9

    .line 396
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 398
    :cond_9
    invoke-super/range {p0 .. p7}, Llibcore/io/ForwardingOs;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public blacklist sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .param p5, "flags"    # I
    .param p6, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 498
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 499
    invoke-super/range {p0 .. p6}, Llibcore/io/ForwardingOs;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    move-result v0

    return v0
.end method

.method public blacklist setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 491
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 492
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 493
    invoke-super {p0, p1, p2, p3, p4}, Llibcore/io/ForwardingOs;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 494
    return-void
.end method

.method public blacklist socket(III)Ljava/io/FileDescriptor;
    .registers 6
    .param p1, "domain"    # I
    .param p2, "type"    # I
    .param p3, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 402
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 403
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {p1}, Llibcore/io/BlockGuardOs;->isInetDomain(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 404
    invoke-direct {p0, v0}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 406
    :cond_d
    return-object v0
.end method

.method public blacklist socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "domain"    # I
    .param p2, "type"    # I
    .param p3, "protocol"    # I
    .param p4, "fd1"    # Ljava/io/FileDescriptor;
    .param p5, "fd2"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 410
    invoke-super/range {p0 .. p5}, Llibcore/io/ForwardingOs;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 411
    move-object v0, p5

    move-object p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "domain":I
    .local v0, "fd2":Ljava/io/FileDescriptor;
    .local p2, "domain":I
    .local p3, "type":I
    .local p4, "protocol":I
    .local p5, "fd1":Ljava/io/FileDescriptor;
    invoke-static {p2}, Llibcore/io/BlockGuardOs;->isInetDomain(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 412
    invoke-direct {p0, p5}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 413
    invoke-direct {p0, v0}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 415
    :cond_15
    return-void
.end method

.method public blacklist splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J
    .registers 10
    .param p1, "fdIn"    # Ljava/io/FileDescriptor;
    .param p2, "offIn"    # Landroid/system/Int64Ref;
    .param p3, "fdOut"    # Ljava/io/FileDescriptor;
    .param p4, "offOut"    # Landroid/system/Int64Ref;
    .param p5, "len"    # J
    .param p7, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 511
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 512
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 513
    invoke-super/range {p0 .. p7}, Llibcore/io/ForwardingOs;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist test-api stat(Ljava/lang/String;)Landroid/system/StructStat;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 419
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 420
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 421
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public greylist statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 426
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 427
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 428
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0

    return-object v0
.end method

.method public greylist symlink(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 433
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 434
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 435
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 436
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public blacklist test-api unlink(Ljava/lang/String;)V
    .registers 3
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 503
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 504
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 505
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->unlink(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public greylist write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 441
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 442
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public greylist write(Ljava/io/FileDescriptor;[BII)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # [B
    .param p3, "byteOffset"    # I
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 447
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 448
    invoke-super {p0, p1, p2, p3, p4}, Llibcore/io/ForwardingOs;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public greylist writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffers"    # [Ljava/lang/Object;
    .param p3, "offsets"    # [I
    .param p4, "byteCounts"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 453
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 454
    invoke-super {p0, p1, p2, p3, p4}, Llibcore/io/ForwardingOs;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v0

    return v0
.end method
