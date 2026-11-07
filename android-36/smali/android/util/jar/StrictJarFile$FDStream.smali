.class public Landroid/util/jar/StrictJarFile$FDStream;
.super Ljava/io/InputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FDStream"
.end annotation


# instance fields
.field private blacklist endOffset:J

.field private final blacklist fd:Ljava/io/FileDescriptor;

.field private blacklist offset:J


# direct methods
.method public constructor blacklist <init>(Ljava/io/FileDescriptor;JJ)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "initialOffset"    # J
    .param p4, "endOffset"    # J

    .line 451
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 452
    iput-object p1, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    .line 453
    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    .line 454
    iput-wide p4, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    .line 455
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 12
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    monitor-enter v0

    .line 467
    :try_start_3
    iget-wide v1, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v3, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_32

    sub-long/2addr v1, v3

    .line 468
    .local v1, "length":J
    int-to-long v3, p3

    cmp-long v3, v3, v1

    if-lez v3, :cond_e

    .line 469
    long-to-int p3, v1

    .line 472
    :cond_e
    :try_start_e
    iget-object v3, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    iget-wide v4, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_17} :catch_2b
    .catchall {:try_start_e .. :try_end_17} :catchall_32

    .line 475
    nop

    .line 476
    :try_start_18
    iget-object v3, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .line 477
    .local v3, "count":I
    if-lez v3, :cond_28

    .line 478
    iget-wide v4, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    .line 479
    monitor-exit v0

    return v3

    .line 481
    :cond_28
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 473
    .end local v3    # "count":I
    :catch_2b
    move-exception v3

    .line 474
    .local v3, "e":Landroid/system/ErrnoException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/util/jar/StrictJarFile$FDStream;
    .end local p1    # "buffer":[B
    .end local p2    # "byteOffset":I
    .end local p3    # "byteCount":I
    throw v4

    .line 483
    .end local v1    # "length":J
    .end local v3    # "e":Landroid/system/ErrnoException;
    .restart local p0    # "this":Landroid/util/jar/StrictJarFile$FDStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "byteOffset":I
    .restart local p3    # "byteCount":I
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public whitelist test-api skip(J)J
    .registers 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    .line 488
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    sub-long p1, v0, v2

    .line 490
    :cond_f
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    .line 491
    return-wide p1
.end method
