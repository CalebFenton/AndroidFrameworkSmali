.class Lsun/nio/ch/DatagramDispatcher;
.super Lsun/nio/ch/NativeDispatcher;
.source "DatagramDispatcher.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lsun/nio/ch/NativeDispatcher;-><init>()V

    return-void
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
.method blacklist close(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->close0(Ljava/io/FileDescriptor;)V

    .line 71
    return-void
.end method

.method blacklist preClose(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->preClose0(Ljava/io/FileDescriptor;)V

    .line 75
    return-void
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

    .line 47
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 48
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/DatagramDispatcher;->read0(Ljava/io/FileDescriptor;JI)I

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

    .line 53
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 54
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/DatagramDispatcher;->readv0(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
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

    .line 59
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 60
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/DatagramDispatcher;->write0(Ljava/io/FileDescriptor;JI)I

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

    .line 65
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 66
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/DatagramDispatcher;->writev0(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method
