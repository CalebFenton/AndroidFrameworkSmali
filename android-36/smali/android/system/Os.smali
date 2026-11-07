.class public final Landroid/system/Os;
.super Ljava/lang/Object;
.source "Os.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "peerAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 51
    invoke-static {p0, p1}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "peerAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 57
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api access(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 62
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    .registers 4
    .param p0, "node"    # Ljava/lang/String;
    .param p1, "hints"    # Landroid/system/StructAddrinfo;
    .param p2, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    .line 65
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 70
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public static whitelist test-api bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 75
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public static greylist-max-o test-api capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;
    .registers 2
    .param p0, "hdr"    # Landroid/system/StructCapUserHeader;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 89
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o test-api capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    .registers 3
    .param p0, "hdr"    # Landroid/system/StructCapUserHeader;
    .param p1, "data"    # [Landroid/system/StructCapUserData;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 113
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V

    .line 114
    return-void
.end method

.method public static whitelist test-api chmod(Ljava/lang/String;I)V
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 119
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api chown(Ljava/lang/String;II)V
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 124
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->chown(Ljava/lang/String;II)V

    return-void
.end method

.method public static whitelist test-api close(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 129
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static whitelist test-api connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 134
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public static whitelist test-api connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 139
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public static whitelist test-api dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "oldFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 144
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .registers 3
    .param p0, "oldFd"    # Ljava/io/FileDescriptor;
    .param p1, "newFd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 149
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api environ()[Ljava/lang/String;
    .registers 1

    .line 154
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api execv(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 159
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist test-api execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 164
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist test-api fchmod(Ljava/io/FileDescriptor;I)V
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 169
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public static whitelist test-api fchown(Ljava/io/FileDescriptor;II)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 174
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->fchown(Ljava/io/FileDescriptor;II)V

    return-void
.end method

.method public static whitelist test-api fcntlInt(Ljava/io/FileDescriptor;II)I
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "cmd"    # I
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 179
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o fcntlVoid(Ljava/io/FileDescriptor;I)I
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "cmd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 182
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api fdatasync(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 187
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static whitelist test-api fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 192
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 197
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api fsync(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 202
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static whitelist test-api ftruncate(Ljava/io/FileDescriptor;J)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 207
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method public static whitelist test-api gai_strerror(I)Ljava/lang/String;
    .registers 2
    .param p0, "error"    # I

    .line 212
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getegid()I
    .registers 1

    .line 217
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getegid()I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 232
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api geteuid()I
    .registers 1

    .line 222
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->geteuid()I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getgid()I
    .registers 1

    .line 227
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getgid()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getifaddrs()[Landroid/system/StructIfaddrs;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 238
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getifaddrs()[Landroid/system/StructIfaddrs;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .registers 3
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    .line 241
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 246
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o test-api getpgid(I)I
    .registers 2
    .param p0, "pid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 260
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getpgid(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getpid()I
    .registers 1

    .line 265
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getppid()I
    .registers 1

    .line 270
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 273
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getpwuid(I)Landroid/system/StructPasswd;
    .registers 2
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 276
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o test-api getrlimit(I)Landroid/system/StructRlimit;
    .registers 2
    .param p0, "resource"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 290
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getrlimit(I)Landroid/system/StructRlimit;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 295
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getsockoptByte(Ljava/io/FileDescriptor;II)I
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 298
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptByte(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 301
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o test-api getsockoptInt(Ljava/io/FileDescriptor;II)I
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 321
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o test-api getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 341
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 350
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 353
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api gettid()I
    .registers 1

    .line 358
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getuid()I
    .registers 1

    .line 363
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getxattr(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 368
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api if_indextoname(I)Ljava/lang/String;
    .registers 2
    .param p0, "index"    # I

    .line 373
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->if_indextoname(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api if_nametoindex(Ljava/lang/String;)I
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 378
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->if_nametoindex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .param p0, "family"    # I
    .param p1, "address"    # Ljava/lang/String;

    .line 383
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "cmd"    # I
    .param p2, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 386
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist test-api ioctlInt(Ljava/io/FileDescriptor;I)I
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "cmd"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 403
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api isatty(Ljava/io/FileDescriptor;)Z
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 409
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api kill(II)V
    .registers 3
    .param p0, "pid"    # I
    .param p1, "signal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 414
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->kill(II)V

    return-void
.end method

.method public static whitelist test-api lchown(Ljava/lang/String;II)V
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 419
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->lchown(Ljava/lang/String;II)V

    return-void
.end method

.method public static whitelist test-api link(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 424
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist test-api listen(Ljava/io/FileDescriptor;I)V
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 429
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public static whitelist test-api listxattr(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 434
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->listxattr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api lseek(Ljava/io/FileDescriptor;JI)J
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "whence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 439
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api lstat(Ljava/lang/String;)Landroid/system/StructStat;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 444
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist madvise(JJI)V
    .registers 11
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .param p4, "advice"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 450
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    .end local p0    # "address":J
    .end local p2    # "byteCount":J
    .end local p4    # "advice":I
    .local v1, "address":J
    .local v3, "byteCount":J
    .local v5, "advice":I
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->madvise(JJI)V

    return-void
.end method

.method public static whitelist test-api memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 455
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api mincore(JJ[B)V
    .registers 11
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .param p4, "vector"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 460
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    .end local p0    # "address":J
    .end local p2    # "byteCount":J
    .end local p4    # "vector":[B
    .local v1, "address":J
    .local v3, "byteCount":J
    .local v5, "vector":[B
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->mincore(JJ[B)V

    return-void
.end method

.method public static whitelist test-api mkdir(Ljava/lang/String;I)V
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 465
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api mkfifo(Ljava/lang/String;I)V
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 470
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->mkfifo(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api mlock(JJ)V
    .registers 5
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 475
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->mlock(JJ)V

    return-void
.end method

.method public static whitelist test-api mmap(JJIILjava/io/FileDescriptor;J)J
    .registers 21
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .param p4, "prot"    # I
    .param p5, "flags"    # I
    .param p6, "fd"    # Ljava/io/FileDescriptor;
    .param p7, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 480
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-wide v1, p0

    move-wide v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-interface/range {v0 .. v9}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10

    return-wide v10
.end method

.method public static whitelist test-api msync(JJI)V
    .registers 11
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 485
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    .end local p0    # "address":J
    .end local p2    # "byteCount":J
    .end local p4    # "flags":I
    .local v1, "address":J
    .local v3, "byteCount":J
    .local v5, "flags":I
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->msync(JJI)V

    return-void
.end method

.method public static whitelist test-api munlock(JJ)V
    .registers 5
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 490
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->munlock(JJ)V

    return-void
.end method

.method public static whitelist test-api munmap(JJ)V
    .registers 5
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 495
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->munmap(JJ)V

    return-void
.end method

.method public static whitelist test-api open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 500
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api pipe()[Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 505
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Llibcore/io/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o test-api pipe2(I)[Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 528
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api poll([Landroid/system/StructPollfd;I)I
    .registers 3
    .param p0, "fds"    # [Landroid/system/StructPollfd;
    .param p1, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 537
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    .registers 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 542
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "offset":J
    .end local p3    # "length":J
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "offset":J
    .local v4, "length":J
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public static whitelist test-api prctl(IJJJJ)I
    .registers 19
    .param p0, "option"    # I
    .param p1, "arg2"    # J
    .param p3, "arg3"    # J
    .param p5, "arg4"    # J
    .param p7, "arg5"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 547
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-interface/range {v0 .. v9}, Llibcore/io/Os;->prctl(IJJJJ)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 552
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api pread(Ljava/io/FileDescriptor;[BIIJ)I
    .registers 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 557
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "bytes":[B
    .end local p2    # "byteOffset":I
    .end local p3    # "byteCount":I
    .end local p4    # "offset":J
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "bytes":[B
    .local v3, "byteOffset":I
    .local v4, "byteCount":I
    .local v5, "offset":J
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p0

    return p0
.end method

.method public static whitelist test-api pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 562
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .registers 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 567
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "bytes":[B
    .end local p2    # "byteOffset":I
    .end local p3    # "byteCount":I
    .end local p4    # "offset":J
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "bytes":[B
    .local v3, "byteOffset":I
    .local v4, "byteCount":I
    .local v5, "offset":J
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p0

    return p0
.end method

.method public static whitelist test-api read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 572
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api read(Ljava/io/FileDescriptor;[BII)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 577
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api readlink(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 582
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffers"    # [Ljava/lang/Object;
    .param p2, "offsets"    # [I
    .param p3, "byteCounts"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 610
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o test-api realpath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 605
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "flags"    # I
    .param p3, "srcAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 615
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .registers 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .param p4, "flags"    # I
    .param p5, "srcAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 620
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "bytes":[B
    .end local p2    # "byteOffset":I
    .end local p3    # "byteCount":I
    .end local p4    # "flags":I
    .end local p5    # "srcAddress":Ljava/net/InetSocketAddress;
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "bytes":[B
    .local v3, "byteOffset":I
    .local v4, "byteCount":I
    .local v5, "flags":I
    .local v6, "srcAddress":Ljava/net/InetSocketAddress;
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result p0

    return p0
.end method

.method public static whitelist test-api recvmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "msg"    # Landroid/system/StructMsghdr;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 625
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->recvmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api remove(Ljava/lang/String;)V
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 630
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist test-api removexattr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 635
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist test-api rename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 640
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist test-api sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J
    .registers 11
    .param p0, "outFd"    # Ljava/io/FileDescriptor;
    .param p1, "inFd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # Landroid/system/Int64Ref;
    .param p3, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 646
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .end local p0    # "outFd":Ljava/io/FileDescriptor;
    .end local p1    # "inFd":Ljava/io/FileDescriptor;
    .end local p2    # "offset":Landroid/system/Int64Ref;
    .end local p3    # "byteCount":J
    .local v1, "outFd":Ljava/io/FileDescriptor;
    .local v2, "inFd":Ljava/io/FileDescriptor;
    .local v3, "offset":Landroid/system/Int64Ref;
    .local v4, "byteCount":J
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist test-api sendmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "msg"    # Landroid/system/StructMsghdr;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 653
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->sendmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .registers 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "flags"    # I
    .param p3, "inetAddress"    # Ljava/net/InetAddress;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 659
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .end local p2    # "flags":I
    .end local p3    # "inetAddress":Ljava/net/InetAddress;
    .end local p4    # "port":I
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    .local v3, "flags":I
    .local v4, "inetAddress":Ljava/net/InetAddress;
    .local v5, "port":I
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result p0

    return p0
.end method

.method public static whitelist test-api sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .registers 15
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .param p4, "flags"    # I
    .param p5, "inetAddress"    # Ljava/net/InetAddress;
    .param p6, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 664
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "bytes":[B
    .end local p2    # "byteOffset":I
    .end local p3    # "byteCount":I
    .end local p4    # "flags":I
    .end local p5    # "inetAddress":Ljava/net/InetAddress;
    .end local p6    # "port":I
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "bytes":[B
    .local v3, "byteOffset":I
    .local v4, "byteCount":I
    .local v5, "flags":I
    .local v6, "inetAddress":Ljava/net/InetAddress;
    .local v7, "port":I
    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    move-result p0

    return p0
.end method

.method public static whitelist test-api sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    .registers 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .param p4, "flags"    # I
    .param p5, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 669
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "bytes":[B
    .end local p2    # "byteOffset":I
    .end local p3    # "byteCount":I
    .end local p4    # "flags":I
    .end local p5    # "address":Ljava/net/SocketAddress;
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "bytes":[B
    .local v3, "byteOffset":I
    .local v4, "byteCount":I
    .local v5, "flags":I
    .local v6, "address":Ljava/net/SocketAddress;
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    move-result p0

    return p0
.end method

.method public static whitelist test-api setegid(I)V
    .registers 2
    .param p0, "egid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->setegid(I)V

    return-void
.end method

.method public static whitelist test-api setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 681
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static whitelist test-api seteuid(I)V
    .registers 2
    .param p0, "euid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 688
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->seteuid(I)V

    return-void
.end method

.method public static whitelist test-api setgid(I)V
    .registers 2
    .param p0, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 695
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->setgid(I)V

    return-void
.end method

.method public static greylist-max-o test-api setpgid(II)V
    .registers 3
    .param p0, "pid"    # I
    .param p1, "pgid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 719
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->setpgid(II)V

    return-void
.end method

.method public static greylist-max-o test-api setregid(II)V
    .registers 3
    .param p0, "rgid"    # I
    .param p1, "egid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 735
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->setregid(II)V

    return-void
.end method

.method public static greylist-max-o test-api setreuid(II)V
    .registers 3
    .param p0, "ruid"    # I
    .param p1, "euid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 751
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->setreuid(II)V

    return-void
.end method

.method public static whitelist test-api setsid()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 756
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->setsid()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o setsockoptByte(Ljava/io/FileDescriptor;III)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 759
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public static greylist-max-o setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # Landroid/system/StructGroupReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 793
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V

    return-void
.end method

.method public static greylist test-api setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 782
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    return-void
.end method

.method public static whitelist test-api setsockoptInt(Ljava/io/FileDescriptor;III)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 787
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public static greylist-max-o setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 790
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public static greylist-max-o test-api setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # Landroid/system/StructLinger;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 809
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    return-void
.end method

.method public static whitelist test-api setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # Landroid/system/StructTimeval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 818
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    return-void
.end method

.method public static whitelist test-api setuid(I)V
    .registers 2
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 825
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->setuid(I)V

    return-void
.end method

.method public static whitelist test-api setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 830
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V

    return-void
.end method

.method public static whitelist test-api shutdown(Ljava/io/FileDescriptor;I)V
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 835
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public static whitelist test-api socket(III)Ljava/io/FileDescriptor;
    .registers 4
    .param p0, "domain"    # I
    .param p1, "type"    # I
    .param p2, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 840
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .registers 11
    .param p0, "domain"    # I
    .param p1, "type"    # I
    .param p2, "protocol"    # I
    .param p3, "fd1"    # Ljava/io/FileDescriptor;
    .param p4, "fd2"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 845
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "domain":I
    .end local p1    # "type":I
    .end local p2    # "protocol":I
    .end local p3    # "fd1":Ljava/io/FileDescriptor;
    .end local p4    # "fd2":Ljava/io/FileDescriptor;
    .local v1, "domain":I
    .local v2, "type":I
    .local v3, "protocol":I
    .local v4, "fd1":Ljava/io/FileDescriptor;
    .local v5, "fd2":Ljava/io/FileDescriptor;
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static greylist-max-o test-api splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J
    .registers 15
    .param p0, "fdIn"    # Ljava/io/FileDescriptor;
    .param p1, "offIn"    # Landroid/system/Int64Ref;
    .param p2, "fdOut"    # Ljava/io/FileDescriptor;
    .param p3, "offOut"    # Landroid/system/Int64Ref;
    .param p4, "len"    # J
    .param p6, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 905
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    .end local p0    # "fdIn":Ljava/io/FileDescriptor;
    .end local p1    # "offIn":Landroid/system/Int64Ref;
    .end local p2    # "fdOut":Ljava/io/FileDescriptor;
    .end local p3    # "offOut":Landroid/system/Int64Ref;
    .end local p4    # "len":J
    .end local p6    # "flags":I
    .local v1, "fdIn":Ljava/io/FileDescriptor;
    .local v2, "offIn":Landroid/system/Int64Ref;
    .local v3, "fdOut":Ljava/io/FileDescriptor;
    .local v4, "offOut":Landroid/system/Int64Ref;
    .local v5, "len":J
    .local v7, "flags":I
    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist test-api stat(Ljava/lang/String;)Landroid/system/StructStat;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 910
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 915
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api strerror(I)Ljava/lang/String;
    .registers 2
    .param p0, "errno"    # I

    .line 920
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->strerror(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api strsignal(I)Ljava/lang/String;
    .registers 2
    .param p0, "signal"    # I

    .line 925
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->strsignal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api symlink(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 930
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist test-api sysconf(I)J
    .registers 3
    .param p0, "name"    # I

    .line 935
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api tcdrain(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 940
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->tcdrain(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static whitelist test-api tcsendbreak(Ljava/io/FileDescriptor;I)V
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 945
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->tcsendbreak(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public static whitelist test-api umask(I)I
    .registers 2
    .param p0, "mask"    # I

    .line 950
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->umask(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api uname()Landroid/system/StructUtsname;
    .registers 1

    .line 955
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o test-api unlink(Ljava/lang/String;)V
    .registers 2
    .param p0, "pathname"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 974
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->unlink(Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist test-api unsetenv(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 979
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->unsetenv(Ljava/lang/String;)V

    return-void
.end method

.method public static greylist-max-o waitpid(ILandroid/system/Int32Ref;I)I
    .registers 4
    .param p0, "pid"    # I
    .param p1, "status"    # Landroid/system/Int32Ref;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 987
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->waitpid(ILandroid/system/Int32Ref;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 993
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api write(Ljava/io/FileDescriptor;[BII)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 998
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffers"    # [Ljava/lang/Object;
    .param p2, "offsets"    # [I
    .param p3, "byteCounts"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 1003
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v0

    return v0
.end method
