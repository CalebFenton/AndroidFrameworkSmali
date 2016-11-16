.class public Llibcore/io/BlockGuardOs;
.super Llibcore/io/ForwardingOs;
.source "BlockGuardOs.java"


# direct methods
.method public constructor <init>(Llibcore/io/Os;)V
    .locals 0
    .param p1, "os"    # Llibcore/io/Os;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Llibcore/io/ForwardingOs;-><init>(Llibcore/io/Os;)V

    #@3
    .line 41
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
    .line 106
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
    .line 107
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
    .line 47
    :try_start_0
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Ldalvik/system/SocketTagger;->tag(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 48
    return-object p1

    #@8
    .line 49
    :catch_0
    move-exception v0

    #@9
    .line 50
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
    .line 56
    :try_start_0
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 54
    return-void

    #@8
    .line 57
    :catch_0
    move-exception v0

    #@9
    .line 58
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
.method public accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "peerAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 64
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

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
    .line 68
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 69
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
    .line 73
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 74
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    #@c
    .line 72
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
    .line 78
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 79
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->chown(Ljava/lang/String;II)V

    #@c
    .line 77
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
    .line 87
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->isSocket$()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 88
    invoke-static {p1}, Llibcore/io/BlockGuardOs;->isLingerSocket(Ljava/io/FileDescriptor;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 92
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@13
    .line 94
    :cond_0
    invoke-direct {p0, p1}, Llibcore/io/BlockGuardOs;->untagSocket(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 102
    :cond_1
    :goto_0
    iget-object v1, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@18
    invoke-interface {v1, p1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    #@1b
    .line 82
    return-void

    #@1c
    .line 96
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
    .line 111
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 112
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@c
    .line 110
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
    .line 116
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 117
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    #@c
    .line 115
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
    .line 121
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 122
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->fchown(Ljava/io/FileDescriptor;II)V

    #@c
    .line 120
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
    .line 128
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 129
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V

    #@c
    .line 127
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
    .line 133
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 134
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
    .line 138
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 139
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
    .line 143
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 144
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    #@c
    .line 142
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
    .line 148
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 149
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    #@c
    .line 147
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
    .line 153
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 154
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3}, Llibcore/io/Os;->lchown(Ljava/lang/String;II)V

    #@c
    .line 152
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
    .line 158
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 159
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 157
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
    .line 163
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 164
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
    .line 168
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 169
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
    .line 173
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 174
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    #@c
    .line 172
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
    .line 178
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 179
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->mkfifo(Ljava/lang/String;I)V

    #@c
    .line 177
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
    .line 183
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 184
    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    #@9
    and-int/2addr v0, p3

    #@a
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 185
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@15
    .line 187
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
    .line 193
    if-eqz p2, :cond_0

    #@2
    .line 194
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@9
    .line 196
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
    .line 200
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 201
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
    .line 199
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
    .line 205
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 206
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
    .line 210
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 211
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
    .line 215
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 216
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
    .line 220
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 221
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
    .line 225
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 226
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
    .line 230
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 231
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
    .line 235
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 236
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
    .line 245
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 246
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public realpath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 241
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
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
    .line 250
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 251
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
    .line 255
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 256
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
    .line 260
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 261
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1}, Llibcore/io/Os;->remove(Ljava/lang/String;)V

    #@c
    .line 259
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
    .line 265
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 266
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 264
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
    .line 270
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 271
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
    .line 275
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 276
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
    .line 281
    if-eqz p6, :cond_0

    #@2
    .line 282
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@9
    .line 284
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
    .line 288
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
    .line 292
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
    .line 293
    invoke-direct {p0, p4}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    #@d
    .line 294
    invoke-direct {p0, p5}, Llibcore/io/BlockGuardOs;->tagSocket(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    #@10
    .line 291
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
    .line 298
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 299
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
    .line 303
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 304
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
    .line 308
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 309
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2}, Llibcore/io/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 307
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
    .line 313
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 314
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
    .line 318
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 319
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
    .line 323
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 324
    iget-object v0, p0, Llibcore/io/BlockGuardOs;->os:Llibcore/io/Os;

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    #@c
    move-result v0

    #@d
    return v0
.end method
