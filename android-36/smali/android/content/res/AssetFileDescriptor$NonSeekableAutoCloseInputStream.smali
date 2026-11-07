.class Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonSeekableAutoCloseInputStream"
.end annotation


# instance fields
.field private blacklist mRemaining:J


# direct methods
.method constructor blacklist <init>(Landroid/content/res/AssetFileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 306
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->skipRaw(J)J

    .line 307
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    .line 308
    return-void
.end method

.method private blacklist skipRaw(J)J
    .registers 5
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-super {p0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist skipRaw$ravenwood(J)J
    .registers 10
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    const-wide/16 v0, 0x400

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 318
    .local v0, "buf":[B
    const-wide/16 v1, 0x0

    .line 319
    .local v1, "totalRead":J
    :goto_b
    cmp-long v3, v1, p1

    if-gez v3, :cond_24

    .line 320
    sub-long v3, p1, v1

    array-length v5, v0

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 321
    .local v3, "toRead":I
    const/4 v4, 0x0

    invoke-super {p0, v0, v4, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v4

    .line 322
    .local v4, "read":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_21

    .line 323
    goto :goto_24

    .line 325
    :cond_21
    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 326
    .end local v3    # "toRead":I
    .end local v4    # "read":I
    goto :goto_b

    .line 327
    :cond_24
    :goto_24
    return-wide v1
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_19

    .line 333
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    long-to-int v0, v0

    goto :goto_1d

    :cond_15
    const v0, 0x7fffffff

    goto :goto_1d

    .line 334
    :cond_19
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v0

    .line 332
    :goto_1d
    return v0
.end method

.method public whitelist test-api mark(I)V
    .registers 6
    .param p1, "readlimit"    # I

    .line 377
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    .line 379
    return-void

    .line 381
    :cond_9
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mark(I)V

    .line 382
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 5

    .line 386
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    .line 387
    const/4 v0, 0x0

    return v0

    .line 389
    :cond_a
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 340
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->read([BII)I

    move-result v0

    .line 341
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

    .line 359
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_27

    .line 347
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, -0x1

    return v0

    .line 348
    :cond_10
    int-to-long v0, p3

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    long-to-int p3, v0

    .line 349
    :cond_1a
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v0

    .line 350
    .local v0, "res":I
    if-ltz v0, :cond_26

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    .line 351
    :cond_26
    return v0

    .line 354
    .end local v0    # "res":I
    :cond_27
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 394
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    .line 396
    monitor-exit p0

    return-void

    .line 398
    :cond_b
    :try_start_b
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->reset()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 399
    monitor-exit p0

    return-void

    .line 393
    .end local p0    # "this":Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 7
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_27

    .line 365
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const-wide/16 v0, -0x1

    return-wide v0

    .line 366
    :cond_11
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_19

    iget-wide p1, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    .line 367
    :cond_19
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->skipRaw(J)J

    move-result-wide v0

    .line 368
    .local v0, "res":J
    cmp-long v2, v0, v2

    if-ltz v2, :cond_26

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->mRemaining:J

    .line 369
    :cond_26
    return-wide v0

    .line 372
    .end local v0    # "res":J
    :cond_27
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;->skipRaw(J)J

    move-result-wide v0

    return-wide v0
.end method
