.class public Ljava/io/FileOutputStream;
.super Ljava/io/OutputStream;
.source "FileOutputStream.java"


# instance fields
.field private volatile greylist channel:Ljava/nio/channels/FileChannel;

.field private final greylist-max-o closeLock:Ljava/lang/Object;

.field private volatile greylist-max-o closed:Z

.field private final greylist-max-r fd:Ljava/io/FileDescriptor;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final greylist-max-o guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final greylist-max-o isFdOwner:Z

.field private final greylist-max-o path:Ljava/lang/String;

.field private final greylist-max-o tracker:Llibcore/io/IoTracker;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 209
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Z)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    .line 112
    nop

    .line 113
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    .line 119
    new-instance v0, Llibcore/io/IoTracker;

    invoke-direct {v0}, Llibcore/io/IoTracker;-><init>()V

    iput-object v0, p0, Ljava/io/FileOutputStream;->tracker:Llibcore/io/IoTracker;

    .line 243
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 245
    .local v0, "name":Ljava/lang/String;
    :goto_20
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 246
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_29

    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 249
    :cond_29
    if-eqz v0, :cond_5e

    .line 252
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_56

    .line 258
    sget v2, Landroid/system/OsConstants;->O_WRONLY:I

    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v2, v3

    if-eqz p2, :cond_3b

    sget v3, Landroid/system/OsConstants;->O_APPEND:I

    goto :goto_3d

    :cond_3b
    sget v3, Landroid/system/OsConstants;->O_TRUNC:I

    :goto_3d
    or-int/2addr v2, v3

    .line 259
    .local v2, "flags":I
    invoke-static {v0, v2}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v3

    iput-object v3, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 264
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    .line 266
    iput-object v0, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    .line 272
    iget-object v3, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 275
    iget-object v3, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    const-string v4, "close"

    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 278
    return-void

    .line 253
    .end local v2    # "flags":I
    :cond_56
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Invalid file path"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_5e
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public constructor whitelist test-api <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 312
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/FileDescriptor;Z)V
    .registers 5
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "isFdOwner"    # Z

    .line 322
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    .line 112
    nop

    .line 113
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    .line 119
    new-instance v0, Llibcore/io/IoTracker;

    invoke-direct {v0}, Llibcore/io/IoTracker;-><init>()V

    iput-object v0, p0, Ljava/io/FileOutputStream;->tracker:Llibcore/io/IoTracker;

    .line 323
    if-eqz p1, :cond_29

    .line 328
    iput-object p1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    .line 333
    iput-boolean p2, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    .line 334
    if-eqz p2, :cond_28

    .line 335
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 337
    :cond_28
    return-void

    .line 325
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fdObj == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 147
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 148
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 179
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 461
    return-void

    .line 463
    :cond_5
    iget-object v0, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_8
    iget-boolean v1, p0, Ljava/io/FileOutputStream;->closed:Z

    if-eqz v1, :cond_e

    .line 465
    monitor-exit v0

    return-void

    .line 467
    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/FileOutputStream;->closed:Z

    .line 468
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_2a

    .line 471
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 473
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_20

    .line 474
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 485
    :cond_20
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    if-eqz v0, :cond_29

    .line 486
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 489
    :cond_29
    return-void

    .line 468
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 564
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 567
    :cond_9
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_21

    .line 568
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    if-ne v0, v1, :cond_1a

    goto :goto_1e

    .line 572
    :cond_1a
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_21

    .line 569
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 575
    :cond_21
    :goto_21
    return-void
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 6

    .line 527
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 528
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    if-nez v0, :cond_2b

    .line 529
    monitor-enter p0

    .line 530
    :try_start_5
    iget-object v1, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    move-object v0, v1

    .line 531
    if-nez v0, :cond_26

    .line 532
    iget-object v1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, p0}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 537
    iget-boolean v1, p0, Ljava/io/FileOutputStream;->closed:Z
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_28

    if-eqz v1, :cond_26

    .line 541
    :try_start_1b
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f
    .catchall {:try_start_1b .. :try_end_1e} :catchall_28

    .line 544
    goto :goto_26

    .line 542
    :catch_1f
    move-exception v1

    .line 543
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_20
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "fc":Ljava/nio/channels/FileChannel;
    .end local p0    # "this":Ljava/io/FileOutputStream;
    throw v2

    .line 547
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "fc":Ljava/nio/channels/FileChannel;
    .restart local p0    # "this":Ljava/io/FileOutputStream;
    :cond_26
    :goto_26
    monitor-exit p0

    goto :goto_2b

    :catchall_28
    move-exception v1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v1

    .line 549
    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public final whitelist test-api getFD()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation

    .line 504
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7

    .line 505
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    return-object v0

    .line 507
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    int-to-byte v0, p1

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 386
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 414
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z

    if-eqz v0, :cond_f

    if-gtz p3, :cond_7

    goto :goto_f

    .line 428
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_f
    :goto_f
    iget-object v0, p0, Ljava/io/FileOutputStream;->tracker:Llibcore/io/IoTracker;

    sget-object v1, Llibcore/io/IoTracker$Mode;->WRITE:Llibcore/io/IoTracker$Mode;

    invoke-virtual {v0, p3, v1}, Llibcore/io/IoTracker;->trackIo(ILlibcore/io/IoTracker$Mode;)V

    .line 436
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 437
    return-void
.end method
