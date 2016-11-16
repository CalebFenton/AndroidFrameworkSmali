.class Lsun/nio/ch/FileDispatcherImpl;
.super Lsun/nio/ch/FileDispatcher;
.source "FileDispatcherImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lsun/nio/ch/FileDispatcher;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "append"    # Z

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Lsun/nio/ch/FileDispatcher;-><init>()V

    #@3
    return-void
.end method

.method static native close0(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native closeIntFD(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native force0(Ljava/io/FileDescriptor;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native lock0(Ljava/io/FileDescriptor;ZJJZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native preClose0(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static preCloseImpl(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->isSocket$()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 120
    :try_start_0
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 125
    :cond_0
    :goto_0
    invoke-static {p0}, Lsun/nio/ch/FileDispatcherImpl;->preClose0(Ljava/io/FileDescriptor;)V

    #@10
    .line 115
    return-void

    #@11
    .line 121
    :catch_0
    move-exception v0

    #@12
    .local v0, "ignored":Ljava/net/SocketException;
    goto :goto_0
.end method

.method static native pread0(Ljava/io/FileDescriptor;JIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native pwrite0(Ljava/io/FileDescriptor;JIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native read0(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native readv0(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native release0(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native size0(Ljava/io/FileDescriptor;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native truncate0(Ljava/io/FileDescriptor;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native write0(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native writev0(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method close(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->close0(Ljava/io/FileDescriptor;)V

    #@3
    .line 107
    return-void
.end method

.method duplicateForMapping(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    return-object v0
.end method

.method force(Ljava/io/FileDescriptor;Z)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 82
    invoke-static {p1, p2}, Lsun/nio/ch/FileDispatcherImpl;->force0(Ljava/io/FileDescriptor;Z)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method lock(Ljava/io/FileDescriptor;ZJJZ)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "blocking"    # Z
    .param p3, "pos"    # J
    .param p5, "size"    # J
    .param p7, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 99
    invoke-static/range {p1 .. p7}, Lsun/nio/ch/FileDispatcherImpl;->lock0(Ljava/io/FileDescriptor;ZJJZ)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method preClose(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->preCloseImpl(Ljava/io/FileDescriptor;)V

    #@3
    .line 111
    return-void
.end method

.method pread(Ljava/io/FileDescriptor;JIJ)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .param p5, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 53
    invoke-static/range {p1 .. p6}, Lsun/nio/ch/FileDispatcherImpl;->pread0(Ljava/io/FileDescriptor;JIJ)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method pwrite(Ljava/io/FileDescriptor;JIJ)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .param p5, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 70
    invoke-static/range {p1 .. p6}, Lsun/nio/ch/FileDispatcherImpl;->pwrite0(Ljava/io/FileDescriptor;JIJ)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method read(Ljava/io/FileDescriptor;JI)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 46
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->read0(Ljava/io/FileDescriptor;JI)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method readv(Ljava/io/FileDescriptor;JI)J
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 58
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->readv0(Ljava/io/FileDescriptor;JI)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method release(Ljava/io/FileDescriptor;JJ)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pos"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 104
    invoke-static {p1, p2, p3, p4, p5}, Lsun/nio/ch/FileDispatcherImpl;->release0(Ljava/io/FileDescriptor;JJ)V

    #@a
    .line 102
    return-void
.end method

.method size(Ljava/io/FileDescriptor;)J
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@7
    .line 92
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->size0(Ljava/io/FileDescriptor;)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method truncate(Ljava/io/FileDescriptor;J)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 87
    invoke-static {p1, p2, p3}, Lsun/nio/ch/FileDispatcherImpl;->truncate0(Ljava/io/FileDescriptor;J)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method write(Ljava/io/FileDescriptor;JI)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 63
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->write0(Ljava/io/FileDescriptor;JI)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method writev(Ljava/io/FileDescriptor;JI)J
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@7
    .line 77
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->writev0(Ljava/io/FileDescriptor;JI)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method
