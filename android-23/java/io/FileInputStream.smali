.class public Ljava/io/FileInputStream;
.super Ljava/io/InputStream;
.source "FileInputStream.java"


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final shouldClose:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 62
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 73
    if-nez p1, :cond_0

    #@b
    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "file == null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    #@1a
    invoke-static {v0, v1}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@20
    .line 77
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Ljava/io/FileInputStream;->shouldClose:Z

    #@23
    .line 78
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@25
    const-string/jumbo v1, "close"

    #@28
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@2b
    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 62
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 90
    if-nez p1, :cond_0

    #@b
    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "fd == null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 93
    :cond_0
    iput-object p1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@16
    .line 94
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Ljava/io/FileInputStream;->shouldClose:Z

    #@19
    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@8
    .line 102
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0}, Llibcore/io/IoBridge;->available(Ljava/io/FileDescriptor;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@5
    .line 114
    monitor-enter p0

    #@6
    .line 115
    :try_start_0
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 116
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    #@c
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    #@f
    .line 118
    :cond_0
    iget-boolean v0, p0, Ljava/io/FileInputStream;->shouldClose:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 119
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@15
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :goto_0
    monitor-exit p0

    #@19
    .line 112
    return-void

    #@1a
    .line 123
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/FileDescriptor;

    #@1c
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@1f
    iput-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 114
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 138
    iget-object v1, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 140
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 143
    :try_start_1
    invoke-super {p0}, Ljava/io/InputStream;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@f
    .line 135
    return-void

    #@10
    .line 144
    :catch_0
    move-exception v0

    #@11
    .line 147
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@16
    throw v1

    #@17
    .line 141
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@18
    .line 143
    :try_start_2
    invoke-super {p0}, Ljava/io/InputStream;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    #@1b
    .line 141
    throw v1

    #@1c
    .line 144
    :catch_1
    move-exception v0

    #@1d
    .line 147
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@22
    throw v1
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 2

    #@0
    .prologue
    .line 157
    monitor-enter p0

    #@1
    .line 158
    :try_start_0
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 159
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@7
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    #@9
    invoke-static {p0, v0, v1}, Ljava/nio/NioUtils;->newFileChannel(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    #@f
    .line 161
    :cond_0
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return-object v0

    #@13
    .line 157
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 183
    new-instance v1, Ljava/io/IOException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "byteCount < 0: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 188
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@22
    iget-object v2, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@24
    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    #@26
    invoke-interface {v1, v2, p1, p2, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 189
    return-wide p1

    #@2a
    .line 190
    :catch_0
    move-exception v0

    #@2b
    .line 191
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    #@2d
    sget v2, Landroid/system/OsConstants;->ESPIPE:I

    #@2f
    if-ne v1, v2, :cond_1

    #@31
    .line 193
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    #@34
    move-result-wide v2

    #@35
    return-wide v2

    #@36
    .line 195
    :cond_1
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@39
    move-result-object v1

    #@3a
    throw v1
.end method
