.class Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeekableAutoCloseInputStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;
    }
.end annotation


# instance fields
.field private final blacklist mFileOffset:J

.field private blacklist mOffset:J

.field private blacklist mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

.field private blacklist mTotalSize:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J
    .registers 3

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J
    .registers 3

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J
    .registers 3

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mTotalSize:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;J)V
    .registers 3

    iput-wide p1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/res/AssetFileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 420
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mTotalSize:J

    .line 421
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    .line 422
    return-void
.end method

.method private blacklist updateChannelPosition(J)V
    .registers 4
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    if-eqz v0, :cond_9

    .line 520
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 522
    :cond_9
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

    .line 426
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mTotalSize:J

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    sub-long/2addr v0, v2

    .line 427
    .local v0, "available":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_18

    .line 428
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_14

    long-to-int v2, v0

    goto :goto_19

    :cond_14
    const v2, 0x7fffffff

    goto :goto_19

    .line 429
    :cond_18
    const/4 v2, 0x0

    .line 427
    :goto_19
    return v2
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 5

    .line 502
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    if-nez v0, :cond_f

    .line 503
    new-instance v0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;-><init>(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    .line 506
    :cond_f
    :try_start_f
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->updateChannelPosition(J)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_17} :catch_1b

    .line 509
    nop

    .line 510
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    return-object v0

    .line 507
    :catch_1b
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    .line 486
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 435
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->read([BII)I

    move-result v0

    .line 436
    .local v0, "result":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    goto :goto_10

    :cond_c
    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0xff

    :goto_10
    return v3
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 12
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->available()I

    move-result v1

    .line 442
    .local v1, "available":I
    if-gtz v1, :cond_8

    .line 443
    const/4 v0, -0x1

    return v0

    .line 445
    :cond_8
    if-nez p3, :cond_c

    .line 447
    const/4 v0, 0x0

    return v0

    .line 450
    :cond_c
    if-le p3, v1, :cond_f

    move p3, v1

    :cond_f
    move v5, p3

    .line 452
    .end local p3    # "count":I
    .local v5, "count":I
    :try_start_10
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-wide v3, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    iget-wide v6, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_10 .. :try_end_18} :catch_36

    add-long/2addr v6, v3

    move-object v3, p1

    move v4, p2

    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .local v3, "buffer":[B
    .local v4, "offset":I
    :try_start_1b
    invoke-static/range {v2 .. v7}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p1

    .line 454
    .local p1, "res":I
    if-nez p1, :cond_22

    const/4 p1, -0x1

    .line 455
    :cond_22
    if-lez p1, :cond_32

    .line 456
    iget-wide p2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    int-to-long v6, p1

    add-long/2addr p2, v6

    iput-wide p2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    .line 457
    iget-wide p2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    iget-wide v6, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    add-long/2addr p2, v6

    invoke-direct {p0, p2, p3}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->updateChannelPosition(J)V
    :try_end_32
    .catch Landroid/system/ErrnoException; {:try_start_1b .. :try_end_32} :catch_33

    .line 459
    :cond_32
    return p1

    .line 460
    .end local p1    # "res":I
    :catch_33
    move-exception v0

    move-object p1, v0

    goto :goto_3a

    .end local v3    # "buffer":[B
    .end local v4    # "offset":I
    .local p1, "buffer":[B
    .restart local p2    # "offset":I
    :catch_36
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object p1, v0

    .line 461
    .end local p2    # "offset":I
    .restart local v3    # "buffer":[B
    .restart local v4    # "offset":I
    .local p1, "e":Landroid/system/ErrnoException;
    :goto_3a
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 497
    monitor-exit p0

    return-void
.end method

.method public whitelist test-api skip(J)J
    .registers 8
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->available()I

    move-result v0

    .line 473
    .local v0, "available":I
    if-gtz v0, :cond_9

    .line 474
    const-wide/16 v1, -0x1

    return-wide v1

    .line 477
    :cond_9
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_f

    int-to-long p1, v0

    .line 478
    :cond_f
    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    .line 479
    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    iget-wide v3, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    add-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->updateChannelPosition(J)V

    .line 480
    return-wide p1
.end method
