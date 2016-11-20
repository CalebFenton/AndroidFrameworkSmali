.class public Ljava/io/FileOutputStream;
.super Ljava/io/OutputStream;
.source "FileOutputStream.java"


# instance fields
.field private final append:Z

.field private channel:Ljava/nio/channels/FileChannel;

.field private final closeLock:Ljava/lang/Object;

.field private volatile closed:Z

.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isFdOwner:Z

.field private final path:Ljava/lang/String;


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
    .line 169
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@4
    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 80
    new-instance v2, Ljava/lang/Object;

    #@5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v2, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    #@a
    .line 81
    const/4 v2, 0x0

    #@b
    iput-boolean v2, p0, Ljava/io/FileOutputStream;->closed:Z

    #@d
    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@10
    move-result-object v2

    #@11
    iput-object v2, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@13
    .line 204
    if-eqz p1, :cond_1

    #@15
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 205
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@1c
    move-result-object v1

    #@1d
    .line 206
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@1f
    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    #@22
    .line 209
    :cond_0
    if-nez v0, :cond_2

    #@24
    .line 210
    new-instance v2, Ljava/lang/NullPointerException;

    #@26
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@29
    throw v2

    #@2a
    .line 204
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_1
    const/4 v0, 0x0

    #@2b
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    #@2c
    .line 212
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "security":Ljava/lang/SecurityManager;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_3

    #@32
    .line 213
    new-instance v2, Ljava/io/FileNotFoundException;

    #@34
    const-string/jumbo v3, "Invalid file path"

    #@37
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 215
    :cond_3
    new-instance v2, Ljava/io/FileDescriptor;

    #@3d
    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    #@40
    iput-object v2, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@42
    .line 216
    iput-boolean p2, p0, Ljava/io/FileOutputStream;->append:Z

    #@44
    .line 217
    iput-object v0, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    #@46
    .line 218
    const/4 v2, 0x1

    #@47
    iput-boolean v2, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    #@49
    .line 220
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@4c
    move-result-object v2

    #@4d
    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@50
    .line 221
    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;->open(Ljava/lang/String;Z)V

    #@53
    .line 222
    iget-object v2, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@55
    const-string/jumbo v3, "close"

    #@58
    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@5b
    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 249
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    #@4
    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Z)V
    .locals 3
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "isFdOwner"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 258
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@5
    .line 80
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    #@c
    .line 81
    iput-boolean v1, p0, Ljava/io/FileOutputStream;->closed:Z

    #@e
    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@14
    .line 259
    if-nez p1, :cond_0

    #@16
    .line 260
    new-instance v0, Ljava/lang/NullPointerException;

    #@18
    const-string/jumbo v1, "fdObj == null"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 263
    :cond_0
    iput-object p1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@21
    .line 264
    iput-object v2, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    #@23
    .line 265
    iput-boolean v1, p0, Ljava/io/FileOutputStream;->append:Z

    #@25
    .line 266
    iput-boolean p2, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    #@27
    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 108
    if-eqz p1, :cond_0

    #@3
    new-instance v0, Ljava/io/File;

    #@5
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    :cond_0
    const/4 v1, 0x0

    #@9
    invoke-direct {p0, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@c
    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 140
    if-eqz p1, :cond_0

    #@3
    new-instance v0, Ljava/io/File;

    #@5
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    :cond_0
    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@b
    .line 138
    return-void
.end method

.method private native open(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 337
    iget-object v1, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 338
    :try_start_0
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 339
    return-void

    #@9
    .line 341
    :cond_0
    const/4 v0, 0x1

    #@a
    :try_start_1
    iput-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 344
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@f
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@12
    .line 346
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 352
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    #@18
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    #@1b
    .line 356
    :cond_1
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 357
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@21
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    #@24
    .line 336
    :cond_2
    return-void

    #@25
    .line 337
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
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
    .line 411
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 412
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 415
    :cond_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 416
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@f
    sget-object v1, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    #@11
    if-eq v0, v1, :cond_1

    #@13
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@15
    sget-object v1, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    #@17
    if-ne v0, v1, :cond_3

    #@19
    .line 417
    :cond_1
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    #@1c
    .line 410
    :cond_2
    :goto_0
    return-void

    #@1d
    .line 419
    :cond_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    #@20
    goto :goto_0
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 6

    #@0
    .prologue
    .line 394
    monitor-enter p0

    #@1
    .line 395
    :try_start_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 396
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@7
    iget-object v1, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    #@9
    iget-boolean v4, p0, Ljava/io/FileOutputStream;->append:Z

    #@b
    const/4 v2, 0x0

    #@c
    const/4 v3, 0x1

    #@d
    move-object v5, p0

    #@e
    invoke-static/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    #@14
    .line 398
    :cond_0
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    return-object v0

    #@18
    .line 394
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
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
    .line 372
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@6
    return-object v0

    #@7
    .line 373
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@9
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@c
    throw v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
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
    .line 285
    new-array v0, v3, [B

    #@4
    int-to-byte v1, p1

    #@5
    aput-byte v1, v0, v2

    #@7
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    #@a
    .line 284
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    #@5
    .line 295
    return-void
.end method

.method public write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    iget-boolean v2, p0, Ljava/io/FileOutputStream;->closed:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    if-lez p3, :cond_0

    #@6
    .line 310
    new-instance v2, Ljava/io/IOException;

    #@8
    const-string/jumbo v3, "Stream Closed"

    #@b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 313
    :cond_0
    iget-object v2, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    #@11
    invoke-static {v2}, Lsun/misc/IoTrace;->fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    .line 316
    .local v1, "traceContext":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    #@17
    invoke-static {v2, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 317
    move v0, p3

    #@1b
    .line 319
    .local v0, "bytesWritten":I
    int-to-long v2, p3

    #@1c
    invoke-static {v1, v2, v3}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    #@1f
    .line 308
    return-void

    #@20
    .line 318
    .end local v0    # "bytesWritten":I
    :catchall_0
    move-exception v2

    #@21
    .line 319
    const-wide/16 v4, 0x0

    #@23
    invoke-static {v1, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    #@26
    .line 318
    throw v2
.end method
