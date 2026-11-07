.class public Ljava/io/FileInputStream;
.super Ljava/io/InputStream;
.source "FileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/FileInputStream$UseManualSkipException;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_BUFFER_SIZE:I = 0x2000


# instance fields
.field private volatile greylist-max-o channel:Ljava/nio/channels/FileChannel;

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
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    .line 99
    nop

    .line 100
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    .line 103
    new-instance v0, Llibcore/io/IoTracker;

    invoke-direct {v0}, Llibcore/io/IoTracker;-><init>()V

    iput-object v0, p0, Ljava/io/FileInputStream;->tracker:Llibcore/io/IoTracker;

    .line 164
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 166
    .local v0, "name":Ljava/lang/String;
    :goto_20
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 167
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_29

    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 170
    :cond_29
    if-eqz v0, :cond_53

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 179
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {v0, v2}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 184
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    .line 186
    iput-object v0, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    .line 192
    iget-object v2, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 195
    iget-object v2, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 198
    return-void

    .line 174
    :cond_4b
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Invalid file path"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_53
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public constructor whitelist test-api <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 233
    return-void
.end method

.method public constructor greylist-max-o test-api <init>(Ljava/io/FileDescriptor;Z)V
    .registers 5
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "isFdOwner"    # Z

    .line 238
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    .line 99
    nop

    .line 100
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    .line 103
    new-instance v0, Llibcore/io/IoTracker;

    invoke-direct {v0}, Llibcore/io/IoTracker;-><init>()V

    iput-object v0, p0, Ljava/io/FileInputStream;->tracker:Llibcore/io/IoTracker;

    .line 239
    if-eqz p1, :cond_29

    .line 243
    iput-object p1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    .line 254
    iput-boolean p2, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    .line 255
    if-eqz p2, :cond_28

    .line 256
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 258
    :cond_28
    return-void

    .line 241
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fdObj == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 133
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 134
    return-void
.end method

.method private native greylist-max-o available0()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist length()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    invoke-direct {p0}, Ljava/io/FileInputStream;->length0()J

    move-result-wide v0

    return-wide v0
.end method

.method private native blacklist length0()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist position()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    invoke-direct {p0}, Ljava/io/FileInputStream;->position0()J

    move-result-wide v0

    return-wide v0
.end method

.method private native blacklist position0()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o skip0(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileInputStream$UseManualSkipException;
        }
    .end annotation
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    if-nez v0, :cond_9

    .line 523
    invoke-direct {p0}, Ljava/io/FileInputStream;->available0()I

    move-result v0

    return v0

    .line 520
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 550
    return-void

    .line 552
    :cond_5
    iget-object v0, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_8
    iget-boolean v1, p0, Ljava/io/FileInputStream;->closed:Z

    if-eqz v1, :cond_e

    .line 554
    monitor-exit v0

    return-void

    .line 556
    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/FileInputStream;->closed:Z

    .line 557
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_28

    .line 560
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 562
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 563
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    if-eqz v0, :cond_1e

    .line 566
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 577
    :cond_1e
    iget-boolean v1, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    if-eqz v1, :cond_27

    .line 578
    iget-object v1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 581
    :cond_27
    return-void

    .line 557
    .end local v0    # "fc":Ljava/nio/channels/FileChannel;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 662
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 665
    :cond_9
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    if-eq v0, v1, :cond_16

    .line 667
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 669
    :cond_16
    return-void
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 6

    .line 616
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 617
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    if-nez v0, :cond_2b

    .line 618
    monitor-enter p0

    .line 619
    :try_start_5
    iget-object v1, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    move-object v0, v1

    .line 620
    if-nez v0, :cond_26

    .line 621
    iget-object v1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p0}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 626
    iget-boolean v1, p0, Ljava/io/FileInputStream;->closed:Z
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_28

    if-eqz v1, :cond_26

    .line 630
    :try_start_1b
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f
    .catchall {:try_start_1b .. :try_end_1e} :catchall_28

    .line 633
    goto :goto_26

    .line 631
    :catch_1f
    move-exception v1

    .line 632
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_20
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "fc":Ljava/nio/channels/FileChannel;
    .end local p0    # "this":Ljava/io/FileInputStream;
    throw v2

    .line 636
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "fc":Ljava/nio/channels/FileChannel;
    .restart local p0    # "this":Ljava/io/FileInputStream;
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

    .line 638
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

    .line 594
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7

    .line 595
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    return-object v0

    .line 597
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 291
    .local v1, "b":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :cond_f
    return v3
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    if-eqz v0, :cond_f

    if-gtz p3, :cond_7

    goto :goto_f

    .line 346
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_f
    :goto_f
    iget-object v0, p0, Ljava/io/FileInputStream;->tracker:Llibcore/io/IoTracker;

    sget-object v1, Llibcore/io/IoTracker$Mode;->READ:Llibcore/io/IoTracker$Mode;

    invoke-virtual {v0, p3, v1}, Llibcore/io/IoTracker;->trackIo(ILlibcore/io/IoTracker$Mode;)V

    .line 353
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api skip(J)J
    .registers 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    if-nez v0, :cond_16

    .line 483
    :try_start_4
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 484
    invoke-direct {p0, p1, p2}, Ljava/io/FileInputStream;->skip0(J)J

    move-result-wide v0
    :try_end_f
    .catch Ljava/io/FileInputStream$UseManualSkipException; {:try_start_4 .. :try_end_f} :catch_10

    return-wide v0

    .line 485
    :catch_10
    move-exception v0

    .line 486
    .local v0, "e":Ljava/io/FileInputStream$UseManualSkipException;
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    return-wide v1

    .line 478
    .end local v0    # "e":Ljava/io/FileInputStream$UseManualSkipException;
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
