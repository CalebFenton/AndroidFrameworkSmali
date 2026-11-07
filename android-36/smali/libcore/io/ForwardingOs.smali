.class public Llibcore/io/ForwardingOs;
.super Ljava/lang/Object;
.source "ForwardingOs.java"

# interfaces
.implements Llibcore/io/Os;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final greylist os:Llibcore/io/Os;


# direct methods
.method protected constructor greylist test-api <init>(Llibcore/io/Os;)V
    .registers 3
    .param p1, "os"    # Llibcore/io/Os;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/Os;

    iput-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    .line 76
    return-void
.end method


# virtual methods
.method public blacklist accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "peerAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist test-api access(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist android_fdsan_exchange_owner_tag(Ljava/io/FileDescriptor;JJ)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "previousOwnerId"    # J
    .param p4, "newOwnerId"    # J

    .line 181
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "previousOwnerId":J
    .end local p4    # "newOwnerId":J
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "previousOwnerId":J
    .local v4, "newOwnerId":J
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->android_fdsan_exchange_owner_tag(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public blacklist android_fdsan_get_owner_tag(Ljava/io/FileDescriptor;)J
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 186
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->android_fdsan_get_owner_tag(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist android_fdsan_get_tag_type(J)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # J

    .line 191
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->android_fdsan_get_tag_type(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist android_fdsan_get_tag_value(J)J
    .registers 5
    .param p1, "tag"    # J

    .line 196
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->android_fdsan_get_tag_value(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    .registers 5
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "hints"    # Landroid/system/StructAddrinfo;
    .param p3, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public blacklist bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public blacklist bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public blacklist capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;
    .registers 3
    .param p1, "hdr"    # Landroid/system/StructCapUserHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    .registers 4
    .param p1, "hdr"    # Landroid/system/StructCapUserHeader;
    .param p2, "data"    # [Landroid/system/StructCapUserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V

    .line 159
    return-void
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

    .line 165
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

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

    .line 171
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->chown(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist close(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public blacklist connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public blacklist connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method protected final blacklist delegate()Llibcore/io/Os;
    .registers 2

    .line 84
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    return-object v0
.end method

.method public blacklist dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .registers 3
    .param p1, "oldFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .registers 4
    .param p1, "oldFd"    # Ljava/io/FileDescriptor;
    .param p2, "newFd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist environ()[Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 226
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V

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

    .line 231
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist fchmod(Ljava/io/FileDescriptor;I)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public blacklist fchown(Ljava/io/FileDescriptor;II)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->fchown(Ljava/io/FileDescriptor;II)V

    return-void
.end method

.method public blacklist fcntlInt(Ljava/io/FileDescriptor;II)I
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "cmd"    # I
    .param p3, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public blacklist fcntlVoid(Ljava/io/FileDescriptor;I)I
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "cmd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public blacklist fdatasync(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public blacklist fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

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

    .line 271
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

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

    .line 276
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method public blacklist gai_strerror(I)Ljava/lang/String;
    .registers 3
    .param p1, "error"    # I

    .line 281
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getegid()I
    .registers 2

    .line 286
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getegid()I

    move-result v0

    return v0
.end method

.method public greylist getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist geteuid()I
    .registers 2

    .line 291
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->geteuid()I

    move-result v0

    return v0
.end method

.method public blacklist getgid()I
    .registers 2

    .line 296
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getgid()I

    move-result v0

    return v0
.end method

.method public blacklist getifaddrs()[Landroid/system/StructIfaddrs;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getifaddrs()[Landroid/system/StructIfaddrs;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getpgid(I)I
    .registers 3
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getpgid(I)I

    move-result v0

    return v0
.end method

.method public blacklist getpid()I
    .registers 2

    .line 322
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public blacklist getppid()I
    .registers 2

    .line 327
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public blacklist getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getpwuid(I)Landroid/system/StructPasswd;
    .registers 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getrlimit(I)Landroid/system/StructRlimit;
    .registers 3
    .param p1, "resource"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getrlimit(I)Landroid/system/StructRlimit;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getsockoptByte(Ljava/io/FileDescriptor;II)I
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptByte(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public blacklist getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getsockoptInt(Ljava/io/FileDescriptor;II)I
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public blacklist getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;

    move-result-object v0

    return-object v0
.end method

.method public blacklist gettid()I
    .registers 2

    .line 382
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public blacklist getuid()I
    .registers 2

    .line 387
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getuid()I

    move-result v0

    return v0
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

    .line 392
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist if_indextoname(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 402
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->if_indextoname(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist if_nametoindex(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 407
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->if_nametoindex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
    .registers 4
    .param p1, "family"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 412
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public blacklist ioctlFlags(Ljava/io/FileDescriptor;Ljava/lang/String;)I
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->ioctlFlags(Ljava/io/FileDescriptor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "cmd"    # I
    .param p3, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public blacklist ioctlInt(Ljava/io/FileDescriptor;I)I
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "cmd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public blacklist ioctlMTU(Ljava/io/FileDescriptor;Ljava/lang/String;)I
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->ioctlMTU(Ljava/io/FileDescriptor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist isatty(Ljava/io/FileDescriptor;)Z
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 437
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public blacklist kill(II)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "signal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->kill(II)V

    return-void
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

    .line 448
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->lchown(Ljava/lang/String;II)V

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

    .line 454
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist listen(Ljava/io/FileDescriptor;I)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public blacklist listxattr(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->listxattr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist lseek(Ljava/io/FileDescriptor;JI)J
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "whence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

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

    .line 475
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist madvise(JJI)V
    .registers 12
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .param p5, "advice"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .end local p1    # "address":J
    .end local p3    # "byteCount":J
    .end local p5    # "advice":I
    .local v1, "address":J
    .local v3, "byteCount":J
    .local v5, "advice":I
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->madvise(JJI)V

    return-void
.end method

.method public blacklist memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mincore(JJ[B)V
    .registers 12
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .param p5, "vector"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "address":J
    .end local p3    # "byteCount":J
    .end local p5    # "vector":[B
    .local v1, "address":J
    .local v3, "byteCount":J
    .local v5, "vector":[B
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->mincore(JJ[B)V

    return-void
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

    .line 496
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

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

    .line 502
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->mkfifo(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist mlock(JJ)V
    .registers 6
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->mlock(JJ)V

    return-void
.end method

.method public blacklist mmap(JJIILjava/io/FileDescriptor;J)J
    .registers 22
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

    .line 512
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10

    return-wide v10
.end method

.method public blacklist msync(JJI)V
    .registers 12
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .end local p1    # "address":J
    .end local p3    # "byteCount":J
    .end local p5    # "flags":I
    .local v1, "address":J
    .local v3, "byteCount":J
    .local v5, "flags":I
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->msync(JJI)V

    return-void
.end method

.method public blacklist munlock(JJ)V
    .registers 6
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->munlock(JJ)V

    return-void
.end method

.method public blacklist munmap(JJ)V
    .registers 6
    .param p1, "address"    # J
    .param p3, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->munmap(JJ)V

    return-void
.end method

.method public greylist test-api open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist pipe2(I)[Ljava/io/FileDescriptor;
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->pipe2(I)[Ljava/io/FileDescriptor;

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

    .line 578
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v0

    return v0
.end method

.method public blacklist posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "offset":J
    .end local p4    # "length":J
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "offset":J
    .local v4, "length":J
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public blacklist prctl(IJJJJ)I
    .registers 20
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

    .line 588
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Llibcore/io/Os;->prctl(IJJJJ)I

    move-result v0

    return v0
.end method

.method public blacklist pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
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

    .line 593
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public blacklist pread(Ljava/io/FileDescriptor;[BIIJ)I
    .registers 14
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

    .line 598
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "bytes":[B
    .end local p3    # "byteOffset":I
    .end local p4    # "byteCount":I
    .end local p5    # "offset":J
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "bytes":[B
    .local v3, "byteOffset":I
    .local v4, "byteCount":I
    .local v5, "offset":J
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p1

    return p1
.end method

.method public blacklist pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
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

    .line 603
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public blacklist pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .registers 14
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

    .line 608
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "bytes":[B
    .end local p3    # "byteOffset":I
    .end local p4    # "byteCount":I
    .end local p5    # "offset":J
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "bytes":[B
    .local v3, "byteOffset":I
    .local v4, "byteCount":I
    .local v5, "offset":J
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p1

    return p1
.end method

.method public blacklist read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 613
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public blacklist read(Ljava/io/FileDescriptor;[BII)I
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

    .line 618
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

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

    .line 624
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
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

    .line 634
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v0

    return v0
.end method

.method public blacklist realpath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 629
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

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

    .line 639
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method public blacklist recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .registers 14
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

    .line 644
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "bytes":[B
    .end local p3    # "byteOffset":I
    .end local p4    # "byteCount":I
    .end local p5    # "flags":I
    .end local p6    # "srcAddress":Ljava/net/InetSocketAddress;
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "bytes":[B
    .local v3, "byteOffset":I
    .local v4, "byteCount":I
    .local v5, "flags":I
    .local v6, "srcAddress":Ljava/net/InetSocketAddress;
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result p1

    return p1
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

    .line 649
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->recvmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I

    move-result v0

    return v0
.end method

.method public greylist test-api remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 678
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public greylist removexattr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist test-api rename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J
    .registers 12
    .param p1, "outFd"    # Ljava/io/FileDescriptor;
    .param p2, "inFd"    # Ljava/io/FileDescriptor;
    .param p3, "offset"    # Landroid/system/Int64Ref;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .end local p1    # "outFd":Ljava/io/FileDescriptor;
    .end local p2    # "inFd":Ljava/io/FileDescriptor;
    .end local p3    # "offset":Landroid/system/Int64Ref;
    .end local p4    # "byteCount":J
    .local v1, "outFd":Ljava/io/FileDescriptor;
    .local v2, "inFd":Ljava/io/FileDescriptor;
    .local v3, "offset":Landroid/system/Int64Ref;
    .local v4, "byteCount":J
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide p1

    return-wide p1
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

    .line 713
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->sendmsg(Ljava/io/FileDescriptor;Landroid/system/StructMsghdr;I)I

    move-result v0

    return v0
.end method

.method public blacklist sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .registers 12
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

    .line 718
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    .end local p3    # "flags":I
    .end local p4    # "inetAddress":Ljava/net/InetAddress;
    .end local p5    # "port":I
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    .local v3, "flags":I
    .local v4, "inetAddress":Ljava/net/InetAddress;
    .local v5, "port":I
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public blacklist sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .registers 16
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

    .line 723
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "bytes":[B
    .end local p3    # "byteOffset":I
    .end local p4    # "byteCount":I
    .end local p5    # "flags":I
    .end local p6    # "inetAddress":Ljava/net/InetAddress;
    .end local p7    # "port":I
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "bytes":[B
    .local v3, "byteOffset":I
    .local v4, "byteCount":I
    .local v5, "flags":I
    .local v6, "inetAddress":Ljava/net/InetAddress;
    .local v7, "port":I
    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public blacklist sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    .registers 14
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

    .line 728
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "bytes":[B
    .end local p3    # "byteOffset":I
    .end local p4    # "byteCount":I
    .end local p5    # "flags":I
    .end local p6    # "address":Ljava/net/SocketAddress;
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "bytes":[B
    .local v3, "byteOffset":I
    .local v4, "byteCount":I
    .local v5, "flags":I
    .local v6, "address":Ljava/net/SocketAddress;
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    move-result p1

    return p1
.end method

.method public blacklist setegid(I)V
    .registers 3
    .param p1, "egid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 733
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->setegid(I)V

    return-void
.end method

.method public greylist setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public blacklist seteuid(I)V
    .registers 3
    .param p1, "euid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->seteuid(I)V

    return-void
.end method

.method public blacklist setgid(I)V
    .registers 3
    .param p1, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->setgid(I)V

    return-void
.end method

.method public blacklist setpgid(II)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "pgid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 754
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->setpgid(II)V

    return-void
.end method

.method public blacklist setregid(II)V
    .registers 4
    .param p1, "rgid"    # I
    .param p2, "egid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 759
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->setregid(II)V

    return-void
.end method

.method public blacklist setreuid(II)V
    .registers 4
    .param p1, "ruid"    # I
    .param p2, "euid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 764
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->setreuid(II)V

    return-void
.end method

.method public blacklist setsid()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 769
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->setsid()I

    move-result v0

    return v0
.end method

.method public blacklist setsockoptByte(Ljava/io/FileDescriptor;III)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 774
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public blacklist setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # Landroid/system/StructGroupReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 794
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V

    return-void
.end method

.method public blacklist setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 779
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    return-void
.end method

.method public blacklist setsockoptInt(Ljava/io/FileDescriptor;III)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 784
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public blacklist setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 789
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public blacklist setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # Landroid/system/StructLinger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 799
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    return-void
.end method

.method public greylist setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "level"    # I
    .param p3, "option"    # I
    .param p4, "value"    # Landroid/system/StructTimeval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 805
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    return-void
.end method

.method public blacklist setuid(I)V
    .registers 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 810
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->setuid(I)V

    return-void
.end method

.method public greylist setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
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

    .line 816
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V

    return-void
.end method

.method public blacklist shutdown(Ljava/io/FileDescriptor;I)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "how"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public blacklist socket(III)Ljava/io/FileDescriptor;
    .registers 5
    .param p1, "domain"    # I
    .param p2, "type"    # I
    .param p3, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .registers 12
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

    .line 831
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "domain":I
    .end local p2    # "type":I
    .end local p3    # "protocol":I
    .end local p4    # "fd1":Ljava/io/FileDescriptor;
    .end local p5    # "fd2":Ljava/io/FileDescriptor;
    .local v1, "domain":I
    .local v2, "type":I
    .local v3, "protocol":I
    .local v4, "fd1":Ljava/io/FileDescriptor;
    .local v5, "fd2":Ljava/io/FileDescriptor;
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public blacklist splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J
    .registers 16
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

    .line 836
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move v7, p7

    .end local p1    # "fdIn":Ljava/io/FileDescriptor;
    .end local p2    # "offIn":Landroid/system/Int64Ref;
    .end local p3    # "fdOut":Ljava/io/FileDescriptor;
    .end local p4    # "offOut":Landroid/system/Int64Ref;
    .end local p5    # "len":J
    .end local p7    # "flags":I
    .local v1, "fdIn":Ljava/io/FileDescriptor;
    .local v2, "offIn":Landroid/system/Int64Ref;
    .local v3, "fdOut":Ljava/io/FileDescriptor;
    .local v4, "offOut":Landroid/system/Int64Ref;
    .local v5, "len":J
    .local v7, "flags":I
    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public greylist test-api stat(Ljava/lang/String;)Landroid/system/StructStat;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 851
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

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

    .line 857
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0

    return-object v0
.end method

.method public blacklist strerror(I)Ljava/lang/String;
    .registers 3
    .param p1, "errno"    # I

    .line 862
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->strerror(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist strsignal(I)Ljava/lang/String;
    .registers 3
    .param p1, "signal"    # I

    .line 867
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->strsignal(I)Ljava/lang/String;

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

    .line 873
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist sysconf(I)J
    .registers 4
    .param p1, "name"    # I

    .line 879
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist tcdrain(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 884
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->tcdrain(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public blacklist tcsendbreak(Ljava/io/FileDescriptor;I)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 889
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->tcsendbreak(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForwardingOs{os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist umask(I)I
    .registers 3
    .param p1, "mask"    # I

    .line 894
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->umask(I)I

    move-result v0

    return v0
.end method

.method public blacklist uname()Landroid/system/StructUtsname;
    .registers 2

    .line 899
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v0

    return-object v0
.end method

.method public greylist test-api unlink(Ljava/lang/String;)V
    .registers 3
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 928
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->unlink(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist unsetenv(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 933
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->unsetenv(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist waitpid(ILandroid/system/Int32Ref;I)I
    .registers 5
    .param p1, "pid"    # I
    .param p2, "status"    # Landroid/system/Int32Ref;
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 938
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->waitpid(ILandroid/system/Int32Ref;I)I

    move-result v0

    return v0
.end method

.method public blacklist write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 943
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public blacklist write(Ljava/io/FileDescriptor;[BII)I
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

    .line 948
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public blacklist writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
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

    .line 953
    iget-object v0, p0, Llibcore/io/ForwardingOs;->os:Llibcore/io/Os;

    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result v0

    return v0
.end method
