.class public Llibcore/io/BlockGuardOs;
.super Llibcore/io/ForwardingOs;
.source "BlockGuardOs.java"


# direct methods
.method public constructor <init>(Llibcore/io/Os;)V
    .locals 0
    .param p1, "os"    # Llibcore/io/Os;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1}, Llibcore/io/ForwardingOs;-><init>(Llibcore/io/Os;)V

    #@3
    .line 40
    return-void
.end method

.method private static isLingerSocket(Ljava/io/FileDescriptor;)Z
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 105
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@3
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@5
    sget v4, Landroid/system/OsConstants;->SO_LINGER:I

    #@7
    invoke-interface {v2, p0, v3, v4}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    #@a
    move-result-object v0

    #@b
    .line 106
    .local v0, "linger":Landroid/system/StructLinger;
    invoke-virtual {v0}, Landroid/system/StructLinger;->isOn()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    iget v2, v0, Landroid/system/StructLinger;->l_linger:I

    #@13
    if-lez v2, :cond_0

    #@15
    const/4 v1, 0x1

    #@16
    :cond_0
    return v1
.end method

.method private tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Ldalvik/system/SocketTagger;->tag(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 47
    return-object p1

    #@8
    .line 48
    :catch_0
    move-exception v0

    #@9
    .line 49
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Landroid/system/ErrnoException;

    #@b
    const-string/jumbo v2, "socket"

    #@e
    sget v3, Landroid/system/OsConstants;->EINVAL:I

    #@10
    invoke-direct {v1, v2, v3, v0}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method private untagSocket(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    :try_start_0
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 53
    return-void

    #@8
    .line 56
    :catch_0
    move-exception v0

    #@9
    .line 57
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Landroid/system/ErrnoException;

    #@b
    const-string/jumbo v2, "socket"

    #@e
    sget v3, Landroid/system/OsConstants;->EINVAL:I

    #@10
    invoke-direct {v1, v2, v3, v0}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    #@13
    throw v1
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
    .line 62
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 63
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    #@c
    move-result-object v0

    #@d
    invoke-direct {p0, v0}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    #@10
    move-result-object v0

    #@11
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
    .line 67
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 68
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z

    #@c
    move-result v0

    #@d
    return v0
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
    .line 72
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 73
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    #@c
    .line 71
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
    .line 77
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 78
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->chown(Ljava/lang/String;II)V

    #@c
    .line 76
    return-void
.end method

.method public close(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->isSocket$()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 87
    invoke-static {p1}, Llibcore/io/BlockGuardOs;->isLingerSocket(Ljava/io/FileDescriptor;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 91
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@13
    .line 93
    :cond_0
    invoke-direct {p0, p1}, Llibcore/io/BlockGuardOs;->untagSocket(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 101
    :cond_1
    :goto_0
    iget-object v1, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@18
    invoke-interface {v1, p1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    #@1b
    .line 81
    return-void

    #@1c
    .line 95
    :catch_0
    move-exception v0

    #@1d
    .local v0, "ignored":Landroid/system/ErrnoException;
    goto :goto_0
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
    .line 110
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 111
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@c
    .line 109
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
    .line 115
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 116
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    #@c
    .line 114
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
    .line 120
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 121
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->fchown(Ljava/io/FileDescriptor;II)V

    #@c
    .line 119
    return-void
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
    .line 127
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 128
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V

    #@c
    .line 126
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
    .line 132
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 133
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@c
    move-result-object v0

    #@d
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
    .line 137
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 138
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    #@c
    move-result-object v0

    #@d
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
    .line 142
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 143
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    #@c
    .line 141
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
    .line 147
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 148
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    #@c
    .line 146
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
    .line 152
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 153
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->lchown(Ljava/lang/String;II)V

    #@c
    .line 151
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
    .line 157
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 158
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 156
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
    .line 162
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 163
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@c
    move-result-wide v0

    #@d
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
    .line 167
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 168
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    #@c
    move-result-object v0

    #@d
    return-object v0
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
    .line 172
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 173
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    #@c
    .line 171
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
    .line 177
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 178
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->mkfifo(Ljava/lang/String;I)V

    #@c
    .line 176
    return-void
.end method

.method public open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .locals 2
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
    .line 182
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 183
    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    #@9
    and-int/2addr v0, p3

    #@a
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 184
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@15
    .line 186
    :cond_0
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@17
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@1a
    move-result-object v0

    #@1b
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
    .line 192
    if-eqz p2, :cond_0

    #@2
    .line 193
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@9
    .line 195
    :cond_0
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@b
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    #@e
    move-result v0

    #@f
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
    .line 199
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 200
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    move-object v1, p1

    #@a
    move-wide v2, p2

    #@b
    move-wide v4, p4

    #@c
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    #@f
    .line 198
    return-void
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
    .line 204
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 205
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    #@c
    move-result v0

    #@d
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
    .line 209
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 210
    iget-object v1, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    move-object v2, p1

    #@a
    move-object v3, p2

    #@b
    move v4, p3

    #@c
    move v5, p4

    #@d
    move-wide v6, p5

    #@e
    invoke-interface/range {v1 .. v7}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    #@11
    move-result v0

    #@12
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
    .line 214
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 215
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    #@c
    move-result v0

    #@d
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
    .line 219
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 220
    iget-object v1, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    move-object v2, p1

    #@a
    move-object v3, p2

    #@b
    move v4, p3

    #@c
    move v5, p4

    #@d
    move-wide v6, p5

    #@e
    invoke-interface/range {v1 .. v7}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    #@11
    move-result v0

    #@12
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
    .line 224
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 225
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    #@c
    move-result v0

    #@d
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
    .line 229
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 230
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    #@c
    move-result v0

    #@d
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
    .line 234
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 235
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
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
    .line 239
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 240
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    #@c
    move-result v0

    #@d
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
    .line 244
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 245
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    #@c
    move-result v0

    #@d
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
    .line 249
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 250
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move v3, p3

    #@c
    move v4, p4

    #@d
    move v5, p5

    #@e
    move-object v6, p6

    #@f
    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    #@12
    move-result v0

    #@13
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
    .line 254
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 255
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->remove(Ljava/lang/String;)V

    #@c
    .line 253
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
    .line 259
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 260
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 258
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
    .line 264
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 265
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move-object v3, p3

    #@c
    move-wide v4, p4

    #@d
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J

    #@10
    move-result-wide v0

    #@11
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
    .line 269
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 270
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move v3, p3

    #@c
    move-object v4, p4

    #@d
    move v5, p5

    #@e
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    #@11
    move-result v0

    #@12
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
    .line 275
    if-eqz p6, :cond_0

    #@2
    .line 276
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@9
    .line 278
    :cond_0
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@b
    move-object v1, p1

    #@c
    move-object v2, p2

    #@d
    move v3, p3

    #@e
    move v4, p4

    #@f
    move v5, p5

    #@10
    move-object v6, p6

    #@11
    move v7, p7

    #@12
    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    #@15
    move-result v0

    #@16
    return v0
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
    .line 282
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@2
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    #@9
    move-result-object v0

    #@a
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
    .line 286
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

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
    .line 287
    invoke-direct {p0, p4}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    #@d
    .line 288
    invoke-direct {p0, p5}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    #@10
    .line 285
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
    .line 292
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 293
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@c
    move-result-object v0

    #@d
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
    .line 297
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 298
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    #@c
    move-result-object v0

    #@d
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
    .line 302
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 303
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 301
    return-void
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
    .line 307
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 308
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    #@c
    move-result v0

    #@d
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
    .line 312
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 313
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I

    #@c
    move-result v0

    #@d
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
    .line 317
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 318
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    #@c
    move-result v0

    #@d
    return v0
.end method
