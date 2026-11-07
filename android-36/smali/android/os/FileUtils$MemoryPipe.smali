.class public Landroid/os/FileUtils$MemoryPipe;
.super Ljava/lang/Thread;
.source "FileUtils.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryPipe"
.end annotation


# instance fields
.field private final greylist-max-o data:[B

.field private final greylist-max-o pipe:[Ljava/io/FileDescriptor;

.field private final greylist-max-o sink:Z


# direct methods
.method private constructor greylist-max-o <init>([BZ)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "sink"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1701
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1703
    :try_start_3
    invoke-static {}, Landroid/system/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/FileUtils$MemoryPipe;->pipe:[Ljava/io/FileDescriptor;
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_9} :catch_f

    .line 1706
    nop

    .line 1707
    iput-object p1, p0, Landroid/os/FileUtils$MemoryPipe;->data:[B

    .line 1708
    iput-boolean p2, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    .line 1709
    return-void

    .line 1704
    :catch_f
    move-exception v0

    .line 1705
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o createSink([B)Landroid/os/FileUtils$MemoryPipe;
    .registers 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1723
    new-instance v0, Landroid/os/FileUtils$MemoryPipe;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/os/FileUtils$MemoryPipe;-><init>([BZ)V

    invoke-direct {v0}, Landroid/os/FileUtils$MemoryPipe;->startInternal()Landroid/os/FileUtils$MemoryPipe;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createSource([B)Landroid/os/FileUtils$MemoryPipe;
    .registers 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1718
    new-instance v0, Landroid/os/FileUtils$MemoryPipe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/FileUtils$MemoryPipe;-><init>([BZ)V

    invoke-direct {v0}, Landroid/os/FileUtils$MemoryPipe;->startInternal()Landroid/os/FileUtils$MemoryPipe;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o startInternal()Landroid/os/FileUtils$MemoryPipe;
    .registers 1

    .line 1712
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 1713
    return-object p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1758
    invoke-virtual {p0}, Landroid/os/FileUtils$MemoryPipe;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1759
    return-void
.end method

.method public greylist-max-o getFD()Ljava/io/FileDescriptor;
    .registers 3

    .line 1727
    iget-boolean v0, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/os/FileUtils$MemoryPipe;->pipe:[Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_f

    :cond_a
    iget-object v0, p0, Landroid/os/FileUtils$MemoryPipe;->pipe:[Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_f
    return-object v0
.end method

.method public greylist-max-o getInternalFD()Ljava/io/FileDescriptor;
    .registers 3

    .line 1731
    iget-boolean v0, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/os/FileUtils$MemoryPipe;->pipe:[Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_f

    :cond_a
    iget-object v0, p0, Landroid/os/FileUtils$MemoryPipe;->pipe:[Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_f
    return-object v0
.end method

.method public whitelist test-api run()V
    .registers 7

    .line 1736
    invoke-virtual {p0}, Landroid/os/FileUtils$MemoryPipe;->getInternalFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1738
    .local v0, "fd":Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    .line 1739
    .local v1, "i":I
    :goto_5
    const-wide/16 v2, 0x1

    :try_start_7
    iget-object v4, p0, Landroid/os/FileUtils$MemoryPipe;->data:[B

    array-length v4, v4

    if-ge v1, v4, :cond_28

    .line 1740
    iget-boolean v4, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v4, :cond_1c

    .line 1741
    iget-object v4, p0, Landroid/os/FileUtils$MemoryPipe;->data:[B

    iget-object v5, p0, Landroid/os/FileUtils$MemoryPipe;->data:[B

    array-length v5, v5

    sub-int/2addr v5, v1

    invoke-static {v0, v4, v1, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    .line 1743
    :cond_1c
    iget-object v4, p0, Landroid/os/FileUtils$MemoryPipe;->data:[B

    iget-object v5, p0, Landroid/os/FileUtils$MemoryPipe;->data:[B

    array-length v5, v5

    sub-int/2addr v5, v1

    invoke-static {v0, v4, v1, v5}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v2
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_26} :catch_3f
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_26} :catch_3f
    .catchall {:try_start_7 .. :try_end_26} :catchall_2d

    add-int/2addr v1, v2

    goto :goto_5

    .line 1749
    .end local v1    # "i":I
    :cond_28
    iget-boolean v1, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v1, :cond_4d

    .line 1750
    goto :goto_44

    .line 1749
    :catchall_2d
    move-exception v1

    iget-boolean v4, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v4, :cond_3b

    .line 1750
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1752
    :cond_3b
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1753
    throw v1

    .line 1746
    :catch_3f
    move-exception v1

    .line 1749
    iget-boolean v1, p0, Landroid/os/FileUtils$MemoryPipe;->sink:Z

    if-eqz v1, :cond_4d

    .line 1750
    :goto_44
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1752
    :cond_4d
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1753
    nop

    .line 1754
    return-void
.end method
