.class abstract Lsun/nio/ch/NativeDispatcher;
.super Ljava/lang/Object;
.source "NativeDispatcher.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist close(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method blacklist needsPositionLock()Z
    .registers 2

    .line 46
    const/4 v0, 0x0

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

    .line 78
    return-void
.end method

.method blacklist pread(Ljava/io/FileDescriptor;JIJ)I
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .param p5, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation Unsupported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist pwrite(Ljava/io/FileDescriptor;JIJ)I
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .param p5, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation Unsupported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract blacklist read(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist readv(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist write(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist writev(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
