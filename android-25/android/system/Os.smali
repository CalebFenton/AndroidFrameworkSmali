.class public final Landroid/system/Os;
.super Ljava/lang/Object;
.source "Os.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "peerAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "peerAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static access(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "node"    # Ljava/lang/String;
    .param p1, "hints"    # Landroid/system/StructAddrinfo;
    .param p2, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@5
    return-void
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    #@5
    return-void
.end method

.method public static chmod(Ljava/lang/String;I)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    #@5
    return-void
.end method

.method public static chown(Ljava/lang/String;II)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->chown(Ljava/lang/String;II)V

    #@5
    return-void
.end method

.method public static close(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    #@5
    return-void
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@5
    return-void
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    #@5
    return-void
.end method

.method public static dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "oldFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "oldFd"    # Ljava/io/FileDescriptor;
    .param p1, "newFd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static environ()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static execv(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "argv"    # [Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static fchmod(Ljava/io/FileDescriptor;I)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    #@5
    return-void
.end method

.method public static fchown(Ljava/io/FileDescriptor;II)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->fchown(Ljava/io/FileDescriptor;II)V

    #@5
    return-void
.end method

.method public static fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "cmd"    # I
    .param p2, "arg"    # Landroid/system/StructFlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static fcntlInt(Ljava/io/FileDescriptor;II)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "cmd"    # I
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static fcntlVoid(Ljava/io/FileDescriptor;I)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "cmd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static fdatasync(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V

    #@5
    return-void
.end method

.method public static fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static fsync(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    #@5
    return-void
.end method

.method public static ftruncate(Ljava/io/FileDescriptor;J)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    #@5
    return-void
.end method

.method public static gai_strerror(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    #@0
    .prologue
    .line 154
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getegid()I
    .locals 1

    #@0
    .prologue
    .line 159
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->getegid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static geteuid()I
    .locals 1

    #@0
    .prologue
    .line 164
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->geteuid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getgid()I
    .locals 1

    #@0
    .prologue
    .line 169
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->getgid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getpgid(I)I
    .locals 1
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->getpgid(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getpid()I
    .locals 1

    #@0
    .prologue
    .line 191
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->getpid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getppid()I
    .locals 1

    #@0
    .prologue
    .line 196
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->getppid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getpwuid(I)Landroid/system/StructPasswd;
    .locals 1
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getsockoptByte(Ljava/io/FileDescriptor;II)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptByte(Ljava/io/FileDescriptor;II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getsockoptInt(Ljava/io/FileDescriptor;II)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static gettid()I
    .locals 1

    #@0
    .prologue
    .line 217
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->gettid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getuid()I
    .locals 1

    #@0
    .prologue
    .line 222
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->getuid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getxattr(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;[B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static if_indextoname(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    #@0
    .prologue
    .line 229
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->if_indextoname(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "family"    # I
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 234
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "cmd"    # I
    .param p2, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "cmd"    # I
    .param p2, "arg"    # Landroid/util/MutableInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isatty(Ljava/io/FileDescriptor;)Z
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 242
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static kill(II)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "signal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->kill(II)V

    #@5
    return-void
.end method

.method public static lchown(Ljava/lang/String;II)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->lchown(Ljava/lang/String;II)V

    #@5
    return-void
.end method

.method public static link(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static listen(Ljava/io/FileDescriptor;I)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    #@5
    return-void
.end method

.method public static lseek(Ljava/io/FileDescriptor;JI)J
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "whence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static lstat(Ljava/lang/String;)Landroid/system/StructStat;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static mincore(JJ[B)V
    .locals 8
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .param p4, "vector"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move-wide v2, p0

    #@3
    move-wide v4, p2

    #@4
    move-object v6, p4

    #@5
    invoke-interface/range {v1 .. v6}, Llibcore/io/Os;->mincore(JJ[B)V

    #@8
    return-void
.end method

.method public static mkdir(Ljava/lang/String;I)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    #@5
    return-void
.end method

.method public static mkfifo(Ljava/lang/String;I)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->mkfifo(Ljava/lang/String;I)V

    #@5
    return-void
.end method

.method public static mlock(JJ)V
    .locals 2
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 292
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->mlock(JJ)V

    #@5
    return-void
.end method

.method public static mmap(JJIILjava/io/FileDescriptor;J)J
    .locals 12
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

    #@0
    .prologue
    .line 297
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move-wide v2, p0

    #@3
    move-wide v4, p2

    #@4
    move/from16 v6, p4

    #@6
    move/from16 v7, p5

    #@8
    move-object/from16 v8, p6

    #@a
    move-wide/from16 v9, p7

    #@c
    invoke-interface/range {v1 .. v10}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0
.end method

.method public static msync(JJI)V
    .locals 8
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move-wide v2, p0

    #@3
    move-wide v4, p2

    #@4
    move v6, p4

    #@5
    invoke-interface/range {v1 .. v6}, Llibcore/io/Os;->msync(JJI)V

    #@8
    return-void
.end method

.method public static munlock(JJ)V
    .locals 2
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->munlock(JJ)V

    #@5
    return-void
.end method

.method public static munmap(JJ)V
    .locals 2
    .param p0, "address"    # J
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->munmap(JJ)V

    #@5
    return-void
.end method

.method public static open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static pipe()[Ljava/io/FileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 322
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1}, Llibcore/io/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static pipe2(I)[Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 324
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static poll([Landroid/system/StructPollfd;I)I
    .locals 1
    .param p0, "fds"    # [Landroid/system/StructPollfd;
    .param p1, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 333
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    .locals 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move-object v1, p0

    #@3
    move-wide v2, p1

    #@4
    move-wide v4, p3

    #@5
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    #@8
    return-void
.end method

.method public static prctl(IJJJJ)I
    .locals 11
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

    #@0
    .prologue
    .line 343
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move v1, p0

    #@3
    move-wide v2, p1

    #@4
    move-wide v4, p3

    #@5
    move-wide/from16 v6, p5

    #@7
    move-wide/from16 v8, p7

    #@9
    invoke-interface/range {v0 .. v9}, Llibcore/io/Os;->prctl(IJJJJ)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public static pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static pread(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 8
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

    #@0
    .prologue
    .line 353
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move-object v2, p0

    #@3
    move-object v3, p1

    #@4
    move v4, p2

    #@5
    move v5, p3

    #@6
    move-wide v6, p4

    #@7
    invoke-interface/range {v1 .. v7}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 8
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

    #@0
    .prologue
    .line 363
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move-object v2, p0

    #@3
    move-object v3, p1

    #@4
    move v4, p2

    #@5
    move v5, p3

    #@6
    move-wide v6, p4

    #@7
    invoke-interface/range {v1 .. v7}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 368
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static read(Ljava/io/FileDescriptor;[BII)I
    .locals 1
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

    #@0
    .prologue
    .line 373
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static readlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 378
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .locals 1
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

    #@0
    .prologue
    .line 383
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .locals 1
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

    #@0
    .prologue
    .line 388
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .locals 7
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

    #@0
    .prologue
    .line 393
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->remove(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static removexattr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 400
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 405
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J
    .locals 7
    .param p0, "outFd"    # Ljava/io/FileDescriptor;
    .param p1, "inFd"    # Ljava/io/FileDescriptor;
    .param p2, "inOffset"    # Landroid/util/MutableLong;
    .param p3, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 410
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-wide v4, p3

    #@6
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public static sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 6
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

    #@0
    .prologue
    .line 415
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .locals 8
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

    #@0
    .prologue
    .line 420
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move-object v6, p5

    #@8
    move v7, p6

    #@9
    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public static sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    .locals 7
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

    #@0
    .prologue
    .line 425
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static setegid(I)V
    .locals 1
    .param p0, "egid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 430
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->setegid(I)V

    #@5
    return-void
.end method

.method public static setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    #@5
    return-void
.end method

.method public static seteuid(I)V
    .locals 1
    .param p0, "euid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->seteuid(I)V

    #@5
    return-void
.end method

.method public static setgid(I)V
    .locals 1
    .param p0, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 445
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->setgid(I)V

    #@5
    return-void
.end method

.method public static setpgid(II)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "pgid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 450
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->setpgid(II)V

    #@5
    return-void
.end method

.method public static setregid(II)V
    .locals 1
    .param p0, "rgid"    # I
    .param p1, "egid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 455
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->setregid(II)V

    #@5
    return-void
.end method

.method public static setreuid(II)V
    .locals 1
    .param p0, "ruid"    # I
    .param p1, "euid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 460
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->setreuid(II)V

    #@5
    return-void
.end method

.method public static setsid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 465
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->setsid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static setsockoptByte(Ljava/io/FileDescriptor;III)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 467
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    #@5
    return-void
.end method

.method public static setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # Landroid/system/StructGroupReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 471
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V

    #@5
    return-void
.end method

.method public static setsockoptGroupSourceReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupSourceReq;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # Landroid/system/StructGroupSourceReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 472
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptGroupSourceReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupSourceReq;)V

    #@5
    return-void
.end method

.method public static setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 468
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    #@5
    return-void
.end method

.method public static setsockoptInt(Ljava/io/FileDescriptor;III)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 469
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@5
    return-void
.end method

.method public static setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 470
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    #@5
    return-void
.end method

.method public static setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # Landroid/system/StructLinger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    #@5
    return-void
.end method

.method public static setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "level"    # I
    .param p2, "option"    # I
    .param p3, "value"    # Landroid/system/StructTimeval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 474
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    #@5
    return-void
.end method

.method public static setuid(I)V
    .locals 1
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 479
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->setuid(I)V

    #@5
    return-void
.end method

.method public static setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 481
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V

    #@5
    return-void
.end method

.method public static shutdown(Ljava/io/FileDescriptor;I)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 486
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V

    #@5
    return-void
.end method

.method public static socket(III)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "domain"    # I
    .param p1, "type"    # I
    .param p2, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 491
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 6
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

    #@0
    .prologue
    .line 496
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    move v1, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@a
    return-void
.end method

.method public static stat(Ljava/lang/String;)Landroid/system/StructStat;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 501
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 506
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static strerror(I)Ljava/lang/String;
    .locals 1
    .param p0, "errno"    # I

    #@0
    .prologue
    .line 511
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->strerror(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static strsignal(I)Ljava/lang/String;
    .locals 1
    .param p0, "signal"    # I

    #@0
    .prologue
    .line 516
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->strsignal(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static sysconf(I)J
    .locals 2
    .param p0, "name"    # I

    #@0
    .prologue
    .line 526
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->sysconf(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static tcdrain(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 531
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->tcdrain(Ljava/io/FileDescriptor;)V

    #@5
    return-void
.end method

.method public static tcsendbreak(Ljava/io/FileDescriptor;I)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 536
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->tcsendbreak(Ljava/io/FileDescriptor;I)V

    #@5
    return-void
.end method

.method public static umask(I)I
    .locals 1
    .param p0, "mask"    # I

    #@0
    .prologue
    .line 541
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->umask(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static uname()Landroid/system/StructUtsname;
    .locals 1

    #@0
    .prologue
    .line 546
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static unlink(Ljava/lang/String;)V
    .locals 1
    .param p0, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 551
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->unlink(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static unsetenv(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 556
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0}, Llibcore/io/Os;->unsetenv(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public static waitpid(ILandroid/util/MutableInt;I)I
    .locals 1
    .param p0, "pid"    # I
    .param p1, "status"    # Landroid/util/MutableInt;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 561
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->waitpid(ILandroid/util/MutableInt;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 566
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static write(Ljava/io/FileDescriptor;[BII)I
    .locals 1
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

    #@0
    .prologue
    .line 571
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .locals 1
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

    #@0
    .prologue
    .line 576
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    #@5
    move-result v0

    #@6
    return v0
.end method
