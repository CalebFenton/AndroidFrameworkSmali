.class public Ljava/io/FileInputStream;
.super Ljava/io/InputStream;
.source "FileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/FileInputStream$UseManualSkipException;
    }
.end annotation


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private final closeLock:Ljava/lang/Object;

.field private volatile closed:Z

.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isFdOwner:Z

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 129
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 63
    iput-object v2, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    #@6
    .line 65
    new-instance v2, Ljava/lang/Object;

    #@8
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v2, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    #@d
    .line 66
    const/4 v2, 0x0

    #@e
    iput-boolean v2, p0, Ljava/io/FileInputStream;->closed:Z

    #@10
    .line 69
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@13
    move-result-object v2

    #@14
    iput-object v2, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@16
    .line 130
    if-eqz p1, :cond_1

    #@18
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 131
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@1f
    move-result-object v1

    #@20
    .line 132
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@22
    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@25
    .line 135
    :cond_0
    if-nez v0, :cond_2

    #@27
    .line 136
    new-instance v2, Ljava/lang/NullPointerException;

    #@29
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@2c
    throw v2

    #@2d
    .line 130
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_1
    const/4 v0, 0x0

    #@2e
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    #@2f
    .line 138
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "security":Ljava/lang/SecurityManager;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_3

    #@35
    .line 139
    new-instance v2, Ljava/io/FileNotFoundException;

    #@37
    const-string/jumbo v3, "Invalid file path"

    #@3a
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2

    #@3e
    .line 141
    :cond_3
    new-instance v2, Ljava/io/FileDescriptor;

    #@40
    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    #@43
    iput-object v2, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@45
    .line 142
    const/4 v2, 0x1

    #@46
    iput-boolean v2, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    #@48
    .line 143
    iput-object v0, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    #@4a
    .line 145
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@4d
    move-result-object v2

    #@4e
    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@51
    .line 146
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;->open(Ljava/lang/String;)V

    #@54
    .line 147
    iget-object v2, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@56
    const-string/jumbo v3, "close"

    #@59
    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@5c
    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 171
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    #@4
    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Z)V
    .locals 2
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "isFdOwner"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 175
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 63
    iput-object v1, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    #@6
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    #@d
    .line 66
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    #@10
    .line 69
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@16
    .line 176
    if-nez p1, :cond_0

    #@18
    .line 177
    new-instance v0, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v1, "fdObj == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 179
    :cond_0
    iput-object p1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@23
    .line 180
    iput-boolean p2, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    #@25
    .line 181
    iput-object v1, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    #@27
    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
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
    .line 99
    if-eqz p1, :cond_0

    #@3
    new-instance v0, Ljava/io/File;

    #@5
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    :cond_0
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@b
    .line 98
    return-void
.end method

.method private native available0()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native open(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private native skip0(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileInputStream$UseManualSkipException;
        }
    .end annotation
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 320
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream Closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 323
    :cond_0
    invoke-direct {p0}, Ljava/io/FileInputStream;->available0()I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 341
    iget-object v1, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 342
    :try_start_0
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 343
    return-void

    #@9
    .line 345
    :cond_0
    const/4 v0, 0x1

    #@a
    :try_start_1
    iput-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 348
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@f
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@12
    .line 350
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 356
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    #@18
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    #@1b
    .line 359
    :cond_1
    iget-boolean v0, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 360
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@21
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    #@24
    .line 340
    :cond_2
    return-void

    #@25
    .line 341
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
    .line 413
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 414
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 417
    :cond_0
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@f
    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    #@11
    if-eq v0, v1, :cond_1

    #@13
    .line 418
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    #@16
    .line 412
    :cond_1
    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 4

    #@0
    .prologue
    .line 396
    monitor-enter p0

    #@1
    .line 397
    :try_start_0
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 398
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@7
    iget-object v1, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    #@9
    const/4 v2, 0x1

    #@a
    const/4 v3, 0x0

    #@b
    invoke-static {v0, v1, v2, v3, p0}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    #@11
    .line 401
    :cond_0
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    return-object v0

    #@15
    .line 396
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
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
    .line 375
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@6
    return-object v0

    #@7
    .line 376
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@9
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@c
    throw v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 199
    iget-object v4, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    #@5
    invoke-static {v4}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    .line 201
    .local v2, "traceContext":Ljava/lang/Object;
    new-array v0, v5, [B

    #@b
    .line 204
    .local v0, "b":[B
    const/4 v4, 0x0

    #@c
    const/4 v5, 0x1

    #@d
    :try_start_0
    invoke-virtual {p0, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    .line 206
    .local v1, "res":I
    int-to-long v4, v1

    #@12
    invoke-static {v2, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@15
    .line 208
    if-eq v1, v3, :cond_0

    #@17
    aget-byte v3, v0, v6

    #@19
    and-int/lit16 v3, v3, 0xff

    #@1b
    :cond_0
    return v3

    #@1c
    .line 205
    .end local v1    # "res":I
    :catchall_0
    move-exception v3

    #@1d
    .line 206
    const-wide/16 v4, -0x1

    #@1f
    invoke-static {v2, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@22
    .line 205
    throw v3
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 223
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FileInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
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
    const/4 v2, 0x0

    #@1
    .line 245
    iget-boolean v3, p0, Ljava/io/FileInputStream;->closed:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    if-lez p3, :cond_0

    #@7
    .line 246
    new-instance v2, Ljava/io/IOException;

    #@9
    const-string/jumbo v3, "Stream Closed"

    #@c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 249
    :cond_0
    iget-object v3, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    #@12
    invoke-static {v3}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    .line 252
    .local v1, "traceContext":Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    #@18
    invoke-static {v3, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v0

    #@1c
    .line 254
    .local v0, "bytesRead":I
    const/4 v3, -0x1

    #@1d
    if-ne v0, v3, :cond_1

    #@1f
    :goto_0
    int-to-long v2, v2

    #@20
    invoke-static {v1, v2, v3}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@23
    .line 256
    return v0

    #@24
    :cond_1
    move v2, v0

    #@25
    .line 254
    goto :goto_0

    #@26
    .line 253
    .end local v0    # "bytesRead":I
    :catchall_0
    move-exception v3

    #@27
    .line 254
    int-to-long v4, v2

    #@28
    invoke-static {v1, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@2b
    .line 253
    throw v3
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    iget-boolean v1, p0, Ljava/io/FileInputStream;->closed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 283
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Stream Closed"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 287
    :cond_0
    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@14
    .line 288
    invoke-direct {p0, p1, p2}, Ljava/io/FileInputStream;->skip0(J)J
    :try_end_0
    .catch Ljava/io/FileInputStream$UseManualSkipException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-wide v2

    #@18
    return-wide v2

    #@19
    .line 289
    :catch_0
    move-exception v0

    #@1a
    .line 290
    .local v0, "e":Ljava/io/FileInputStream$UseManualSkipException;
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    #@1d
    move-result-wide v2

    #@1e
    return-wide v2
.end method
