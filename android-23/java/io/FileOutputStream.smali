.class public Ljava/io/FileOutputStream;
.super Ljava/io/OutputStream;
.source "FileOutputStream.java"


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final mode:I

.field private final shouldClose:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@4
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 63
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 83
    if-nez p1, :cond_0

    #@b
    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "file == null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 86
    :cond_0
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    #@16
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    #@18
    or-int/2addr v1, v0

    #@19
    if-eqz p2, :cond_1

    #@1b
    sget v0, Landroid/system/OsConstants;->O_APPEND:I

    #@1d
    :goto_0
    or-int/2addr v0, v1

    #@1e
    iput v0, p0, Ljava/io/FileOutputStream;->mode:I

    #@20
    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    iget v1, p0, Ljava/io/FileOutputStream;->mode:I

    #@26
    invoke-static {v0, v1}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@2c
    .line 88
    const/4 v0, 0x1

    #@2d
    iput-boolean v0, p0, Ljava/io/FileOutputStream;->shouldClose:Z

    #@2f
    .line 89
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@31
    const-string/jumbo v1, "close"

    #@34
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@37
    .line 82
    return-void

    #@38
    .line 86
    :cond_1
    sget v0, Landroid/system/OsConstants;->O_TRUNC:I

    #@3a
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 63
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 98
    if-nez p1, :cond_0

    #@b
    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "fd == null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 101
    :cond_0
    iput-object p1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@16
    .line 102
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Ljava/io/FileOutputStream;->shouldClose:Z

    #@19
    .line 103
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    #@1b
    iput v0, p0, Ljava/io/FileOutputStream;->mode:I

    #@1d
    .line 104
    iget v0, p0, Ljava/io/FileOutputStream;->mode:I

    #@1f
    invoke-static {p0, p1, v0}, Ljava/nio/NioUtils;->newFileChannel(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    #@25
    .line 97
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
    .line 116
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    #@4
    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@8
    .line 126
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@5
    .line 133
    monitor-enter p0

    #@6
    .line 134
    :try_start_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 135
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    #@c
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    #@f
    .line 137
    :cond_0
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->shouldClose:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 138
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@15
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :goto_0
    monitor-exit p0

    #@19
    .line 131
    return-void

    #@1a
    .line 142
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/FileDescriptor;

    #@1c
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@1f
    iput-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 133
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
    .line 149
    :try_start_0
    iget-object v1, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 150
    iget-object v1, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 152
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 155
    :try_start_1
    invoke-super {p0}, Ljava/io/OutputStream;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@f
    .line 147
    return-void

    #@10
    .line 156
    :catch_0
    move-exception v0

    #@11
    .line 159
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@16
    throw v1

    #@17
    .line 153
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@18
    .line 155
    :try_start_2
    invoke-super {p0}, Ljava/io/OutputStream;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    #@1b
    .line 153
    throw v1

    #@1c
    .line 156
    :catch_1
    move-exception v0

    #@1d
    .line 159
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
    .line 169
    monitor-enter p0

    #@1
    .line 170
    :try_start_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 171
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@7
    iget v1, p0, Ljava/io/FileOutputStream;->mode:I

    #@9
    invoke-static {p0, v0, v1}, Ljava/nio/NioUtils;->newFileChannel(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    #@f
    .line 173
    :cond_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return-object v0

    #@13
    .line 169
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
    .line 181
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 191
    new-array v0, v3, [B

    #@4
    int-to-byte v1, p1

    #@5
    aput-byte v1, v0, v2

    #@7
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    #@a
    .line 190
    return-void
.end method

.method public write([BII)V
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
    .line 186
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    #@5
    .line 185
    return-void
.end method
