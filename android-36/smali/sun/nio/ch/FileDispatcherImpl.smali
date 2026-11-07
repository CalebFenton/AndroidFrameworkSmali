.class Lsun/nio/ch/FileDispatcherImpl;
.super Lsun/nio/ch/FileDispatcher;
.source "FileDispatcherImpl.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lsun/nio/ch/FileDispatcher;-><init>()V

    .line 44
    return-void
.end method

.method static native blacklist close0(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist closeIntFD(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist force0(Ljava/io/FileDescriptor;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist lock0(Ljava/io/FileDescriptor;ZJJZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist preClose0(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist pread0(Ljava/io/FileDescriptor;JIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist pwrite0(Ljava/io/FileDescriptor;JIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist read0(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist readv0(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist release0(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist size0(Ljava/io/FileDescriptor;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist truncate0(Ljava/io/FileDescriptor;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist write0(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist writev0(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method blacklist canTransferToDirectly(Ljava/nio/channels/SelectableChannel;)Z
    .registers 3
    .param p1, "sc"    # Ljava/nio/channels/SelectableChannel;

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method blacklist close(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->close0(Ljava/io/FileDescriptor;)V

    .line 122
    return-void
.end method

.method blacklist duplicateForMapping(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 131
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    return-object v0
.end method

.method blacklist force(Ljava/io/FileDescriptor;Z)I
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 91
    invoke-static {p1, p2}, Lsun/nio/ch/FileDispatcherImpl;->force0(Ljava/io/FileDescriptor;Z)I

    move-result v0

    return v0
.end method

.method blacklist lock(Ljava/io/FileDescriptor;ZJJZ)I
    .registers 9
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

    .line 110
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 111
    invoke-static/range {p1 .. p7}, Lsun/nio/ch/FileDispatcherImpl;->lock0(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v0

    return v0
.end method

.method blacklist preClose(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->preClose0(Ljava/io/FileDescriptor;)V

    .line 126
    return-void
.end method

.method blacklist pread(Ljava/io/FileDescriptor;JIJ)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .param p5, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 57
    invoke-static/range {p1 .. p6}, Lsun/nio/ch/FileDispatcherImpl;->pread0(Ljava/io/FileDescriptor;JIJ)I

    move-result v0

    return v0
.end method

.method blacklist pwrite(Ljava/io/FileDescriptor;JIJ)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .param p5, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 77
    invoke-static/range {p1 .. p6}, Lsun/nio/ch/FileDispatcherImpl;->pwrite0(Ljava/io/FileDescriptor;JIJ)I

    move-result v0

    return v0
.end method

.method blacklist read(Ljava/io/FileDescriptor;JI)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 49
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->read0(Ljava/io/FileDescriptor;JI)I

    move-result v0

    return v0
.end method

.method blacklist readv(Ljava/io/FileDescriptor;JI)J
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 63
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->readv0(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist release(Ljava/io/FileDescriptor;JJ)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pos"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 117
    invoke-static {p1, p2, p3, p4, p5}, Lsun/nio/ch/FileDispatcherImpl;->release0(Ljava/io/FileDescriptor;JJ)V

    .line 118
    return-void
.end method

.method blacklist size(Ljava/io/FileDescriptor;)J
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 103
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->size0(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist transferToDirectlyNeedsPositionLock()Z
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method blacklist truncate(Ljava/io/FileDescriptor;J)I
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 97
    invoke-static {p1, p2, p3}, Lsun/nio/ch/FileDispatcherImpl;->truncate0(Ljava/io/FileDescriptor;J)I

    move-result v0

    return v0
.end method

.method blacklist write(Ljava/io/FileDescriptor;JI)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 69
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->write0(Ljava/io/FileDescriptor;JI)I

    move-result v0

    return v0
.end method

.method blacklist writev(Ljava/io/FileDescriptor;JI)J
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 85
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->writev0(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method
