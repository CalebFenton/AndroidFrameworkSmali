.class public Llibcore/io/ForwardingOs;
.super Ljava/lang/Object;
.source "ForwardingOs.java"

# interfaces
.implements Llibcore/io/Os;


# instance fields
.field protected final os:Llibcore/io/Os;


# direct methods
.method public constructor <init>(Llibcore/io/Os;)V
    .locals 0
    .param p1, "os"    # Llibcore/io/Os;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@5
    .line 49
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "peerAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public access(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "hints"    # Landroid/system/StructAddrinfo;
    .param p3, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@5
    return-void
.end method

.method public bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    #@5
    return-void
.end method

.method public chmod(Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    #@5
    return-void
.end method

.method public chown(Ljava/lang/String;II)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->chown(Ljava/lang/String;II)V

    #@5
    return-void
.end method

.method public close(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    #@5
    return-void
.end method

.method public connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@5
    return-void
.end method

.method public connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    #@5
    return-void
.end method

.method public dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "oldFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "oldFd"    # Ljava/io/FileDescriptor;
    .param p2, "newFd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public environ()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execv(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "argv"    # [Ljava/lang/String;
    .param p3, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public fchmod(Ljava/io/FileDescriptor;I)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    #@5
    return-void
.end method

.method public fchown(Ljava/io/FileDescriptor;II)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->fchown(Ljava/io/FileDescriptor;II)V

    #@5
    return-void
.end method

.method public fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "cmd"    # I
    .param p3, "arg"    # Landroid/system/StructFlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public fcntlInt(Ljava/io/FileDescriptor;II)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "cmd"    # I
    .param p3, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public fcntlVoid(Ljava/io/FileDescriptor;I)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "cmd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public fdatasync(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V

    #@5
    return-void
.end method

.method public fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public fsync(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    #@5
    return-void
.end method

.method public ftruncate(Ljava/io/FileDescriptor;J)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    #@5
    return-void
.end method

.method public gai_strerror(I)Ljava/lang/String;
    .locals 1
    .param p1, "error"    # I

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getegid()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->getegid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public geteuid()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->geteuid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getgid()I
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->getgid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getpgid(I)I
    .locals 1
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->getpgid(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getpid()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->getpid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getppid()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->getppid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getpwuid(I)Landroid/system/StructPasswd;
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getsockoptByte(Ljava/io/FileDescriptor;II)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptByte(Ljava/io/FileDescriptor;II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getsockoptInt(Ljava/io/FileDescriptor;II)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public gettid()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->gettid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getuid()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->getuid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getxattr(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "outValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;[B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public if_indextoname(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->if_indextoname(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "family"    # I
    .param p2, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "cmd"    # I
    .param p3, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "cmd"    # I
    .param p3, "arg"    # Landroid/util/MutableInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isatty(Ljava/io/FileDescriptor;)Z
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public kill(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "signal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->kill(II)V

    #@5
    return-void
.end method

.method public lchown(Ljava/lang/String;II)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->lchown(Ljava/lang/String;II)V

    #@5
    return-void
.end method

.method public link(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public listen(Ljava/io/FileDescriptor;I)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    #@5
    return-void
.end method

.method public lseek(Ljava/io/FileDescriptor;JI)J
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "whence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public lstat(Ljava/lang/String;)Landroid/system/StructStat;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public mincore(JJ[B)V
    .locals 7
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .param p5, "vector"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    iget-object v1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move-wide v2, p1

    #@3
    move-wide v4, p3

    #@4
    move-object v6, p5

    #@5
    invoke-interface/range {v1 .. v6}, Llibcore/io/Os;->mincore(JJ[B)V

    #@8
    return-void
.end method

.method public mkdir(Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    #@5
    return-void
.end method

.method public mkfifo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->mkfifo(Ljava/lang/String;I)V

    #@5
    return-void
.end method

.method public mlock(JJ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->mlock(JJ)V

    #@5
    return-void
.end method

.method public mmap(JJIILjava/io/FileDescriptor;J)J
    .locals 11
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .param p5, "prot"    # I
    .param p6, "flags"    # I
    .param p7, "fd"    # Ljava/io/FileDescriptor;
    .param p8, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    iget-object v1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move-wide v2, p1

    #@3
    move-wide v4, p3

    #@4
    move/from16 v6, p5

    #@6
    move/from16 v7, p6

    #@8
    move-object/from16 v8, p7

    #@a
    move-wide/from16 v9, p8

    #@c
    invoke-interface/range {v1 .. v10}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0
.end method

.method public msync(JJI)V
    .locals 7
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    iget-object v1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move-wide v2, p1

    #@3
    move-wide v4, p3

    #@4
    move v6, p5

    #@5
    invoke-interface/range {v1 .. v6}, Llibcore/io/Os;->msync(JJI)V

    #@8
    return-void
.end method

.method public munlock(JJ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->munlock(JJ)V

    #@5
    return-void
.end method

.method public munmap(JJ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->munmap(JJ)V

    #@5
    return-void
.end method

.method public open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public pipe2(I)[Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public poll([Landroid/system/StructPollfd;I)I
    .locals 1
    .param p1, "fds"    # [Landroid/system/StructPollfd;
    .param p2, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p2

    #@4
    move-wide v4, p4

    #@5
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    #@8
    return-void
.end method

.method public prctl(IJJJJ)I
    .locals 10
    .param p1, "option"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # J
    .param p6, "arg4"    # J
    .param p8, "arg5"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move v1, p1

    #@3
    move-wide v2, p2

    #@4
    move-wide v4, p4

    #@5
    move-wide/from16 v6, p6

    #@7
    move-wide/from16 v8, p8

    #@9
    invoke-interface/range {v0 .. v9}, Llibcore/io/Os;->prctl(IJJJJ)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public pread(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 9
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

    #@0
    .prologue
    .line 125
    iget-object v1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move-wide v6, p5

    #@7
    invoke-interface/range {v1 .. v7}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 9
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

    #@0
    .prologue
    .line 127
    iget-object v1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move-wide v6, p5

    #@7
    invoke-interface/range {v1 .. v7}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read(Ljava/io/FileDescriptor;[BII)I
    .locals 1
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

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .locals 1
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

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .locals 1
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

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .locals 7
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

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->remove(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public removexattr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J
    .locals 6
    .param p1, "outFd"    # Ljava/io/FileDescriptor;
    .param p2, "inFd"    # Ljava/io/FileDescriptor;
    .param p3, "inOffset"    # Landroid/util/MutableLong;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-wide v4, p4

    #@6
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 6
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

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .locals 8
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

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    move v7, p7

    #@9
    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    .locals 7
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

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public setegid(I)V
    .locals 1
    .param p1, "egid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->setegid(I)V

    #@5
    return-void
.end method

.method public setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    #@5
    return-void
.end method

.method public seteuid(I)V
    .locals 1
    .param p1, "euid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->seteuid(I)V

    #@5
    return-void
.end method

.method public setgid(I)V
    .locals 1
    .param p1, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->setgid(I)V

    #@5
    return-void
.end method

.method public setpgid(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "pgid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->setpgid(II)V

    #@5
    return-void
.end method

.method public setregid(II)V
    .locals 1
    .param p1, "rgid"    # I
    .param p2, "egid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->setregid(II)V

    #@5
    return-void
.end method

.method public setreuid(II)V
    .locals 1
    .param p1, "ruid"    # I
    .param p2, "euid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->setregid(II)V

    #@5
    return-void
.end method

.method public setsid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->setsid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setsockoptByte(Ljava/io/FileDescriptor;III)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    #@5
    return-void
.end method

.method public setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # Landroid/system/StructGroupReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V

    #@5
    return-void
.end method

.method public setsockoptGroupSourceReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupSourceReq;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # Landroid/system/StructGroupSourceReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptGroupSourceReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupSourceReq;)V

    #@5
    return-void
.end method

.method public setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    #@5
    return-void
.end method

.method public setsockoptInt(Ljava/io/FileDescriptor;III)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@5
    return-void
.end method

.method public setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    #@5
    return-void
.end method

.method public setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # Landroid/system/StructLinger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    #@5
    return-void
.end method

.method public setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # Landroid/system/StructTimeval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    #@5
    return-void
.end method

.method public setuid(I)V
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->setuid(I)V

    #@5
    return-void
.end method

.method public setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V

    #@5
    return-void
.end method

.method public shutdown(Ljava/io/FileDescriptor;I)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "how"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V

    #@5
    return-void
.end method

.method public socket(III)Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "domain"    # I
    .param p2, "type"    # I
    .param p3, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 6
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

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@a
    return-void
.end method

.method public stat(Ljava/lang/String;)Landroid/system/StructStat;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public strerror(I)Ljava/lang/String;
    .locals 1
    .param p1, "errno"    # I

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->strerror(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public strsignal(I)Ljava/lang/String;
    .locals 1
    .param p1, "signal"    # I

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->strsignal(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public sysconf(I)J
    .locals 2
    .param p1, "name"    # I

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->sysconf(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public tcdrain(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->tcdrain(Ljava/io/FileDescriptor;)V

    #@5
    return-void
.end method

.method public tcsendbreak(Ljava/io/FileDescriptor;I)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->tcsendbreak(Ljava/io/FileDescriptor;I)V

    #@5
    return-void
.end method

.method public umask(I)I
    .locals 1
    .param p1, "mask"    # I

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->umask(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public uname()Landroid/system/StructUtsname;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public unsetenv(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1}, Llibcore/io/Os;->unsetenv(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public waitpid(ILandroid/util/MutableInt;I)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "status"    # Landroid/util/MutableInt;
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->waitpid(ILandroid/util/MutableInt;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public write(Ljava/io/FileDescriptor;[BII)I
    .locals 1
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

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .locals 1
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

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    #@5
    move-result v0

    #@6
    return v0
.end method
